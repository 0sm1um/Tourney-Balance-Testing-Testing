local mod = get_mod("Tourney Balance Testing Testing")

if mod.settings.weapon_test_1 then
    
	local tmp = Weapons.we_one_hand_sword_template_1
	tmp.actions.action_one.light_attack_right.damage_profile = "tb_1h_sword_light_1_2"
	tmp.actions.action_one.light_attack_left.damage_profile = "tb_1h_sword_light_1_2"
	tmp.actions.action_one.light_attack_bopp.damage_profile = "tb_1h_sword_light_1_2"
	tmp.actions.action_one.light_attack_last.damage_profile = "light_slashing_smiter_finesse"
	tmp.dodge_count = 4
	tmp.actions.action_one.light_attack_right.range_mod = 1.3
	tmp.actions.action_one.light_attack_last.range_mod = 1.4

	local tmp = Weapons.we_one_hand_sword_template_1
	local time_mod = 0.9
	tmp.actions.action_one.light_attack_right.anim_time_scale = time_mod * 1.2
	tmp.actions.action_one.light_attack_left.anim_time_scale = time_mod * 1.2
	tmp.actions.action_one.light_attack_bopp.anim_time_scale = time_mod * 1.2
	tmp.actions.action_one.light_attack_last.anim_time_scale = time_mod * 0.9

	mod:echo("Deepwood Vent Damage Profile Applied.")
end
