local mod = get_mod("Tourney Balance Testing Testing")

if mod.settings.weapon_test_1 then
	--[[
	DamageProfileTemplates.medium_slashing_smiter_2h.default_target = "default_target_smiter_M_2H"
	DamageProfileTemplates.medium_slashing_smiter_2h.critical_strike = "critical_strike_smiter_M_2h"

	
	--Lights
	default_target_smiter_M_2H = {
		boost_curve_type = "smiter_curve",
		attack_template = "slashing_smiter",
		armor_modifier = {
			attack = {
				1.25,
				0.8,
				2.5,
				1,
				0.75
			},
			impact = {
				1,
				0.8,
				1,
				1,
				0.75
			}
		},
		power_distribution = {
			attack = 0.325,
			impact = 0.2
		}
	},
	targets_smiter_M = {
		[2] = {
			boost_curve_type = "tank_curve",
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.1,
				impact = 0.1
			}
		}
	},
	critical_strike_smiter_H = {
		attack_armor_power_modifer = {
			1,
			0.5,
			1.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	critical_strike_smiter_executioner_H = {
		attack_armor_power_modifer = {
			1,
			1,
			1.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	critical_strike_smiter_glaive_H = {
		attack_armor_power_modifer = {
			1,
			1,
			1.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	armor_modifier_smiter_H = {
		attack = {
			1,
			0.5,
			1.5,
			1,
			0.75
		},
		impact = {
			1,
			1,
			1,
			1,
			0.75
		}
	},
	armor_modifier_smiter_pick_H = {
		attack = {
			1,
			0.85,
			1.5,
			1,
			0.75
		},
		impact = {
			1,
			1,
			1,
			1,
			0.75
		}
	},
	critical_strike_blunt_smiter_2h_hammer_H = {
		attack_armor_power_modifer = {
			1,
			0.8,
			2.5,
			1,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	armor_modifier_blunt_smiter_2h_hammer_H = {
		attack = {
			1,
			0.8,
			2,
			1,
			0.75,
			1
		},
		impact = {
			1,
			0.8,
			1,
			1,
			0.75
		}
	},
	default_target_smiter_H = {
		boost_curve_coefficient_headshot = 0.75,
		boost_curve_type = "smiter_curve",
		boost_curve_coefficient = 0.75,
		attack_template = "heavy_slashing_smiter",
		power_distribution = {
			attack = 0.65,
			impact = 0.25
		}
	},
	default_target_smiter_executioner_H = {
		boost_curve_coefficient_headshot = 1.5,
		boost_curve_type = "ninja_curve",
		boost_curve_coefficient = 1,
		attack_template = "heavy_slashing_smiter_hs_executioner",
		armor_modifier = {
			attack = {
				1,
				0.85,
				1.5,
				1,
				0.75
			},
			impact = {
				1,
				1,
				1,
				1,
				1.25
			}
		},
		power_distribution = {
			attack = 0.65,
			impact = 0.275
		}
	},
	default_target_smiter_glaive_H = {
		boost_curve_coefficient_headshot = 1.25,
		boost_curve_type = "ninja_curve",
		boost_curve_coefficient = 1,
		attack_template = "heavy_slashing_smiter_hs",
		armor_modifier = {
			attack = {
				1,
				0.75,
				1.5,
				1,
				0.75
			},
			impact = {
				1,
				1,
				1,
				1,
				0.75
			}
		},
		power_distribution = {
			attack = 0.65,
			impact = 0.225
		}
	},
	default_target_smiter_H_charged = {
		boost_curve_coefficient_headshot = 1,
		boost_curve_type = "smiter_curve",
		boost_curve_coefficient = 0.5,
		attack_template = "heavy_blunt_smiter",
		power_distribution = {
			attack = 1.2,
			impact = 0.5
		}
	},
	targets_smiter_H = {
		[2] = {
			boost_curve_type = "smiter_curve",
			attack_template = "stab_smiter",
			power_distribution = {
				attack = 0.2,
				impact = 0.1
			}
		}
	},
	critical_strike_stab_smiter_L = {
		attack_armor_power_modifer = {
			1,
			0.5,
			2,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	critical_strike_stab_smiter_L_swords = {
		attack_armor_power_modifer = {
			1,
			0.7,
			2,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	armor_modifier_stab_smiter_L = {
		attack = {
			1,
			0.25,
			1.5,
			1,
			0.75
		},
		impact = {
			1,
			0.25,
			1,
			1,
			0.75
		}
	},
	armor_modifier_stab_smiter_L_swords = {
		attack = {
			1,
			0.45,
			1.5,
			1,
			0.75
		},
		impact = {
			1,
			0.25,
			1,
			1,
			0.75
		}
	},
	armor_modifier_burning_punch_smiter_L = {
		attack = {
			1,
			0.5,
			1.5,
			1,
			0.75
		},
		impact = {
			1,
			1.25,
			1,
			1,
			0.75
		}
	},
	default_target_stab_smiter_L = {
		boost_curve_coefficient_headshot = 2,
		boost_curve_type = "smiter_curve",
		boost_curve_coefficient = 0.75,
		attack_template = "stab_smiter",
		power_distribution = {
			attack = 0.1,
			impact = 0.075
		}
	},
	targets_stab_smiter_L = {
		{
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "stab_smiter",
			armor_modifier = {
				attack = {
					1,
					0.5,
					1.5,
					1,
					0.75
				},
				impact = {
					1,
					0.5,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.2,
				impact = 0.1
			}
		}
	},
	targets_stab_smiter_L_swords = {
		{
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "stab_smiter",
			armor_modifier = {
				attack = {
					1,
					0.7,
					1.5,
					1,
					0.75
				},
				impact = {
					1,
					0.5,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.2,
				impact = 0.1
			}
		}
	},
	targets_blunt_smiter_stab_L = {
		{
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "stab_smiter",
			armor_modifier = {
				attack = {
					1,
					0.75,
					1.5,
					1,
					0.75
				},
				impact = {
					1,
					0.75,
					1,
					1,
					1.5
				}
			},
			power_distribution = {
				attack = 0.2,
				impact = 0.175
			}
		}
	},
	targets_burning_stab_smiter_L = {
		{
			boost_curve_coefficient_headshot = 2,
			dot_template_name = "burning_1W_dot",
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "burning_stab_fencer",
			power_distribution = {
				attack = 0.2,
				impact = 0.1
			}
		}
	},
	targets_burning_punch_smiter_L = {
		{
			boost_curve_coefficient_headshot = 1.5,
			dot_template_name = "burning_3W_dot",
			boost_curve_type = "ninja_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "burning_stab_fencer",
			power_distribution = {
				attack = 0.2,
				impact = 0.2
			}
		}
	},
	targets_stab_dual_smiter_L = {
		{
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 1.5,
			attack_template = "stab_smiter",
			armor_modifier = {
				attack = {
					1,
					0.8,
					2.5,
					1,
					0.75
				},
				impact = {
					1,
					0.5,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.24,
				impact = 0.1
			}
		}
	},
	critical_strike_stab_smiter_M = {
		attack_armor_power_modifer = {
			1,
			0.4,
			2.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	critical_strike_stab_smiter_M_1h = {
		attack_armor_power_modifer = {
			1,
			1,
			2.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	armor_modifier_stab_smiter_M = {
		attack = {
			1,
			0.25,
			2.25,
			1,
			0.75
		},
		impact = {
			1,
			0.75,
			1,
			1,
			0.75
		}
	},
	default_target_stab_smiter_M = {
		boost_curve_coefficient_headshot = 2,
		boost_curve_type = "ninja_curve",
		boost_curve_coefficient = 1,
		attack_template = "stab_smiter",
		power_distribution = {
			attack = 0.2,
			impact = 0.125
		}
	},
	default_target_stab_smiter_M_elf = {
		boost_curve_coefficient_headshot = 2,
		boost_curve_type = "ninja_curve",
		boost_curve_coefficient = 1,
		attack_template = "stab_smiter",
		power_distribution = {
			attack = 0.25,
			impact = 0.125
		}
	},
	default_target_spear_stab_smiter_M = {
		boost_curve_coefficient_headshot = 1.5,
		boost_curve_type = "ninja_curve",
		boost_curve_coefficient = 1,
		attack_template = "stab_smiter",
		power_distribution = {
			attack = 0.25,
			impact = 0.25
		}
	},
	armor_modifier_stab_smiter_M_1h = {
		attack = {
			1,
			0.75,
			2.25,
			1,
			0.75
		},
		impact = {
			1,
			1,
			1,
			1,
			0.75
		}
	},
	default_target_stab_smiter_M_1h = {
		boost_curve_coefficient_headshot = 2,
		boost_curve_type = "ninja_curve",
		boost_curve_coefficient = 1,
		attack_template = "stab_smiter",
		power_distribution = {
			attack = 0.3,
			impact = 0.175
		}
	},
	targets_stab_smiter_M = {
		[2] = {
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "ninja_curve",
			boost_curve_coefficient = 1,
			attack_template = "stab_smiter",
			power_distribution = {
				attack = 0.125,
				impact = 0.1
			}
		}
	},
	critical_strike_stab_smiter_H = {
		attack_armor_power_modifer = {
			1,
			0.65,
			2.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	critical_strike_stab_smiter_polearm_H = {
		attack_armor_power_modifer = {
			1,
			0.4,
			2.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	critical_strike_stab_smiter_heavy_polearm_H = {
		attack_armor_power_modifer = {
			1,
			0.5,
			2.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	armor_modifier_stab_smiter_H = {
		attack = {
			1,
			0.3,
			2,
			1,
			0.75
		},
		impact = {
			1,
			0.5,
			1,
			1,
			0.75
		}
	},
	default_target_stab_smiter_H = {
		boost_curve_coefficient_headshot = 1,
		boost_curve_type = "ninja_curve",
		boost_curve_coefficient = 0.75,
		attack_template = "heavy_stab_smiter",
		power_distribution = {
			attack = 0.2,
			impact = 0.15
		}
	},
	targets_stab_smiter_H = {
		{
			boost_curve_coefficient_headshot = 1.5,
			boost_curve_type = "ninja_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "heavy_stab_smiter",
			armor_modifier = {
				attack = {
					1,
					0.65,
					2,
					1,
					0.75
				},
				impact = {
					1,
					0.65,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.45,
				impact = 0.25
			}
		}
	},
	targets_stab_smiter_polearm_H = {
		{
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "ninja_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "heavy_stab_smiter",
			armor_modifier = {
				attack = {
					1,
					0.45,
					2,
					1,
					0.75
				},
				impact = {
					1,
					0.65,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.45,
				impact = 0.25
			}
		}
	},
	critical_strike_fencer_stab_L = {
		attack_armor_power_modifer = {
			1,
			0.5,
			2,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			0.5,
			0.5,
			1,
			1
		}
	},
	armor_modifier_fencer_stab_L = {
		attack = {
			1,
			0,
			1.5,
			1,
			0.75
		},
		impact = {
			1,
			0.1,
			0.5,
			1,
			0.75
		}
	},
	armor_modifier_fencer_stab_L_AP = {
		attack = {
			1,
			0.25,
			1.5,
			1,
			0.75
		},
		impact = {
			1,
			0.1,
			0.5,
			1,
			0.75
		}
	},
	default_target_fencer_stab_L = {
		boost_curve_type = "ninja_curve",
		boost_curve_coefficient_headshot = 3,
		attack_template = "light_stab_smiter",
		power_distribution = {
			attack = 0.075,
			impact = 0.075
		}
	},
	targets_fencer_stab_L = {
		{
			dot_template_name = "weapon_bleed_dot_dagger",
			boost_curve_coefficient_headshot = 3,
			boost_curve_type = "ninja_curve",
			attack_template = "light_stab_smiter",
			power_distribution = {
				attack = 0.12,
				impact = 0.08
			}
		}
	},
	default_target_maidenguard_dash_ability = {
		boost_curve_type = "ninja_curve",
		boost_curve_coefficient_headshot = 3,
		attack_template = "light_stab_smiter",
		power_distribution = {
			attack = 0,
			impact = 0.125
		}
	},
	default_target_maidenguard_dash_ability_bleed = {
		dot_template_name = "weapon_bleed_dot_maidenguard",
		boost_curve_coefficient_headshot = 3,
		boost_curve_type = "ninja_curve",
		attack_template = "light_stab_smiter",
		power_distribution = {
			attack = 0,
			impact = 0.125
		}
	},
	critical_strike_fencer_stab_M = {
		attack_armor_power_modifer = {
			1,
			0.75,
			2,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			0.5,
			0.5,
			1,
			1
		}
	},
	armor_modifier_fencer_stab_M = {
		attack = {
			1,
			0.4,
			1.5,
			1,
			1,
			0.25
		},
		impact = {
			1,
			0.25,
			0.5,
			1,
			1,
			0.25
		}
	},
	default_target_fencer_stab_M = {
		boost_curve_type = "smiter_curve",
		boost_curve_coefficient_headshot = 2.5,
		attack_template = "stab_smiter",
		power_distribution = {
			attack = 0.29,
			impact = 0.075
		}
	},
	default_target_fencer_stab_M_charged = {
		boost_curve_type = "smiter_curve",
		boost_curve_coefficient_headshot = 2.5,
		attack_template = "stab_smiter",
		power_distribution = {
			attack = 0.55,
			impact = 0.125
		}
	},
	targets_fencer_stab_M = {},
	critical_strike_tank_L = {
		attack_armor_power_modifer = {
			1,
			0.25,
			1.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
	cleave_distribution_tank_L = {
		attack = 0.2,
		impact = 0.6
	},
	cleave_distribution_tank_dual_L = {
		attack = 0.2,
		impact = 0.4
	},
	armor_modifier_tank_L = {
		attack = {
			1,
			0,
			1,
			1,
			1
		},
		impact = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
	default_target_tank_L = {
		boost_curve_type = "tank_curve",
		attack_template = "light_blunt_tank",
		power_distribution = {
			attack = 0.05,
			impact = 0.15
		}
	},
	targets_tank_L = {
		{
			boost_curve_type = "tank_curve",
			boost_curve_coefficient_headshot = 1.5,
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.175,
				impact = 0.25
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.075,
				impact = 0.175
			}
		}
	},
	default_target_tank_dual_L = {
		boost_curve_type = "tank_curve",
		attack_template = "light_blunt_tank",
		power_distribution = {
			attack = 0.05,
			impact = 0.1
		}
	},
	targets_tank_dual_L = {
		{
			boost_curve_type = "tank_curve",
			boost_curve_coefficient_headshot = 1.5,
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.15,
				impact = 0.2
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.075,
				impact = 0.175
			}
		}
	},
	critical_strike_tank_spiked_L = {
		attack_armor_power_modifer = {
			1,
			0.5,
			2,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
	cleave_distribution_tank_spiked_L = {
		attack = 0.25,
		impact = 0.25
	},
	armor_modifier_tank_spiked_L = {
		attack = {
			1,
			0.25,
			1.5,
			1,
			1
		},
		impact = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
	default_target_tank_spiked_L = {
		boost_curve_type = "tank_curve",
		attack_template = "light_blunt_tank",
		power_distribution = {
			attack = 0.075,
			impact = 0.075
		}
	},
	targets_tank_spiked_L = {
		{
			boost_curve_type = "tank_curve",
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.2,
				impact = 0.125
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.075,
				impact = 0.1
			}
		}
	},
	critical_strike_tank_M = {
		attack_armor_power_modifer = {
			1,
			0.5,
			1,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
	armor_modifier_tank_M = {
		attack = {
			1,
			0.2,
			1,
			1,
			0.75
		},
		impact = {
			1,
			1,
			0.5,
			1,
			0.75
		}
	},
	armor_modifier_tank_M_1h = {
		attack = {
			1,
			0.35,
			1,
			1,
			0.75
		},
		impact = {
			1,
			1,
			0.5,
			1,
			0.75
		}
	},
	cleave_distribution_tank_M = {
		attack = 0.3,
		impact = 0.8
	},
	default_target_tank_M = {
		boost_curve_type = "tank_curve",
		attack_template = "light_blunt_tank",
		power_distribution = {
			attack = 0.05,
			impact = 0.05
		}
	},
	targets_tank_M = {
		{
			boost_curve_type = "tank_curve",
			boost_curve_coefficient_headshot = 1,
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.2,
				impact = 0.2
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.1,
				impact = 0.15
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.075,
				impact = 0.1
			}
		}
	},
	targets_tank_M_1h = {
		{
			boost_curve_coefficient_headshot = 1,
			boost_curve_type = "tank_curve",
			attack_template = "blunt_tank",
			armor_modifier = {
				attack = {
					1,
					0.5,
					1,
					1,
					0.75
				},
				impact = {
					1,
					1,
					0.5,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.3,
				impact = 0.2
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.1,
				impact = 0.15
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.075,
				impact = 0.1
			}
		}
	},
	targets_tank_M_1h_finesse = {
		{
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "tank_curve",
			attack_template = "blunt_tank",
			armor_modifier = {
				attack = {
					1,
					0.5,
					1,
					1,
					0.75
				},
				impact = {
					1,
					1,
					0.5,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.3,
				impact = 0.2
			}
		},
		{
			boost_curve_type = "tank_curve",
			boost_curve_coefficient_headshot = 2,
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.1,
				impact = 0.15
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.075,
				impact = 0.1
			}
		}
	},
	targets_tank_M_dual = {
		{
			boost_curve_coefficient_headshot = 1,
			boost_curve_type = "tank_curve",
			attack_template = "blunt_tank",
			armor_modifier = {
				attack = {
					1,
					0.5,
					1,
					1,
					0.75
				},
				impact = {
					1,
					1,
					0.5,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.225,
				impact = 0.175
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.1,
				impact = 0.15
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.075,
				impact = 0.1
			}
		}
	},
	critical_strike_burning_tank_M = {
		attack_armor_power_modifer = {
			1,
			0.5,
			1.5,
			1,
			1.5
		},
		impact_armor_power_modifer = {
			1,
			1,
			1.5,
			1,
			1.5
		}
	},
	armor_modifier_burning_tank_M = {
		attack = {
			1,
			0.5,
			1.5,
			1,
			1.5
		},
		impact = {
			1,
			1,
			1.5,
			1,
			1.5
		}
	},
	cleave_distribution_burning_tank_M = {
		attack = 0.2,
		impact = 0.5
	},
	default_target_burning_tank_M = {
		dot_template_name = "burning_1W_dot",
		boost_curve_type = "tank_curve",
		boost_curve_coefficient = 0.3,
		attack_template = "burning_tank",
		power_distribution = {
			attack = 0.075,
			impact = 0.15
		}
	},
	targets_burning_tank_M = {
		{
			dot_template_name = "burning_1W_dot",
			boost_curve_type = "tank_curve",
			boost_curve_coefficient = 0.3,
			attack_template = "burning_tank",
			power_distribution = {
				attack = 0.2,
				impact = 0.3
			}
		},
		{
			dot_template_name = "burning_1W_dot",
			boost_curve_type = "tank_curve",
			boost_curve_coefficient = 0.3,
			attack_template = "burning_tank",
			power_distribution = {
				attack = 0.15,
				impact = 0.2
			}
		}
	},
	critical_strike_tank_spiked_M = {
		attack_armor_power_modifer = {
			1.3,
			1,
			1.3,
			1.3,
			1.3
		},
		impact_armor_power_modifer = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
	armor_modifier_tank_spiked_M = {
		attack = {
			1.3,
			0.8,
			1.3,
			1.3,
			1
		},
		impact = {
			1,
			1,
			0.5,
			1,
			0.75
		}
	},
	cleave_distribution_tank_spiked_M = {
		attack = 0.6,
		impact = 0.65
	},
	default_target_tank_spiked_M = {
		boost_curve_type = "tank_curve",
		stagger_duration_modifier = 1.5,
		attack_template = "light_blunt_tank",
		power_distribution = {
			attack = 0.05,
			impact = 0.05
		}
	},
	targets_tank_spiked_M = {
		{
			boost_curve_type = "tank_curve",
			stagger_duration_modifier = 1.5,
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.3,
				impact = 0.3
			}
		},
		{
			boost_curve_type = "tank_curve",
			stagger_duration_modifier = 1.5,
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.15,
				impact = 0.15
			}
		},
		{
			boost_curve_type = "tank_curve",
			stagger_duration_modifier = 1.5,
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.075,
				impact = 0.1
			}
		}
	},
	critical_strike_tank_H = {
		attack_armor_power_modifer = {
			1,
			0.6,
			2,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
	armor_modifier_tank_H = {
		attack = {
			1,
			0,
			1.5,
			1,
			0.75
		},
		impact = {
			1,
			1,
			1,
			1,
			0.75
		}
	},
	cleave_distribution_tank_H = {
		attack = 0.3,
		impact = 0.8
	},
	default_target_tank_H = {
		boost_curve_type = "tank_curve",
		attack_template = "blunt_tank",
		power_distribution = {
			attack = 0.05,
			impact = 0.125
		}
	},
	targets_tank_H = {
		{
			boost_curve_type = "tank_curve",
			attack_template = "heavy_blunt_tank",
			power_distribution = {
				attack = 0.275,
				impact = 0.3
			},
			armor_modifier = {
				attack = {
					1,
					0.5,
					2,
					1,
					0.75
				},
				impact = {
					1.5,
					1,
					1,
					1,
					0.75
				}
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "heavy_blunt_tank",
			power_distribution = {
				attack = 0.15,
				impact = 0.225
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.075,
				impact = 0.2
			}
		}
	},
	armor_modifier_markus_knight_charge = {
		attack = {
			0,
			0,
			0,
			0,
			0
		},
		impact = {
			1,
			1,
			100,
			1,
			1
		}
	},
	cleave_distribution_markus_knight_charge = {
		attack = 2,
		impact = 2
	},
	default_target_markus_knight_charge = {
		boost_curve_type = "tank_curve",
		attack_template = "shield_slam",
		power_distribution = {
			attack = 0,
			impact = 10
		}
	}

	ewDamageProfileTemplates.tb_axe_light_attack = {
		charge_value = "light_attack",
		cleave_distribution = {
			attack = 0.075,
			impact = 0.075
		},
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				.76,
				2.5,
				1,
				1
			},
			impact_armor_power_modifer = {
				1,
				1,
				1,
				1,
				1
			}
		},
		armor_modifier = {
			attack = {
				1.25,
				.76,
				2.5,
				1,
				0.75
			},
			impact = {
				1,
				0.8,
				1,
				1,
				0.75
			}
		},
		default_target = {
			boost_curve_coefficient_headshot = 1.5,
			boost_curve_type = "ninja_curve",
			boost_curve_coefficient = 1,
			attack_template = "stab_smiter",
			power_distribution = {
				attack = 0.325,
				impact = 0.2
			}
		},
		melee_boost_override = 2.5,
		shield_break = true
	}

	--Heavies
	Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack.anim_time_scale = 0.925  --1.035
	Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.anim_time_scale = 1.1 --1.035
	Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_3.additional_critical_strike_chance = 0.2 --0
	--push
	Weapons.dual_wield_axes_template_1.actions.action_one.push.damage_profile_inner = "light_push"
	Weapons.dual_wield_axes_template_1.actions.action_one.push.fatigue_cost = "action_stun_push"
--]]
	mod:echo("Deepwood Vent Damage Profile Applied.")
end
