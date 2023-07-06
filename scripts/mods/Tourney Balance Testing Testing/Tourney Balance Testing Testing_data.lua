local mod = get_mod("Tourney Balance Testing Testing")

local menu = {
	name = "TB Testing Testing",
	description = mod:localize("mod_description"),
	is_togglable = true,
}

menu.options = {}
menu.options.widgets = {
	{
		setting_id    = "weapons",
		type          = "group",
		title		  = "weapons",
		tooltip       = "weapons_tooltip",
		sub_widgets = {
			{
				setting_id      = "weapons_test_1",
				type            = "checkbox",
				title		    = "big_bardin_rebalance",
				tooltip         = "big_bardin_rebalance_tooltip",
				default_value   = false
			},
		},
	},
	{
		setting_id    = "bardin",
		type        = "group",
		title		  = "bardin",
		tooltip       = "bardin_tooltip",
		sub_widgets = {
			{
				setting_id    = "bardin_test_1",
				type          = "checkbox",
				title		  = "prd_scav",
				tooltip       = "prd_scav_tooltip",
				default_value = false
			},
			{
				setting_id    = "bardin_test_2",
				type          = "checkbox",
				title		  = "slayer_monke",
				tooltip       = "slayer_monke_tooltip",
				default_value = false
			},
		},
	},
	{
		setting_id    = "kruber",
		type          = "group",
		title		  = "kruber",
		tooltip       = "kruber_tooltip",
		sub_widgets = {
			{
				setting_id    = "kruber_test_1",
				type          = "checkbox",
				title		  = "gk_quests",
				tooltip       = "gk_quests_tooltip",
				default_value = false
			},
		},
	},
	{
		setting_id    = "saltzpyre",
		type          = "group",
		title		  = "saltzpyre",
		tooltip       = "saltzpyre_tooltip",
		sub_widgets = {
			{
				setting_id    = "saltzpyre_test_1",
				type          = "checkbox",
				title		  = "whc_crit",
				tooltip       = "whc_crit_tooltip",
				default_value = false
			},
		},
	},
	{
		setting_id    = "kerillian",
		type          = "group",
		title		  = "kerillian",
		tooltip       = "kerillian_tooltip",
		sub_widgets = {
			--[[
			{
				setting_id      = "kerillian_test_1",
				type            = "checkbox",
				title		    = "kerillian_bigwall",
				tooltip         = "kerillian_bigwall_tooltip",
				default_value   = false,
			},
			
			{
				setting_id      = "kerillian_test_2",
				type            = "numeric",
				title		    = "kerillian_bonded_spirit",
				tooltip         = "kerillian_bonded_spirit_tooltip",
				default_value   = 2,
				range = {2, 20},
				unit_text = "seconds",
				decimals_number = 1
			},
			{
				setting_id      = "kerillian_test_3",
				type            = "numeric",
				title		    = "kerillian_bonded_spirit_cdr",
				tooltip         = "kerillian_bonded_spirit_cdr_tooltip",
				default_value   = 0.5,
				range = {0.1, 0.9},
				unit_text = "percent",
				decimals_number = 1
			},
			--]]
			{
				setting_id = "mutually_exclusive_kerillian",
				type = "dropdown",
				default_value = 1,
				title = "HM_rework",
				tooltip = "HM_rework_tooltip",
				options = {
					{text = "no_change", value = 1},
					{text = "joao_HM", value = 2},
					{text = "janoti_HM", value = 3}
				},
				sub_widgets = {}
			},
		},
	},
	--[[
	{
		setting_id    = "sienna",
		type          = "group",
		title		  = "sienna",
		tooltip       = "sienna_tooltip",
		sub_widgets = {
			{
				setting_id    = "sienna_test",
				type          = "checkbox",
				title		  = "sienna_test_1",
				tooltip       = "sienna_test_1_tooltip",
				default_value = false
			},
		},
	},
	--]]
	{
		setting_id    = "misc",
		type        = "group",
		title		  = "misc",
		tooltip       = "misc_tooltips",
		sub_widgets = {
			{
				setting_id    = "misc_test_1",
				type          = "checkbox",
				title		  = "tank_modifier",
				tooltip       = "tank_modifier_tooltip",
				default_value = false
			},
			{
				setting_id    = "misc_test_2",
				type          = "checkbox",
				title		  = "thp_stagger_rebalance",
				tooltip       = "thp_stagger_rebalance_tooltip",
				default_value = false
			},
		},
	},
	
}

return menu
