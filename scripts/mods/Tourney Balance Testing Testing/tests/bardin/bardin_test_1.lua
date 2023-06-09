local mod = get_mod("Tourney Balance Testing Testing")

mod:modify_talent_buff_template("dwarf_ranger", "bardin_ranger_passive", {
	buff_func = "gs_bardin_ranger_scavenge_proc"
})
mod:add_proc_function("gs_bardin_ranger_scavenge_proc", function (owner_unit, buff, params)
	if not Managers.state.network.is_server then
		return
	end

	local offset_position_1 = Vector3(0, 0.25, 0)
	local offset_position_2 = Vector3(0, -0.25, 0)

	if Unit.alive(owner_unit) then
		local talent_extension = ScriptUnit.extension(owner_unit, "talent_system")
		local player_pos = POSITION_LOOKUP[owner_unit] + Vector3.up() * 0.1
		local raycast_down = true
		local pickup_system = Managers.state.entity:system("pickup_system")
		if talent_extension:has_talent("bardin_ranger_passive_spawn_potions_or_bombs", "dwarf_ranger", true) then
			local probability_of_item_drop = 0.1
			PRD_special_drop, buff.state  = PseudoRandomDistribution.flip_coin(buff.state, probability_of_item_drop) -- Do I drop an item?
			if PRD_special_drop then
				local probability_of_potion = 0.6
				PRD_potion_or_bomb, buff.potion_or_bomb_state  = PseudoRandomDistribution.flip_coin(buff.potion_or_bomb_state, probability_of_potion) -- Do I drop a potion or bomb?
				if not PRD_potion_or_bomb then
					local bomb_result = math.random(1, 2)
					if bomb_result == 1 then
						pickup_system:buff_spawn_pickup("frag_grenade_t1", player_pos, raycast_down)
					elseif bomb_result == 2 then
						pickup_system:buff_spawn_pickup("fire_grenade_t1", player_pos, raycast_down)
					end
				elseif PRD_potion_or_bomb then
					local potion_result = math.random(1, 3)
					if potion_result == 1 then
						pickup_system:buff_spawn_pickup("damage_boost_potion", player_pos, raycast_down)
					elseif potion_result == 2 then
						pickup_system:buff_spawn_pickup("speed_boost_potion", player_pos, raycast_down)
					else
						pickup_system:buff_spawn_pickup("cooldown_reduction_potion", player_pos, raycast_down)
					end
				end
			else
				pickup_system:buff_spawn_pickup("ammo_ranger", player_pos, raycast_down)
			end
		elseif talent_extension:has_talent("bardin_ranger_passive_ale") then
			local probability_of_item_drop = 0.5
			PRD_special_drop, buff.state  = PseudoRandomDistribution.flip_coin(buff.state, probability_of_item_drop) -- Do I drop an item?
			if PRD_special_drop then
				pickup_system:buff_spawn_pickup("bardin_survival_ales", player_pos + offset_position_1, raycast_down)
			end
			pickup_system:buff_spawn_pickup("ammo_ranger", player_pos + offset_position_2, raycast_down)
		else -- If user is running ammo talent
			pickup_system:buff_spawn_pickup("ammo_ranger_improved", player_pos, raycast_down)
		end
	end
end)

mod:add_text("bardin_ranger_passive_spawn_potions_or_bombs_desc", "Killing a special has a 10%% chance to drop a potion or bomb instead of a Survivalist cache.")

mod:echo("Osmium's PRD Scavenger Loaded")
