local mod = get_mod("Tourney Balance Testing Testing")

if mod.settings.kerillian_test_1 then

	--mod:modify_talent_buff_template("wood_elf", "kerillian_thorn_sister_tanky_wall", {visualizer_extra_duration = mod.settings.kerillian_test_1})
	local WALL_TYPES = table.enum("default", "bleed")
	local UNIT_NAMES = {
		default = "units/beings/player/way_watcher_thornsister/abilities/ww_thornsister_thorn_wall_01",
		bleed = "units/beings/player/way_watcher_thornsister/abilities/ww_thornsister_thorn_wall_01_bleed"
	}

	SpawnUnitTemplates.thornsister_thorn_wall_unit = {
		spawn_func = function (source_unit, position, rotation, state_int, group_spawn_index)
			local UNIT_NAME = UNIT_NAMES[WALL_TYPES.default]
			local UNIT_TEMPLATE_NAME = "thornsister_thorn_wall_unit"
			local wall_index = state_int
			local despawn_sound_event = "career_ability_kerillian_sister_wall_disappear"
			local life_time = 6
			local area_damage_params = {
				aoe_dot_damage = 0,
				radius = 0.3,
				area_damage_template = "we_thornsister_thorn_wall",
				invisible_unit = false,
				nav_tag_volume_layer = "temporary_wall",
				create_nav_tag_volume = true,
				aoe_init_damage = 0,
				damage_source = "career_ability",
				aoe_dot_damage_interval = 0,
				damage_players = false,
				source_attacker_unit = source_unit,
				life_time = life_time
			}
			local props_params = {
				life_time = life_time,
				owner_unit = source_unit,
				despawn_sound_event = despawn_sound_event,
				wall_index = wall_index
			}
			local health_params = {
				health = 20
			}
			local buffs_to_add = nil
			local source_talent_extension = ScriptUnit.has_extension(source_unit, "talent_system")
	
			if source_talent_extension then
				if source_talent_extension:has_talent("kerillian_thorn_sister_tanky_wall") then
					local life_time_mult = 1
					local life_time_bonus = 4.2
					area_damage_params.life_time = area_damage_params.life_time * life_time_mult + life_time_bonus
					props_params.life_time = 7.2/10 *(props_params.life_time * life_time_mult + life_time_bonus)
				elseif source_talent_extension:has_talent("kerillian_thorn_sister_debuff_wall") then
					local life_time_mult = 0.17
					local life_time_bonus = 0
					area_damage_params.create_nav_tag_volume = false
					area_damage_params.life_time = area_damage_params.life_time * life_time_mult + life_time_bonus
					props_params.life_time = props_params.life_time * life_time_mult + life_time_bonus
					UNIT_NAME = UNIT_NAMES[WALL_TYPES.bleed]
				end
			end
	
			local extension_init_data = {
				area_damage_system = area_damage_params,
				props_system = props_params,
				health_system = health_params,
				death_system = {
					death_reaction_template = "thorn_wall",
					is_husk = false
				},
				hit_reaction_system = {
					is_husk = false,
					hit_reaction_template = "level_object"
				}
			}
			local wall_unit = Managers.state.unit_spawner:spawn_network_unit(UNIT_NAME, UNIT_TEMPLATE_NAME, extension_init_data, position, rotation)
			local random_rotation = Quaternion(Vector3.up(), math.random() * 2 * math.pi - math.pi)
	
			Unit.set_local_rotation(wall_unit, 0, random_rotation)
	
			local buff_extension = ScriptUnit.has_extension(wall_unit, "buff_system")
	
			if buff_extension and buffs_to_add then
				for i = 1, #buffs_to_add do
					buff_extension:add_buff(buffs_to_add[i])
				end
			end
	
			local thorn_wall_extension = ScriptUnit.has_extension(wall_unit, "props_system")
	
			if thorn_wall_extension then
				thorn_wall_extension.group_spawn_index = group_spawn_index
			end
		end
	}

	mod:modify_talent("we_thornsister", 6, 1, {
		description = "kerillian_thorn_sister_tanky_wall_desc_2"
	})
	mod:add_text("kerillian_thorn_sister_tanky_wall_desc_2", "Increase the width of Thorn Wall and sets duration to 6 seconds.")


	mod:echo("Sister of the Thorn Big Wall duration change loaded.")
end
