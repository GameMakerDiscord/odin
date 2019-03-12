/// @desc Adds a quest (object) to the Odin quest database
/// @arg quest_obj
/// @arg quest_name

var _new_quest = ds_map_create();
_new_quest[? "id"] = argument0;
_new_quest[? "name"] = argument1;
_new_quest[? "current_event"] = undefined;
obj_odin.quest_master_map[? argument0] = _new_quest;