/// @desc Calls an event in the given quest
/// @arg quest
/// @arg event


// Grab arguments
var _quest_obj = argument0;
var _event = argument1;

// Check the quest
if !(ds_map_exists(obj_odin.quest_master_map, _quest_obj)) {
	show_error("Quest does not exist! Ensure that you have set it up with odin_quest_add.", false);
	exit;
}
	
// Determine if we are calling a default event
if (_event == "start") {
	
	// Call the quest
	with (instance_create_depth(0, 0, 0, _quest_obj)) {
		current_event = "start";
		event_user(0);
		instance_destroy();
	}
	
	// Add the quest to the active list
	var _quest = ds_map_create();
	ds_map_copy(_quest, obj_odin.quest_master_map[? _quest_obj]);
	_quest[? "current_event"] = "start";
	obj_odin.quest_player_map[? argument0] = _quest;

	// Create a toast
	odin_toast_create("Quest Started: " + _quest[? "name"]);
	
} else if (_event == "end") {
	
	// Call the quest
	with (instance_create_depth(0, 0, 0, _quest_obj)) {
		current_event = "end";
		event_user(2);
		instance_destroy();
	}
	
	// End the quest
	var _quest = obj_odin.quest_player_map[? _quest_obj];
	_quest[? "current_event"] = "end";

	// Create a toast
	odin_toast_create("Quest Completed: " + _quest[? "name"]);
	
} else {
	
	// Call the quest
	with (instance_create_depth(0, 0, 0, _quest_obj)) {
		current_event = _event;
		event_user(1);
		instance_destroy();
	}
	
	// End the quest
	var _quest = obj_odin.quest_player_map[? _quest_obj];
	_quest[? "current_event"] = _event;

	// Create a toast
	odin_toast_create("Quest Updated: " + _quest[? "name"]);
}