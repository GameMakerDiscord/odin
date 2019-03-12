/// @desc Adds a set of lines to this object's dialogue lines. Optionally adds a quest event to trigger upon completion
/// @arg state
/// @arg line_array
/// @arg end_behavior
/// @arg [quest]
/// @arg [event]

// Create a new entry to the dialogue list
var _new_entry = ds_map_create();
_new_entry[? "lines"] = argument[1];
_new_entry[? "end_behavior"] = argument[2];
if (argument_count > 3) {
	_new_entry[? "quest"] = argument[3];
	_new_entry[? "event_key"] = argument[4];
} else {
	_new_entry[? "quest"] = undefined;
	_new_entry[? "event_key"] = undefined;
}
dialogue_list[| argument[0]] = _new_entry;
