local mod = get_mod("Tourney Balance Testing Testing")

-- base TB functions

-- Text Localization
local _language_id = Application.user_setting("language_id")
local _localization_database = {}
mod._quick_localize = function(self, text_id)
    local mod_localization_table = _localization_database
    if mod_localization_table then
        local text_translations = mod_localization_table[text_id]
        if text_translations then
            return text_translations[_language_id] or text_translations["en"]
        end
    end
end

mod:hook("Localize", function(func, text_id)
    local str = mod:_quick_localize(text_id)
    if str then return str end
    return func(text_id)
end)

mod.add_text = function(self, text_id, text)
    if type(text) == "table" then
        _localization_database[text_id] = text
    else
        _localization_database[text_id] = {
            en = text
        }
    end
end

mod.add_buff = function(buff_name, buff_data)
    local new_buff = {
        buffs = {
            merge({ name = buff_name }, buff_data),
        },
    }
    BuffTemplates[buff_name] = new_buff
    local index = #NetworkLookup.buff_templates + 1
    NetworkLookup.buff_templates[index] = buff_name
    NetworkLookup.buff_templates[buff_name] = index
end

mod.updateValues = function()
	for _, buffs in pairs(TalentBuffTemplates) do
		table.merge_recursive(BuffTemplates, buffs)
	end

	return

end

-- Buff and Talent Functions
local function merge(dst, src)
    for k, v in pairs(src) do
        dst[k] = v
    end
    return dst
end
function mod.add_talent_buff_template(self, hero_name, buff_name, buff_data, extra_data)   
    local new_talent_buff = {
        buffs = {
            merge({ name = buff_name }, buff_data),
        },
    }
    if extra_data then
        new_talent_buff = merge(new_talent_buff, extra_data)
    elseif type(buff_data[1]) == "table" then
        new_talent_buff = {
            buffs = buff_data,
        }
        if new_talent_buff.buffs[1].name == nil then
            new_talent_buff.buffs[1].name = buff_name
        end
    end
    TalentBuffTemplates[hero_name][buff_name] = new_talent_buff
    BuffTemplates[buff_name] = new_talent_buff
    local index = #NetworkLookup.buff_templates + 1
    NetworkLookup.buff_templates[index] = buff_name
    NetworkLookup.buff_templates[buff_name] = index
end
function mod.modify_talent_buff_template(self, hero_name, buff_name, buff_data, extra_data)   
    local new_talent_buff = {
        buffs = {
            merge({ name = buff_name }, buff_data),
        },
    }
    if extra_data then
        new_talent_buff = merge(new_talent_buff, extra_data)
    elseif type(buff_data[1]) == "table" then
        new_talent_buff = {
            buffs = buff_data,
        }
        if new_talent_buff.buffs[1].name == nil then
            new_talent_buff.buffs[1].name = buff_name
        end
    end

    local original_buff = TalentBuffTemplates[hero_name][buff_name]
    local merged_buff = original_buff
    for i=1, #original_buff.buffs do
        if new_talent_buff.buffs[i] then
            merged_buff.buffs[i] = merge(original_buff.buffs[i], new_talent_buff.buffs[i])
        elseif original_buff[i] then
            merged_buff.buffs[i] = merge(original_buff.buffs[i], new_talent_buff.buffs)
        else
            merged_buff.buffs = merge(original_buff.buffs, new_talent_buff.buffs)
        end
    end

    TalentBuffTemplates[hero_name][buff_name] = merged_buff
    BuffTemplates[buff_name] = merged_buff
end
function mod.add_buff_template(self, buff_name, buff_data)   
    local new_talent_buff = {
        buffs = {
            merge({ name = buff_name }, buff_data),
        },
    }
    BuffTemplates[buff_name] = new_talent_buff
    local index = #NetworkLookup.buff_templates + 1
    NetworkLookup.buff_templates[index] = buff_name
    NetworkLookup.buff_templates[buff_name] = index
end
function mod.add_proc_function(self, name, func)
    ProcFunctions[name] = func
end
function mod.add_buff_function(self, name, func)
    BuffFunctionTemplates.functions[name] = func
end
function mod.modify_talent(self, career_name, tier, index, new_talent_data)
	local career_settings = CareerSettings[career_name]
    local hero_name = career_settings.profile_name
	local talent_tree_index = career_settings.talent_tree_index

	local old_talent_name = TalentTrees[hero_name][talent_tree_index][tier][index]
	local old_talent_id_lookup = TalentIDLookup[old_talent_name]
	local old_talent_id = old_talent_id_lookup.talent_id
	local old_talent_data = Talents[hero_name][old_talent_id]

    Talents[hero_name][old_talent_id] = merge(old_talent_data, new_talent_data)
end
function mod.add_buff(self, owner_unit, buff_name)
    if Managers.state.network ~= nil then
        local network_manager = Managers.state.network
        local network_transmit = network_manager.network_transmit

        local unit_object_id = network_manager:unit_game_object_id(owner_unit)
        local buff_template_name_id = NetworkLookup.buff_templates[buff_name]
        local is_server = Managers.player.is_server

        if is_server then
            local buff_extension = ScriptUnit.extension(owner_unit, "buff_system")

            buff_extension:add_buff(buff_name)
            network_transmit:send_rpc_clients("rpc_add_buff", unit_object_id, buff_template_name_id, unit_object_id, 0, false)
        else
            network_transmit:send_rpc_server("rpc_add_buff", unit_object_id, buff_template_name_id, unit_object_id, 0, true)
        end
    end
end
function mod.add_talent(self, career_name, tier, index, new_talent_name, new_talent_data)
    local career_settings = CareerSettings[career_name]
    local hero_name = career_settings.profile_name
    local talent_tree_index = career_settings.talent_tree_index

    local new_talent_index = #Talents[hero_name] + 1

    Talents[hero_name][new_talent_index] = merge({
        name = new_talent_name,
        description = new_talent_name .. "_desc",
        icon = "icons_placeholder",
        num_ranks = 1,
        buffer = "both",
        requirements = {},
        description_values = {},
        buffs = {},
        buff_data = {},
    }, new_talent_data)

    TalentTrees[hero_name][talent_tree_index][tier][index] = new_talent_name
    TalentIDLookup[new_talent_name] = {
        talent_id = new_talent_index,
        hero_name = hero_name
    }
end

--Fix clients getting too much ult recharge on explosions
mod:add_proc_function("reduce_activated_ability_cooldown", function (owner_unit, buff, params)
	if Unit.alive(owner_unit) then
		local attack_type = params[2]
		local target_number = params[4]
		local career_extension = ScriptUnit.extension(owner_unit, "career_system")

		if not attack_type or attack_type == "heavy_attack" or attack_type == "light_attack" then
			career_extension:reduce_activated_ability_cooldown(buff.bonus)
		elseif attack_type == "aoe" then
            return
		elseif target_number and target_number == 1 then
			career_extension:reduce_activated_ability_cooldown(buff.bonus)
		end
	end
end)

-- Weapon Functions

mod.add_chain_actions = function(action_no, action_from, new_data)
    local value = "allowed_chain_actions"
    local row = #action_no[action_from][value] + 1
    action_no[action_from][value][row] = new_data
end
