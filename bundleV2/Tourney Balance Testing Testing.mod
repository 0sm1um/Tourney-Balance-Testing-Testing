return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`Tourney Balance Testing Testing` mod must be lower than Vermintide Mod Framework in your launcher's load order.")

		new_mod("Tourney Balance Testing Testing", {
			mod_script       = "scripts/mods/Tourney Balance Testing Testing/Tourney Balance Testing Testing",
			mod_data         = "scripts/mods/Tourney Balance Testing Testing/Tourney Balance Testing Testing_data",
			mod_localization = "scripts/mods/Tourney Balance Testing Testing/Tourney Balance Testing Testing_localization",
		})
	end,
	packages = {
		"resource_packages/Tourney Balance Testing Testing/Tourney Balance Testing Testing",
	},
}
