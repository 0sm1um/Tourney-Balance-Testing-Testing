local mod = get_mod("Tourney Balance Testing Testing")

mod:modify_talent_buff_template("dwarf_ranger", "bardin_ranger_ability_free_grenade_buff", {
	duration = 10,
    refresh_durations = true
})

mod:echo("Bomb Dupe Duration Limit Applied")
