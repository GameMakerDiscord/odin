/// @desc Creates a textbox with the given data
/// @arg inst

// Grab inst
var _inst = argument0;

// Ensure a textbox does not already exist
instance_destroy(obj_textbox);

// Create textbox
with (instance_create_depth(0, 0, 0, obj_textbox)) {
	_inst.my_textbox = id;
	_inst.speaking = true;
	my_speaker = _inst;
	line_map = my_speaker.dialogue_list[| odin_npc_get_state(my_speaker.object_index)];
	line_array = line_map[? "lines"];
	end_behavior = line_map[? "end_behavior"];
	quest = line_map[? "quest"];
	event_key = line_map[? "event_key"];
	portrait = _inst.portrait;
	event_user(0);
}