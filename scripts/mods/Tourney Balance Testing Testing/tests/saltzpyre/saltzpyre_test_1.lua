local mod = get_mod("Tourney Balance Testing Testing")

if mod.settings.saltzpyre_test_1 then

	CareerSettings.wh_captain.attributes.base_critical_strike_chance = 0.05

	mod:echo("Witch Hunter passive crit chance removed")
end
