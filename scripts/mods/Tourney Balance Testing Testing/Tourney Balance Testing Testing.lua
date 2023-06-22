local mod = get_mod("Tourney Balance Testing Testing")

local settings_sync_package_id = "settings_sync"

mod.settings = {}
mod.is_on = false

mod:dofile("scripts/mods/Tourney Balance Testing Testing/base/helper_functions")

-- A series of functions for use in the activation command:
mod.load_settings = function ()
	mod.settings.weapons_test_1 = mod:get("weapons_test_1")
 	mod.settings.bardin_test_1 = mod:get("bardin_test_1")
	mod.settings.bardin_test_2 = mod:get("bardin_test_2")
	mod.settings.bardin_test_3 = mod:get("bardin_test_3")
	mod.settings.kruber_test_1 = mod:get("kruber_test_1")
	mod.settings.saltzpyre_test_1 = mod:get("saltzpyre_test_1")
 	mod.settings.kerillian_mutually_exclusive = mod:get("kerillian_mutually_exclusive")
	--mod.settings.mutually_exclusive_test_value = mod:get(mutually_exclusive_kerillian)
	mod.settings.misc_test_1 = mod:get("misc_test_1")
	mod.settings.misc_test_2 = mod:get("misc_test_2")
end

mod.sync_mod_settings = function ()
	--mod:echo("Syncing settings with clients.")
	mod:network_send(
		settings_sync_package_id,
		"others",
		mod.settings
	)
end

mod.apply_settings = function ()
	if mod.settings.weapons_test_1 then
		mod:dofile("scripts/mods/Tourney Balance Testing Testing/tests/weapons/weapons_test_1")
	end
	if mod.settings.bardin_test_1 then
		mod:dofile("scripts/mods/Tourney Balance Testing Testing/tests/bardin/bardin_test_1")
	end
	if mod.settings.bardin_test_2 then
		mod:dofile("scripts/mods/Tourney Balance Testing Testing/tests/bardin/bardin_test_2")
	end
	if mod.settings.bardin_test_3 then
		mod:dofile("scripts/mods/Tourney Balance Testing Testing/tests/bardin/bardin_test_3")
	end
	if mod.settings.kruber_test_1 then
		mod:dofile("scripts/mods/Tourney Balance Testing Testing/tests/kruber/kruber_test_1")
	end
	if mod.settings.saltzpyre_test_1 then
		mod:dofile("scripts/mods/Tourney Balance Testing Testing/tests/saltzpyre/saltzpyre_test_1")
	end
	--[[
	if mod.settings.kerillian_test_1 then
		mod:dofile("scripts/mods/Tourney Balance Testing Testing/tests/kerillian/kerillian_test_1")
	end
	--]]
	if mod.settings.mutually_exclusive_kerillian then
		mod:dofile("scripts/mods/Tourney Balance Testing Testing/tests/kerillian/kerillian_mutually_exclusive_test")
	end
	if mod.settings.misc_test_1 then
		mod:dofile("scripts/mods/Tourney Balance Testing Testing/tests/MISC/MISC_test_1")
	end
	if mod.settings.misc_test_2 then
		mod:dofile("scripts/mods/Tourney Balance Testing Testing/tests/MISC/MISC_test_2")
	end
	mod.auto_enable_new_weapons()
end

mod:network_register(settings_sync_package_id, function(sender, host_settings)
	--mod:echo("Received settings from host.")
	if mod.is_on == true then
		local client_mod_settings = table.clone(mod.settings)
		if mod.check_legality_of_setting_changes(client_mod_settings, host_settings) == false then
			mod:echo("WARNING: TB Testing Testing has code active while different changes are attempted to be loaded. Please restart your game to ensure tests unload correctly.")
			mod.settings = old_mod_settings
			return
		end
	end
	mod.settings = host_settings
	mod.apply_settings()
	mod.is_on = true
end)

mod.on_user_joined = function(player)
	--mod:echo("New player '" .. player:name() .. "' joined.")
	if Managers.player.is_server then
		--mod:echo("New player connecting, clients syncing with host settings.")
		if mod.is_on == true then
			mod.sync_mod_settings()
		end
	end
end

mod.check_legality_of_setting_changes = function (old_settings, new_settings)
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
			mod.load_settings()
			if mod.check_legality_of_setting_changes(old_settings, mod.settings) == false then
				mod:echo("WARNING: TB Testing Testing has code active while different changes are attempted to be loaded. Please restart your game to ensure tests unload correctly.")
				mod.settings = old_mod_settings
				return
			end
		end
		mod.load_settings()
		mod.sync_mod_settings()
		mod.apply_settings()
		mod.is_on = true
		mod:chat_broadcast("TB Testing Testing ENABLED")
	else
		mod:echo("WARNING: Only Host may activate TB Testing Testing changes.")
	end
end)
