local mod = get_mod("Tourney Balance Testing Testing")

if mod.settings.weapon_test_1 then

	--1h sword
    Weapons.one_handed_swords_template_1.dodge_count = 4
    --light 1,2
    DamageProfileTemplates.light_slashing_linesman_finesse.targets[1].boost_curve_type = "ninja_curve"
    DamageProfileTemplates.light_slashing_linesman_finesse.targets[2].boost_curve_type = "ninja_curve"
    DamageProfileTemplates.light_slashing_linesman_finesse.targets[1].power_distribution.attack = 0.2
    DamageProfileTemplates.light_slashing_linesman_finesse.targets[2].power_distribution.attack = 0.15
    DamageProfileTemplates.light_slashing_linesman_finesse.default_target.power_distribution.attack = 0.125
    --light 3

    DamageProfileTemplates.light_slashing_smiter_finesse.shield_break = true
    Weapons.one_handed_swords_template_1.actions.action_one.light_attack_last.range_mod = 1.4 --1.2

    --Heavies
    DamageProfileTemplates.medium_slashing_tank_1h_finesse.targets[1].armor_modifier.attack = {	1, 0.65, 2, 1, 0.75 }  --{ 1, 0.5, 1, 1, 0.75 }
    DamageProfileTemplates.medium_slashing_tank_1h_finesse.targets[1].boost_curve_type = "ninja_curve"
    DamageProfileTemplates.medium_slashing_tank_1h_finesse.targets[1].boost_curve_coefficient_headshot = 1.5
    DamageProfileTemplates.medium_slashing_tank_1h_finesse.targets[1].power_distribution.attack = 0.35 --0.3
    DamageProfileTemplates.medium_slashing_tank_1h_finesse.targets[2].power_distribution.attack = 0.175 --0.1
    Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_left.range_mod = 1.4 --1.25
    Weapons.one_handed_swords_template_1.actions.action_one.heavy_attack_right.range_mod = 1.4 --1.25
    DamageProfileTemplates.medium_slashing_tank_1h_finesse.cleave_distribution = "cleave_distribution_tank_L"
    DamageProfileTemplates.medium_slashing_tank_1h_finesse.critical_strike = "critical_strike_stab_smiter_H"

	mod:echo("1 Handed Sword Nerf Applied")
end
