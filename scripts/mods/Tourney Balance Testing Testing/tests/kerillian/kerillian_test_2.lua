local mod = get_mod("Tourney Balance Testing Testing")

if mod.settings.kerillian_test_2 ~= 2 then

	kerillian_thorn_sister_passive_set_back = {
        buffs = {
            {
                event = "on_damage_taken",
                amount = -mod.settings.kerillian_test_2,
                buff_func = "kerillian_thorn_sister_set_back"
            }
        }
	}
    --[[
	mod:modify_talent_buff_template("we_thornsister", "kerillian_thorn_sister_set_back", {
		amount = -mod.settings.kerillian_test_2
	})
    --]]
	mod:echo("Bonded Spirit Setbackback Applied.")
end
