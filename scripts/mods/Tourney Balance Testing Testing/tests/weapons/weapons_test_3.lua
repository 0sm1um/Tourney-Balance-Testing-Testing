local mod = get_mod("Tourney Balance Testing Testing")

if mod.settings.weapons_test_1 then
	-- Big Bardin Rebalance
	NewDamageProfileTemplates = NewDamageProfileTemplates or {}

	NewDamageProfileTemplates.light_dual_axes_os = {
		armor_modifier = {
            attack = {
				1,
				0.4,
				3,
				1.25,
				0.75
			},
            impact = {
				0.75,
				0.5,
				1,
				1,
				0.75
            }
        },
		critical_strike = {
			attack_armor_power_modifer = {
				1.25,
				0.75,
				3.3,
				1.25,
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
		charge_value = "light_attack",
		cleave_distribution = {
			attack = 0.075,
			impact = 0.075
		},
		default_target = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			boost_curve_coefficient_headshot = 2,
			power_distribution = {
				attack = 0.26,
				impact = 0.125
			}
		},
		ignore_stagger_reduction = true,
		targets =  {
			[2] = {
				boost_curve_type = "smiter_curve",
				attack_template = "slashing_smiter",
				boost_curve_coefficient_headshot = 1,
				power_distribution = {
					attack = 0.075,
					impact = 0.075
				},
				armor_modifier = {
					attack = {
						0.75,
						0.25,
						1,
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
				}
			}
		}
	}
	NewDamageProfileTemplates.push_attack_dual_axes_os = {
		armor_modifier = {
            attack = {
                1.25,
				0.65,
				3,
				1,
				1,
				0.6
            },
            impact = {
                1,
				0.5,
				1,
				1,
				0.75,
				0.25
            }
        },
		critical_strike = {
			attack_armor_power_modifer = {
				1.25,
				0.75,
				3.3,
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
		charge_value = "light_attack",
		cleave_distribution = {
			attack = 0.075,
			impact = 0.075
		},
		default_target = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			boost_curve_coefficient_headshot = 2,
			power_distribution = {
				attack = 0.26,
				impact = 0.15
			}
		},
		ignore_stagger_reduction = false,
		targets =  {
			[2] = {
				boost_curve_type = "smiter_curve",
				attack_template = "slashing_smiter",
				boost_curve_coefficient_headshot = 1,
				power_distribution = {
					attack = 0.075,
					impact = 0.075
				},
				armor_modifier = {
					attack = {
						1,
						0.25,
						1,
						1,
						0.75
					},
					impact = {
						0.75,
						0.25,
						1,
						1,
						0.75
					}
				}
			}
		}
	}
	NewDamageProfileTemplates.heavy_attack_dual_axes_os = {
		armor_modifier = {
			impact = {
				1,
				0.5,
				1,
				1,
				0.75,
				0.25
			},
			attack = {
				1.25,
				0.65,
				3,
				1,
				0.75,
				0.6
			}
		  },
		critical_strike = {
			attack_armor_power_modifer = {
				1.25,
			  	0.75,
			  	3.3,
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
		charge_value = "heavy_attack",
		cleave_distribution = {
			attack = 0.075,
			impact = 0.075
		},
		default_target = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			boost_curve_coefficient_headshot = 1.6,
			power_distribution = {
				attack = 0.26,
				impact = 0.15
			}
		},
		ignore_stagger_reduction = false,
		targets =  {
			[2] = {
				boost_curve_type = "smiter_curve",
				attack_template = "slashing_smiter",
				boost_curve_coefficient_headshot = 1,
				power_distribution = {
					attack = 0.075,
					impact = 0.075
				},
				armor_modifier = {
					impact = {
					  0.75,
					  0.25,
					  1,
					  1,
					  0.75
					},
					attack = {
					  1,
					  0.25,
					  1,
					  1,
					  0.75
					}
				},
			}
		}
	}

	-- Greataxe
	NewDamageProfileTemplates.light_great_axe_os = {
		default_target = {
		  attack_template = "slashing_smiter",
		  power_distribution = {
			impact = 0.2,
			attack = 0.367
		  },
		  armor_modifier = {
			impact = {
			  1,
			  0.8,
			  1,
			  1,
			  0.75
			},
			attack = {
			  1.25,
			  0.8,
			  2.5,
			  1,
			  0.75
			}
		  },
		  boost_curve_type = "smiter_curve"
		},
		critical_strike = {
		  attack_armor_power_modifer = {
			1.25,
			0.8,
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
		  impact = {
			1,
			0.6,
			1,
			1,
			0.75
		  },
		  attack = {
			1,
			0.8,
			1.75,
			1,
			0.75
		  }
		},
		targets = {
		  [2] = {
			attack_template = "light_blunt_tank",
			power_distribution = {
			  impact = 0.1,
			  attack = 0.113
			},
			boost_curve_type = "tank_curve"
		  }
		},
		charge_value = "light_attack",
		shield_break = true,
		cleave_distribution = {
		  impact = 0.075,
		  attack = 0.075
		}
	}

	NewDamageProfileTemplates.heavy_great_axe_os  = {
		targets = {
		  {
			boost_curve_coefficient_headshot = 0.75,
			power_distribution = {
			  impact = 0.275,
			  attack = 0.45
			},
			boost_curve_type = "linesman_curve",
			armor_modifier = {
			  impact = {
				0.9,
				0.75,
				1,
				1,
				0.75
			  },
			  attack = {
				0.9,
				0.75,
				2,
				1,
				0.75
			  }
			},
			attack_template = "heavy_slashing_linesman"
		  },
		  {
			boost_curve_coefficient_headshot = 0.75,
			power_distribution = {
			  impact = 0.15,
			  attack = 0.25
			},
			attack_template = "slashing_linesman",
			boost_curve_type = "linesman_curve"
		  },
		  {
			boost_curve_coefficient_headshot = 0.75,
			power_distribution = {
			  impact = 0.1,
			  attack = 0.15
			},
			attack_template = "light_slashing_linesman",
			boost_curve_type = "linesman_curve"
		  },
		  {
			boost_curve_coefficient_headshot = 0.75,
			power_distribution = {
			  impact = 0.075,
			  attack = 0.125
			},
			attack_template = "light_slashing_linesman",
			boost_curve_type = "linesman_curve"
		  }
		},
		armor_modifier = {
		  impact = {
			0.9,
			0.5,
			1,
			1,
			0.75,
			0.25
		  },
		  attack = {
			0.9,
			0,
			1.5,
			1,
			0.75,
			0
		  }
		},
		cleave_distribution = {
		  impact = 0.4,
		  attack = 0.750
		},
		charge_value = "heavy_attack",
		critical_strike = {
		  attack_armor_power_modifer = {
			1,
			0.75,
			2,
			1,
			1,
			0.75
		  },
		  impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1,
			1
		  }
		},
		default_target = {
		  boost_curve_coefficient_headshot = 0.75,
		  power_distribution = {
			impact = 0.05,
			attack = 0.075
		  },
		  attack_template = "light_slashing_linesman",
		  boost_curve_type = "linesman_curve"
		}
	}
	NewDamageProfileTemplates.push_attack_great_axe_os  = {
		targets = {
		  {
			boost_curve_coefficient_headshot = 1.5,
			power_distribution = {
			  impact = 0.2,
			  attack = 0.283
			},
			boost_curve_type = "linesman_curve",
			armor_modifier = {
			  impact = {
				0.9,
				0.75,
				1,
				1,
				0.75
			  },
			  attack = {
				1,
				0.3,
				1.5,
				1,
				0.75
			  }
			},
			attack_template = "heavy_slashing_linesman"
		  },
		  {
			attack_template = "slashing_linesman",
			power_distribution = {
			  impact = 0.125,
			  attack = 0.170
			},
			boost_curve_type = "linesman_curve"
		  },
		  {
			attack_template = "light_slashing_linesman",
			power_distribution = {
			  impact = 0.1,
			  attack = 0.113
			},
			boost_curve_type = "linesman_curve"
		  }
		},
		armor_modifier = {
		  impact = {
			0.9,
			0.5,
			1,
			1,
			0.75
		  },
		  attack = {
			0.9,
			0,
			1.5,
			1,
			0.75
		  }
		},
		cleave_distribution = {
		  impact = 0.25,
		  attack = 0.275
		},
		charge_value = "light_attack",
		critical_strike = {
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
		default_target = {
		  attack_template = "light_slashing_linesman",
		  power_distribution = {
			impact = 0.075,
			attack = 0.075
		  },
		  boost_curve_type = "linesman_curve"
		}
	}

	-- Cog Hammer

	NewDamageProfileTemplates.light_cog_hammer_os = {
		stagger_distance_modifier = 1.15,
		cleave_distribution = {
		  impact = 0.8,
		  attack = 0.3
		},
		armor_modifier = {
		  impact = {
			1,
			1,
			0.5,
			1,
			0.75
		  },
		  attack = {
			1,
			0.2,
			1,
			1,
			0.75
		  }
		},
		default_target = {
		  attack_template = "light_blunt_tank",
		  power_distribution = {
			impact = 0.05,
			attack = 0.05
		  },
		  boost_curve_type = "tank_curve"
		},
		targets = {
		  {
			boost_curve_coefficient_headshot = 1,
			power_distribution = {
			  impact = 0.2,
			  attack = 0.2
			},
			attack_template = "blunt_tank",
			boost_curve_type = "tank_curve"
		  },
		  {
			attack_template = "blunt_tank",
			power_distribution = {
			  impact = 0.15,
			  attack = 0.1
			},
			boost_curve_type = "tank_curve"
		  },
		  {
			attack_template = "light_blunt_tank",
			power_distribution = {
			  impact = 0.1,
			  attack = 0.075
			},
			boost_curve_type = "tank_curve"
		  }
		},
		charge_value = "light_attack",
		critical_strike = {
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
		stagger_duration_modifier = 1.5
	}
	NewDamageProfileTemplates.heavy_cog_hammer_os = {
		default_target = {
		  boost_curve_coefficient_headshot = 1.5,
		  boost_curve_coefficient = 1,
		  boost_curve_type = "ninja_curve",
		  power_distribution = {
			impact = 0.275,
			attack = 0.735
		  },
		  armor_modifier = {
			impact = {
			  1,
			  1,
			  1,
			  1,
			  1.25
			},
			attack = {
			  1,
			  0.85,
			  1.5,
			  1,
			  0.75
			}
		  },
		  attack_template = "heavy_slashing_smiter_hs_executioner"
		},
		critical_strike = {
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
		armor_modifier = {
		  impact = {
			1,
			1,
			1,
			1,
			0.75
		  },
		  attack = {
			1,
			0.5,
			1.5,
			1,
			0.75
		  }
		},
		targets = {
		  [2] = {
			attack_template = "stab_smiter",
			power_distribution = {
			  impact = 0.1,
			  attack = 0.226
			},
			boost_curve_type = "smiter_curve"
		  }
		},
		charge_value = "heavy_attack",
		shield_break = true,
		cleave_distribution = {
		  impact = 0.075,
		  attack = 0.075
		}
	}
	NewDamageProfileTemplates.push_attack_cog_hammer_os = NewDamageProfileTemplates.light_cog_hammer_os

	-- 1h Axe
	NewDamageProfileTemplates.light_1h_axe_os = {
		default_target = {
		  attack_template = "slashing_linesman",
		  power_distribution = {
			attack = 0.25,
			impact = 0.175
		  },
		boost_curve_type = "smiter_curve",
		boost_curve_coefficient_headshot = 1,
		},
		ignore_stagger_reduction = true,
		armor_modifier = {
		  impact = {
			1,
			0.5,
			1,
			0.75,
			0.25
		  },
		  attack = {
			1.33,
			0.6,
			2.5,
			1.4,
			0.6
		  }
		},
		targets = {
		  [2] = {
			attack_template = "slashing_smiter",
			power_distribution = {
			  attack = 0.085,
			  impact = 0.075
			},
			boost_curve_type = "smiter_curve",
			armor_modifier = {
			  attack = {
				1,
				0.25,
				1,
				1,
				0.75
			  },
			  impact = {
				0.75,
				0.25,
				1,
				1,
				0.75
			  }
			}
		  }
		},
		charge_value = "light_attack",
		critical_strike = {
		  attack_armor_power_modifer = {
			1.33,
			1.1,
			2.75,
			1.5,
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
		cleave_distribution = {
		  impact = 0.075,
		  attack = 0.075
		}
	}

	NewDamageProfileTemplates.push_attack_1h_axe_os  = {
		default_target = {
			attack_template = "slashing_linesman",
			power_distribution = {
			  attack = 0.25,
			  impact = 0.175
			},
		  boost_curve_type = "smiter_curve",
		  boost_curve_coefficient_headshot = 3,
		  },
		  ignore_stagger_reduction = true,
		  armor_modifier = {
			impact = {
				0.75,
				0.25,
				1,
				1,
				0.75
			},
			attack = {
			  1.1,
			  0.65,
			  2.5,
			  1,
			  0.5
			}
		  },
		  targets = {
			[2] = {
			  attack_template = "slashing_smiter",
			  power_distribution = {
				attack = 0.085,
				impact = 0.075
			  },
			  boost_curve_type = "smiter_curve",
			  armor_modifier = {
				attack = {
				  1,
				  0.25,
				  1,
				  1,
				  0.75
				},
				impact = {
				  0.75,
				  0.25,
				  1,
				  1,
				  0.75
				}
			  }
			}
		  },
		  charge_value = "light_attack",
		  critical_strike = {
			attack_armor_power_modifer = {
			  1,
			  0.75,
			  2.75,
			  1.25,
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
		  cleave_distribution = {
			impact = 0.075,
			attack = 0.075
		  }
	  }

	NewDamageProfileTemplates.heavy_1h_axe_os = {
		default_target = {
		  attack_template = "slashing_smiter",
		  boost_curve_coefficient = 2,
		  power_distribution = {
			impact = 0.25,
			attack = 0.4
		  },
		boost_curve_type = "smiter_curve",
		boost_curve_coefficient_headshot = 1.25,
		},
		critical_strike = {
		  attack_armor_power_modifer = {
			1,
			1.25,
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
		  impact = {
			1,
			1,
			1,
			1,
			0.75
		  },
		  attack = {
			1,
			0.8,
			2,
			1,
			1
		  }
		},
		targets = {
		  [2] = {
			attack_template = "light_blunt_tank",
			power_distribution = {
			  impact = 0.1,
			  attack = 0.113
			},
			boost_curve_type = "tank_curve"
		  }
		},
		charge_value = "heavy_attack",
		shield_break = true,
		cleave_distribution = {
		  impact = 0.075,
		  attack = 0.075
		}
	}

	-- 1h Hammer
	NewDamageProfileTemplates.lights_1_2_1h_hammer_os = {
		cleave_distribution = {
		  attack = 0.23,
		  impact = 0.6
		},
		armor_modifier = {
		  attack = {
			1,
			0.35,
			1,
			1,
			0.75,
			0.25
		  },
		  impact = {
			1,
			1,
			0.5,
			1,
			1
		  }
		},
		default_target = {
		  attack_template = "light_blunt_tank",
		  power_distribution = {
			attack = 0.057,
			impact = 0.15
		  },
		  boost_curve_type = "tank_curve"
		},
		targets = {
		  {
			attack_template = "blunt_tank",
			power_distribution = {
			  attack = 0.254,
			  impact = 0.25
			},
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "tank_curve"
		  },
		  {
			attack_template = "light_blunt_tank",
			power_distribution = {
			  attack = 0.085,
			  impact = 0.175
			},
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "tank_curve"
		  }
		},
		charge_value = "light_attack",
		critical_strike = {
		  attack_armor_power_modifer = {
			1,
			0.5,
			1.5,
			1,
			0.75,
			0.25
		  },
		  impact_armor_power_modifer = {
			1,
			1,
			0.5,
			1,
			1
		  }
		},
		stagger_duration_modifier = 1.25
	  }
	NewDamageProfileTemplates.lights_3_4_1h_hammer_os  = {
		cleave_distribution = {
		  attack = 0.075,
		  impact = 0.075
		},
		ignore_stagger_reduction = true,
		armor_modifier = {
		  attack = {
			1.25,
			0.65,
			3,
			1,
			1.25,
			0.6
		  },
		  impact = {
			1,
			0.5,
			1,
			1,
			0.75,
			0.25
		  }
		},
		targets = {
		  [2] = {
			attack_template = "slashing_smiter",
			power_distribution = {
			  impact = 0.075,
			  attack = 0.085
			},
			armor_modifier = {
			  impact = {
				0.75,
				0.25,
				1,
				1,
				0.75
			  },
			  attack = {
				1,
				0.25,
				1,
				1,
				0.75
			  }
			},
			boost_curve_type = "smiter_curve"
		  }
		},
		charge_value = "light_attack",
		critical_strike = {
		  attack_armor_power_modifer = {
			1.25,
			0.75,
			2.75,
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
		default_target = {
		  attack_template = "slashing_smiter",
		  power_distribution = {
			attack = 0.283,
			impact = 0.175
		  },
		  boost_curve_coefficient_headshot = 2,
		  boost_curve_type = "smiter_curve"
		}
	}

	NewDamageProfileTemplates.heavy_1h_hammer_os = {
		targets = {
		  [2] = {
			attack_template = "light_blunt_tank",
			power_distribution = {
			  impact = 0.1,
			  attack = 0.113
			},
			boost_curve_type = "tank_curve"
		  }
		},
		critical_strike = {
		  attack_armor_power_modifer = {
			1,
			0.8,
			2.5,
			1,
			1
		  },
		  impact_armor_power_modifer = {
			1,
			0.8,
			1,
			1,
			1,
			0.5
		  }
		},
		default_target = {
		  attack_template = "slashing_smiter",
		  boost_curve_coefficient = 2,
		  power_distribution = {
			impact = 0.25,
			attack = 0.452
		  },
		  boost_curve_type = "smiter_curve"
		},
		cleave_distribution = {
		  impact = 0.075,
		  attack = 0.075
		},
		charge_value = "light_attack",
		shield_break = true,
		armor_modifier = {
		  attack = {
			1,
			0.8,
			2.5,
			1,
			1
		  },
		  impact = {
			1,
			0.6,
			1,
			1,
			0.75
		  }
		}
	}
	NewDamageProfileTemplates.push_attack_1h_hammer_os  = {
		armor_modifier = {
		  impact = {
			1,
			1,
			0.5,
			1,
			1
		  },
		  attack = {
			1,
			0,
			1,
			1,
			1
		  }
		},
		targets = {
		  {
			boost_curve_coefficient_headshot = 1.5,
			power_distribution = {
			  impact = 0.25,
			  attack = 0.254
			},
			attack_template = "blunt_tank",
			boost_curve_type = "tank_curve"
		  },
		  {
			attack_template = "light_blunt_tank",
			power_distribution = {
			  impact = 0.175,
			  attack = 0.085
			},
			boost_curve_type = "tank_curve"
		  }
		},
		default_target = {
		  attack_template = "light_blunt_tank",
		  power_distribution = {
			impact = 0.15,
			attack = 0.057
		  },
		  boost_curve_type = "tank_curve"
		},
		cleave_distribution = {
		  impact = 0.6,
		  attack = 0.2
		},
		charge_value = "light_attack",
		critical_strike = {
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
		stagger_duration_modifier = 1.25
	}

	-- Dual Hammers

	NewDamageProfileTemplates.light_dual_hammers_os = {
		targets = {
		  {
			boost_curve_coefficient_headshot = 1.5,
			power_distribution = {
			  impact = 0.2,
			  attack = 0.17
			},
			attack_template = "blunt_tank",
			boost_curve_type = "tank_curve"
		  },
		  {
			attack_template = "light_blunt_tank",
			power_distribution = {
			  impact = 0.175,
			  attack = 0.085
			},
			boost_curve_type = "tank_curve"
		  }
		},
		armor_modifier = {
		  impact = {
			1,
			1,
			0.5,
			1,
			1
		  },
		  attack = {
			1,
			0,
			1,
			1,
			1
		  }
		},
		cleave_distribution = {
		  impact = 0.4,
		  attack = 0.2
		},
		charge_value = "light_attack",
		critical_strike = {
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
		default_target = {
		  attack_template = "light_blunt_tank",
		  power_distribution = {
			impact = 0.1,
			attack = 0.057
		  },
		  boost_curve_type = "tank_curve"
		}
	}

	NewDamageProfileTemplates.heavy_1_dual_hammers_os  = {
		cleave_distribution = {
		  impact = 0.075,
		  attack = 0.075
		},
		ignore_stagger_reduction = false,
		armor_modifier = {
		  impact = {
			1,
			0.5,
			1,
			1,
			0.75,
			0.25
		  },
		  attack = {
			1.25,
			0.65,
			2.5,
			1,
			0.75,
			0.6
		  }
		},
		targets = {
		  [2] = {
			attack_template = "slashing_smiter",
			power_distribution = {
			  attack = 0.075,
			  impact = 0.085
			},
			boost_curve_type = "smiter_curve",
			armor_modifier = {
			  attack = {
				1,
				0.25,
				1,
				1,
				0.75
			  },
			  impact = {
				0.75,
				0.25,
				1,
				1,
				0.75
			  }
			}
		  }
		},
		charge_value = "heavy_attack",
		critical_strike = {
		  attack_armor_power_modifer = {
			1.25,
			0.75,
			2.75,
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
		default_target = {
		  boost_curve_coefficient_headshot = 1.6,
		  power_distribution = {
			attack = 0.254,
			impact = 0.15
		  },
		  attack_template = "blunt_smiter",
		  boost_curve_type = "smiter_curve"
		}
	}

	NewDamageProfileTemplates.heavy_2_3_dual_hammers_os = {
		targets = {
		  {
			boost_curve_coefficient_headshot = 1,
			power_distribution = {
			  impact = 0.175,
			  attack = 0.254
			},
			armor_modifier = {
			  impact = {
				1,
				1,
				0.5,
				1,
				0.75
			  },
			  attack = {
				1,
				0.5,
				1,
				1,
				0.75
			  }
			},
			boost_curve_type = "tank_curve",
			attack_template = "blunt_tank"
		  },
		  {
			attack_template = "blunt_tank",
			power_distribution = {
			  impact = 0.15,
			  attack = 0.113
			},
			boost_curve_type = "tank_curve"
		  },
		  {
			attack_template = "light_blunt_tank",
			power_distribution = {
			  impact = 0.1,
			  attack = 0.085
			},
			boost_curve_type = "tank_curve"
		  }
		},
		armor_modifier = {
		  impact = {
			1,
			1,
			0.5,
			1,
			0.75
		  },
		  attack = {
			1,
			0.35,
			1,
			1,
			0.75
		  }
		},
		default_target = {
		  attack_template = "light_blunt_tank",
		  power_distribution = {
			impact = 0.05,
			attack = 0.05
		  },
		  boost_curve_type = "tank_curve"
		},
		cleave_distribution = {
		  impact = 0.8,
		  attack = 0.3
		},
		charge_value = "heavy_attack",
		critical_strike = {
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
		stagger_duration_modifier = 1.5
	  }

	NewDamageProfileTemplates.push_attack_dual_hammers_os = {
		default_target = {
		  boost_curve_coefficient_headshot = 2,
		  boost_curve_coefficient = 0.75,
		  boost_curve_type = "smiter_curve",
		  attack_template = "heavy_blunt_fencer",
		  power_distribution = {
			attack = 0.113,
			impact = 0.075
		  }
		},
		armor_modifier = {
		  impact = {
			1,
			0.25,
			1,
			1,
			0.75
		  },
		  attack = {
			1,
			0.25,
			1.5,
			1,
			0.75
		  }
		},
		targets = {
		  {
			boost_curve_coefficient_headshot = 2,
			boost_curve_coefficient = 0.75,
			boost_curve_type = "smiter_curve",
			power_distribution = {
			  impact = 0.175,
			  attack = 0.226
			},
			armor_modifier = {
			  impact = {
				1,
				0.75,
				1,
				1,
				1.5
			  },
			  attack = {
				1,
				0.75,
				1.5,
				1,
				0.75
			  }
			},
			attack_template = "stab_smiter"
		  }
		},
		charge_value = "light_attack",
		critical_strike = {
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
		cleave_distribution = {
		  impact = 0.075,
		  attack = 0.075
		}
	}
	-------------
	--Dual Axes--
	-------------

	-- Lights
	Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_left.damage_profile = "light_dual_axes_os"
	Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_right.damage_profile = "light_dual_axes_os"
    Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_left.damage_profile = "light_dual_axes_os"
    Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_right.damage_profile =  "light_dual_axes_os"
	Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_left.range_mod = 1.2        -- Increase range of light attacks
	Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_right.range_mod = 1.2
    Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_left.range_mod = 1.2
    Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_back_right.range_mod =  1.2

	-- Heavies
	Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack.anim_time_scale = 0.925  --1.035
	Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.anim_time_scale = 1.1 --1.035
	Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_3.additional_critical_strike_chance = 0.2 --0
	Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack.damage_profile_left = "heavy_attack_dual_axes_os"
	Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack.damage_profile_right = "heavy_attack_dual_axes_os"
	Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.damage_profile_right = "heavy_attack_dual_axes_os"
	Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_2.damage_profile_left = "heavy_attack_dual_axes_os"
	Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_3.damage_profile_left = "heavy_attack_dual_axes_os"
	Weapons.dual_wield_axes_template_1.actions.action_one.heavy_attack_3.damage_profile_right = "heavy_attack_dual_axes_os"

	-- Push Attack
	Weapons.dual_wield_axes_template_1.actions.action_one.push.damage_profile_inner = "light_push"
	Weapons.dual_wield_axes_template_1.actions.action_one.push.fatigue_cost = "action_stun_push"
	Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.damage_profile_left = "push_attack_dual_axes_os"
	Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.damage_profile_right = "push_attack_dual_axes_os"
	Weapons.dual_wield_axes_template_1.actions.action_one.light_attack_bopp.range_mod = 1.2 -- Increase range of Push Attack
	
	-- Dodge Distance modifications
	Weapons.dual_wield_axes_template_1.buffs = {
		change_dodge_distance = {
			external_optional_multiplier = 1.1
		},
		change_dodge_speed = {
			external_optional_multiplier = 1.2
		}
	}

	-------------
	--Great Axe--
	-------------
	
	-- Lights
	Weapons.two_handed_axes_template_1.actions.action_one.light_attack_left.damage_profile = "light_great_axe_os"
	Weapons.two_handed_axes_template_1.actions.action_one.light_attack_right.damage_profile = "light_great_axe_os"
	Weapons.two_handed_axes_template_1.actions.action_one.light_attack_up.damage_profile = "light_great_axe_os"
	-- Heavies
	Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_right.damage_profile = "heavy_great_axe_os"
	Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_left.damage_profile = "heavy_great_axe_os"
	Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_right.slide_armour_hit = true
	Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_left.slide_armour_hit = true
	Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_right.hit_mass_count = LINESMAN_HIT_MASS_COUNT
	Weapons.two_handed_axes_template_1.actions.action_one.heavy_attack_left.hit_mass_count = LINESMAN_HIT_MASS_COUNT

	-- Push Attack
	Weapons.two_handed_axes_template_1.actions.action_one.light_attack_bopp.damage_profile = "push_attack_great_axe_os"

	--------------
	--Cog Hammer--
	--------------

	-- Lights
	Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_left.damage_profile = "light_cog_hammer_os"
	Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_right.damage_profile = "light_cog_hammer_os"
	Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_last.damage_profile = "light_cog_hammer_os"
	Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_up_right_last.damage_profile = "light_cog_hammer_os"
	--Heavies
	Weapons.two_handed_cog_hammers_template_1.actions.action_one.heavy_attack_right.damage_profile = "heavy_cog_hammer_os"
	Weapons.two_handed_cog_hammers_template_1.actions.action_one.heavy_attack_left.damage_profile = "heavy_cog_hammer_os"
	-- Push Attack
	Weapons.two_handed_cog_hammers_template_1.actions.action_one.light_attack_bopp.damage_profile = "light_cog_hammer_os"

	----------------
	--Great Hammer--
	----------------

	Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left.damage_profile = "light_2h_hammer_os"
	Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_right.damage_profile = "light_2h_hammer_os"
	Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_left_up.damage_profile = "light_2h_hammer_os"
	--Heavies
	Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_right.damage_profile = "heavy_2h_hammer_os"
	Weapons.two_handed_hammers_template_1.actions.action_one.heavy_attack_left.damage_profile = "heavy_2h_hammer_os"
	-- Push Attack
	Weapons.two_handed_hammers_template_1.actions.action_one.light_attack_push_left_up.damage_profile = "heavy_2h_hammer_os"

	----------
	--1h Axe--
	----------

	Weapons.one_hand_axe_template_1.actions.action_one.light_attack_left.damage_profile = "light_1h_axe_os"
	Weapons.one_hand_axe_template_1.actions.action_one.light_attack_right.damage_profile = "light_1h_axe_os"
    Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.damage_profile = "light_1h_axe_os"
	Weapons.one_hand_axe_template_1.actions.action_one.light_attack_left.range_mod = 1.2        -- Increase range of light attacks
	Weapons.one_hand_axe_template_1.actions.action_one.light_attack_right.range_mod = 1.2
    Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.range_mod = 1.2

	-- Push Attack
	Weapons.one_hand_axe_template_1.actions.action_one.light_attack_bopp.damage_profile = "push_attack_1h_axe_os"

	-- Heavies
	Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_left.damage_profile = "heavy_1h_axe_os"
	Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_right.damage_profile = "heavy_1h_axe_os"
	Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_left.range_mod = 1.2
	Weapons.one_hand_axe_template_1.actions.action_one.heavy_attack_right.range_mod = 1.2
	Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_left.range_mod = 1.2
	Weapons.one_hand_axe_template_2.actions.action_one.heavy_attack_right.range_mod = 1.2

	-- Dodge Distance modifications
	Weapons.one_hand_axe_template_1.buffs = {
		change_dodge_distance = {
			external_optional_multiplier = 1.1
		},
		change_dodge_speed = {
			external_optional_multiplier = 1.2
		}
	}

	Weapons.one_hand_axe_template_1.actions.action_one.light_attack_last.anim_time_scale = 1.3 --1.035
	Weapons.one_hand_axe_template_2.actions.action_one.light_attack_last.anim_time_scale = 1.3 --1.035

	-------------
	--1h Hammer--
	-------------
	Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_left.damage_profile = "lights_1_2_1h_hammer_os"
	Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_right.damage_profile = "lights_1_2_1h_hammer_os"
    Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_down.damage_profile = "lights_3_4_1h_hammer_os"
    Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_last.damage_profile =  "lights_3_4_1h_hammer_os"

	-- Heavies
	Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_left.damage_profile = "heavy_1h_hammer_os"
	Weapons.one_handed_hammer_template_1.actions.action_one.heavy_attack_right.damage_profile = "heavy_1h_hammer_os"

	-- Push Attack
	Weapons.one_handed_hammer_template_1.actions.action_one.light_attack_bopp.damage_profile = "push_attack_1h_hammer_os"

	-----------------
	--Dual Hammers--
	-----------------
	Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left.damage_profile = "light_dual_hammers_os"
	Weapons.dual_wield_hammers_template.actions.action_one.light_attack_down.damage_profile = "light_dual_hammers_os"
    Weapons.dual_wield_hammers_template.actions.action_one.light_attack_left_diagonal.damage_profile = "light_dual_hammers_os"
    Weapons.dual_wield_hammers_template.actions.action_one.light_attack_right_uppercut.damage_profile =  "light_dual_hammers_os"

	-- Heavies
	Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.damage_profile_left = "heavy_1_dual_hammers_os"
	Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack.damage_profile_right = "heavy_1_dual_hammers_os"
	Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.damage_profile_right = "heavy_2_3_dual_hammers_os"
	Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_2.damage_profile_left = "heavy_2_3_dual_hammers_os"
	Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_3.damage_profile_left = "heavy_2_3_dual_hammers_os"
	Weapons.dual_wield_hammers_template.actions.action_one.heavy_attack_3.damage_profile_right = "heavy_2_3_dual_hammers_os"

	-- Push Attack
	Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.damage_profile_left = "push_attack_dual_hammers_os"
	Weapons.dual_wield_hammers_template.actions.action_one.light_attack_bopp.damage_profile_right = "push_attack_dual_hammers_os"

	mod.update_damage_profile_templates()
	mod.update_weapons()

	mod:echo("Big Bardin Rebalance Applied!")
end
require 'pl.pretty'.dump(AttackTemplates)