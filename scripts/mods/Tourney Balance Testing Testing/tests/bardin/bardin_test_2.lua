local mod = get_mod("Tourney Balance Testing Testing")


	local num_stacks = 3
	local num_high_tally_stacks = 5
	local skull_splitter_buff = 0.15
--[[
	local num_stacks = 4
	local num_high_tally_stacks = 6
	local skull_splitter_buff = 0.10
--]]

-- Thousand Cuts
mod:modify_talent("dr_slayer", 2, 1, {
	description = "bardin_slayer_attack_speed_on_double_one_handed_weapons_desc",
	description_values = {
		{
			value_type = "percent",
			value = 0.1
		}
	},
	buffs = {
		"bardin_slayer_attack_speed_on_double_one_handed_weapons",
	}
})
--mod:add_text("bardin_slayer_attack_speed_on_double_one_handed_weapons", "A Thousand Cuts")
--mod:add_text("bardin_slayer_attack_speed_on_double_one_handed_weapons_desc", "Wielding one-handed weapons in both slots increases attack speed by 10%")


-- Skull Splitter
mod:add_talent("dr_slayer", 2, 2, "bardin_slayer_power_on_double_two_handed_weapons",{
	description = "bardin_slayer_power_on_double_two_handed_weapons_desc",
	name = "bardin_slayer_power_on_double_two_handed_weapons",
	buffer = "server",
	num_ranks = 1,
	icon = "bardin_slayer_power_on_double_two_handed_weapons",
	description_values = {
        {
            value_type = "percent",
            value = skull_splitter_buff
        }
    },
	buffs = {
		"bardin_slayer_power_on_double_two_handed_weapons"
	}
})

mod:modify_talent_buff_template("dwarf_ranger", "bardin_slayer_power_on_double_two_handed_weapons", {
	multiplier = 0.15
})

mod:add_text("bardin_slayer_power_on_double_two_handed_weapons_desc", "Wielding two-handed weapons in both slots increases power by 15%%.")
mod:add_text("bardin_slayer_power_on_double_two_handed_weapons", "Skull Splitter")

-- Hack and Slash
mod:add_talent("dr_slayer", 2, 3, "bardin_slayer_crit_chance",{
	description = "bardin_slayer_crit_chance_desc",
	name = "bardin_slayer_crit_chance",
	buffer = "server",
	num_ranks = 1,
	icon = "bardin_slayer_crit_chance",
	description_values = {
        {
            value_type = "percent",
            value = 0.05
        }
    },
	buffs = {
		"bardin_slayer_crit_chance"
	}
})
mod:add_text("bardin_slayer_crit_chance_desc", "Increases critical hit chance by 5%%.")
mod:modify_talent_buff_template("dwarf_ranger", "bardin_slayer_crit_chance", {
	bonus = 0.05
})

-- High Tally
mod:add_talent("dr_slayer", 4, 2, "gs_bardin_slayer_passive_increased_max_stacks",{
	description = "bardin_slayer_passive_increased_max_stacks_desc",
	name = "bardin_slayer_passive_increased_max_stacks",
	buffer = "server",
	num_ranks = 1,
	icon = "bardin_slayer_passive_increased_max_stacks",
	description_values = {
		{
			value = 1
		}
	},
	buffs = {}
})
mod:add_text("bardin_slayer_passive_increased_max_stacks_desc", "Increases maximum stacks of Trophy Hunter by 2.")

mod:add_talent_buff_template("dwarf_ranger", "gs_bardin_slayer_passive_increased_max_stacks", {
	max_stacks = num_high_tally_stacks,
	multiplier = 0.05,
	duration = 2,
	refresh_durations = true,
	icon = "bardin_slayer_passive",
	stat_buff = "power_level"
})

-- No Escape
mod:add_talent_buff_template("dwarf_ranger", "gs_bardin_slayer_passive_movement_speed_extra", {
	max_stacks = 5,
	multiplier = 1.1,
	duration = 2,
	remove_buff_func = "remove_movement_buff",
	apply_buff_func = "apply_movement_buff",
	refresh_durations = true,
	path_to_movement_setting_to_modify = {
		"move_speed"
	}
})
                          
-- High Tally extra buffs
mod:add_talent_buff_template("dwarf_ranger", "gs_bardin_slayer_passive_dodge_speed_extra", {
	max_stacks = num_high_tally_stacks,
	multiplier = 1.05,
	duration = 2,
	remove_buff_func = "remove_movement_buff",
	apply_buff_func = "apply_movement_buff",
	refresh_durations = true,
	path_to_movement_setting_to_modify = {
		"dodging",
		"speed_modifier"
	}
})

-- Adreneline Surge
mod:add_talent_buff_template("dwarf_ranger", "gs_bardin_slayer_passive_cooldown_reduction", {
	icon = "bardin_slayer_passive_cooldown_reduction_on_max_stacks",
	stat_buff = "cooldown_regen",
	max_stacks = num_stacks,
	refresh_durations = true,
	duration = 2,
	multiplier = 0.5
})
--[[
mod:modify_talent("dr_slayer", 4, 3, {
	description = "gs_bardin_slayer_passive_cooldown_reduction_desc",
	description_values = {}
})
--]]

mod:add_talent("dr_slayer", 4, 3, "bardin_slayer_passive_cooldown_reduction_on_max_stacks",{
	description = "os_bardin_slayer_passive_cooldown_reduction_on_max_stacks_desc",
	name = "bardin_slayer_passive_cooldown_reduction_on_max_stacks_name",
	buffer = "server",
	num_ranks = 1,
	icon = "bardin_slayer_passive_cooldown_reduction_on_max_stacks",
	buffs = {
		"gs_bardin_slayer_passive_cooldown_reduction",
}
})
mod:add_text("os_bardin_slayer_passive_cooldown_reduction_on_max_stacks_desc", "Each stack of Trophy Hunter increases cooldown regeneration by 50%%.")
mod:add_text("bardin_slayer_passive_cooldown_reduction_on_max_stacks_name", "Adreneline Surge")


-- Grimnir's Focus
mod:modify_talent_buff_template("dwarf_ranger", "bardin_slayer_damage_reduction_on_melee_charge_action_buff", {
	multiplier = -0.35
})
mod:modify_talent("dr_slayer", 5, 2, {
	description_values = {
		{
			value_type = "percent",
			value = -0.35
		},
		{
			value = 5
		}
	}
})

-- Barge
mod:add_talent_buff_template("dwarf_ranger", "gs_bardin_slayer_passive_dodge_speed", {
	max_stacks = 1,
	multiplier = 1.05,
	duration = 2,
	remove_buff_func = "remove_movement_buff",
	apply_buff_func = "apply_movement_buff",
	refresh_durations = true,
	path_to_movement_setting_to_modify = {
		"dodging",
		"speed_modifier"
	}
})
mod:add_talent_buff_template("dwarf_ranger", "bardin_slayer_dodge_speed", {
	multiplier = 1.1,
	remove_buff_func = "remove_movement_buff",
	apply_buff_func = "apply_movement_buff",
	path_to_movement_setting_to_modify = {
		"dodging",
		"speed_modifier"
	}
})
mod:add_talent_buff_template("dwarf_ranger", "bardin_slayer_dodge_range", {
	multiplier = 1.1,
	remove_buff_func = "remove_movement_buff",
	apply_buff_func = "apply_movement_buff",
	path_to_movement_setting_to_modify = {
		"dodging",
		"distance_modifier"
	}
})
mod:modify_talent("dr_slayer", 5, 3, {
	description = "gs_bardin_slayer_push_on_dodge_desc",
	server = "both",
	buffs = {
		"bardin_slayer_push_on_dodge",
		"bardin_slayer_dodge_range",
		"bardin_slayer_dodge_speed"
	}
})
mod:add_text("gs_bardin_slayer_push_on_dodge_desc", "Effective dodges pushes nearby small enemies out of the way. Increases dodge range by 10%%.")

--DamageProfileTemplates.slayer_leap_landing_impact.default_target.power_distribution.impact = 1.2

-- Trophy Hunter Power Buff
mod:modify_talent_buff_template("dwarf_ranger", "bardin_slayer_passive_stacking_damage_buff_on_hit", {
	buff_func = "gs_add_bardin_slayer_passive_buff",
	max_stacks = num_stacks
})

mod:modify_talent_buff_template("dwarf_ranger", "bardin_slayer_passive_stacking_damage_buff", {
	stat_buff = "power_level",
	multiplier = 0.05,
	max_stacks = num_stacks,
	duration = 2
})

mod:add_proc_function("gs_add_bardin_slayer_passive_buff", function(owner_unit, buff, params)
	if not Managers.state.network.is_server then
		return
	end

	local buff_system = Managers.state.entity:system("buff_system")

	if Unit.alive(owner_unit) then
		local buff_name = "bardin_slayer_passive_stacking_damage_buff"
		local talent_extension = ScriptUnit.extension(owner_unit, "talent_system")
		local buff_extension = ScriptUnit.extension(owner_unit, "buff_system")

		if talent_extension:has_talent("gs_bardin_slayer_passive_increased_max_stacks", "dwarf_ranger", true) then
			buff_name = "gs_bardin_slayer_passive_increased_max_stacks"
		end
		buff_system:add_buff(owner_unit, buff_name, owner_unit, false)

		if talent_extension:has_talent("bardin_slayer_passive_movement_speed", "dwarf_ranger", true) and talent_extension:has_talent("gs_bardin_slayer_passive_increased_max_stacks", "dwarf_ranger", true) == false then
			buff_system:add_buff(owner_unit, "bardin_slayer_passive_movement_speed", owner_unit, false)
		end

		if talent_extension:has_talent("bardin_slayer_passive_cooldown_reduction_on_max_stacks", "dwarf_ranger", true) and talent_extension:has_talent("gs_bardin_slayer_passive_increased_max_stacks", "dwarf_ranger", true) == false then
			buff_system:add_buff(owner_unit, "gs_bardin_slayer_passive_cooldown_reduction", owner_unit, false)
		end
	end
end)

-- Passive Text
table.insert(PassiveAbilitySettings.dr_2.buffs, "gs_bardin_slayer_increased_defence")
PassiveAbilitySettings.dr_2.perks = {
	{
		display_name = "career_passive_name_dr_2b",
		description = "career_passive_desc_dr_2b_2"
	},
	{
		display_name = "career_passive_name_dr_2c",
		description = "career_passive_desc_dr_2c"
	},
	{
		display_name = "rebaltourn_career_passive_name_dr_2d",
		description = "rebaltourn_career_passive_desc_dr_2d_2"
	}
}
mod:add_text("career_passive_desc_dr_2a_2", "Hitting an enemy grants a stacking power buff. Increased power by 5%, stacking 3 times. Buff lasts 2 seconds.")
mod:add_text("career_passive_name_dr_2b", "Trophy Hunter")
mod:add_text("career_passive_desc_dr_2b_2", "Hitting an enemy grants a stacking power buff. Increased power by 5%, stacking 3 times. Buff lasts 2 seconds.")

-- Juggernaut Passive
mod:add_talent_buff_template("dwarf_ranger", "gs_bardin_slayer_increased_defence", {
	stat_buff = "damage_taken",
	multiplier = -0.15
})

mod:add_text("rebaltourn_career_passive_name_dr_2d", "Juggernaut")
mod:add_text("rebaltourn_career_passive_desc_dr_2d_2", "Reduces damage taken by 15%.")

mod:echo("Osmium's Return 2 Monke Slayer Rework Loaded")
