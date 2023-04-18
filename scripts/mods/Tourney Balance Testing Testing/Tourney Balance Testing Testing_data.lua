local mod = get_mod("Tourney Balance Testing Testing")

local menu = {
	name = "TB Testing Testing",
	description = mod:localize("mod_description"),
	is_togglable = true,
}

menu.options = {}
menu.options.widgets = {
			{
				setting_id    = "test_1",
				type          = "checkbox",
				title		  = "prd_scav",
				tooltip       = "prd_scav_tooltip",
				default_value = false
			},
			--[[
			{
				setting_id    = "test_2",
				type          = "checkbox",
				title		  = "CHANGE_ME",
				tooltip       = "CHANGE_ME",
				default_value = false
			},
			{
				setting_id    = "test_N",
				type          = "checkbox",
				title		  = "CHANGE_ME",
				tooltip       = "CHANGE_ME",
				default_value = false
			},
			--]]
			{
				setting_id = "mutually_exclusive_test_1",
				type = "dropdown",
				default_value = 1,
				title = "HM_rework",
				tooltip = "HM_rework_tooltip",
				options = {
					{text = "none", value = 1},
					{text = "joao_HM", value = 2},
					{text = "janoti_HM", value = 3},
				},
				sub_widgets = {},
			},
			--[[
			{
				setting_id = "mutually_exclusive_test_2",
				type = "dropdown",
				default_value = 1,
				title = "HM_rework",
				tooltip = "widget_tooltip",
				options = {
					{text = "none", value = 1},
					{text = "joao_HM", value = 2},
					{text = "janoti_HM", value = 3},
				},
				sub_widgets = {},
			},
			--]]
		}

return menu
