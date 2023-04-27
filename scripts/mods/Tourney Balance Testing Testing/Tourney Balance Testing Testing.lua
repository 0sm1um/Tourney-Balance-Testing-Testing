local mod = get_mod("Tourney Balance Testing Testing")

local settings_sync_package_id = "settings_sync"

mod.settings = {}
mod.is_on = false

mod:dofile("scripts/mods/Tourney Balance Testing Testing/base/helper_functions")

-- A series of functions for use in the activation command:
function load_mod_settings()
 	mod.settings.test_1 = mod:get("test_1")
	--mod.settings.test_2_value = mod:get(test_2),
 	mod.settings.mutually_exclusive_test_1 = mod:get("mutually_exclusive_test_1")
	--mod.settings.mutually_exclusive_test_value = mod:get(mutually_exclusive_test_2)
end

local function sync_mod_settings()
	--mod:echo("Syncing settings with clients.")
	mod:network_send(
		settings_sync_package_id,
		"others",
		mod.settings
	)
end

function apply_settings()
	if mod.settings.test_1 == true then
		mod:dofile("scripts/mods/Tourney Balance Testing Testing/tests/test_1")
	--end
	--if mod.settings.test_2_value == true then
		--mod:dofile("Experimental Changes/test2")
	end
	if mod.settings.mutually_exclusive_test_1 ~= 1 then
		mod:dofile("scripts/mods/Tourney Balance Testing Testing/tests/mutually_exclusive_test_1")
	--end
	--if mod.settings.mutually_exclusive_test_2 ~= 1 then
		--dofile("Experimental Changes/mutually_exclusive_test_2")
	end
end

mod:network_register(settings_sync_package_id, function(sender, host_settings)
	--mod:echo("Received settings from host.")
	if mod.is_on == true then
		local client_mod_settings = table.clone(mod.settings)
		if check_legality_of_setting_changes(client_mod_settings, host_settings) == false then
			mod:echo("WARNING: TB Testing Testing has code active while different changes are attempted to be loaded. Please restart your game to ensure tests unload correctly.")
			mod.settings = old_mod_settings
			return
		end
	end
	mod.settings = host_settings
	apply_settings()
	mod.is_on = true
end)

mod.on_user_joined = function(player)
	--mod:echo("New player '" .. player:name() .. "' joined.")
	if Managers.player.is_server then
		--mod:echo("New player connecting, clients syncing with host settings.")
		if mod.is_on == true then
			sync_mod_settings()
		end
	end
end

function check_legality_of_setting_changes(old_settings, new_settings)
		for key,val in pairs(new_settings) do
			if old_settings[key] ~= val then
				if old_settings[key] == false or old_settings[key] == 1 then -- If a change was disabled before, but enabled now. There is nothing to worry about.
					goto continue
				end
				return false
			end
			::continue::
		end
	return true
end

-- Activation and deactivation command:
mod:command("testing", "Toggle TB Testing Testing Changes, synchronise changes with lobby.", function()
	if Managers.player.is_server then
		if mod.is_on == true then
			local old_settings = table.clone(mod.settings)
			load_mod_settings()
			if check_legality_of_setting_changes(old_settings, mod.settings) == false then
				mod:echo("WARNING: TB Testing Testing has code active while different changes are attempted to be loaded. Please restart your game to ensure tests unload correctly.")
				mod.settings = old_mod_settings
				return
			end
		end
		load_mod_settings()
		sync_mod_settings()
		apply_settings()
		mod.is_on = true
		mod:chat_broadcast("TB Testing Testing ENABLED")
	else
		mod:echo("WARNING: Only Host may activate TB Testing Testing changes.")
	end
end)
