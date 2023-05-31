local mod = get_mod("Tourney Balance Testing Testing")

if mod.settings.kerillian_test_2 ~= 0.4 then

	OverchargeData.we_thornsister.percent_health_lost = mod.settings.kerillian_test_2
	--[[
	OverchargeData.we_thornsister = {
		overcharge_value_decrease_rate = 1,
		overcharge_warning_critical_sound_event = "weapon_life_staff_overcharge_warning_critical",
		no_forced_movement = true,
		overcharge_explosion_time = 0.1,
		percent_health_lost = mod.settings.kerillian_test_2,
		overcharge_threshold = 10,
		overcharge_warning_high_sound_event = "weapon_life_staff_overcharge_warning_high",
		onscreen_particles_id = "fx/thornsister_overcharge",
		no_explosion = true,
		critical_onscreen_particles_id = "fx/thornsister_overcharge",
		overcharge_warning_med_sound_event = "weapon_life_staff_overcharge_warning_medium",
		time_until_overcharge_decreases = 0.5,
		hit_overcharge_threshold_sound = "ui_special_attack_ready",
		lockout_overcharge_decay_rate = 4,
		explode_vfx_name = "fx/thornsister_overcharge_explosion_3p",
		overcharge_ui = {
			material = "overcharge_bar",
			color_normal = {
				255,
				180,
				195,
				182
			},
			color_medium = {
				255,
				0,
				255,
				165
			},
			color_high = {
				255,
				0,
				255,
				0
			}
		}
	}
	--]]

	mod:echo("Deepwood Vent Damage Profile Applied.")
end
