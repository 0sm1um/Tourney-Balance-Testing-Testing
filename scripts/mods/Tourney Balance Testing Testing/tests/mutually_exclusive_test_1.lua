local mod = get_mod("Tourney Balance Testing Testing")

local option = mod.settings.mutually_exclusive_test_1

if option == 2 then
	--CODE HERE
	
	if mod.is_on == false then
		mod:echo("João's Handmaiden Rework Loaded")
	end
elseif option == 3 then
	-- CODE HERE
	
	if mod.is_on == false then
		mod:echo("Janoti's Handmaiden Rework Loaded")
	end
end
