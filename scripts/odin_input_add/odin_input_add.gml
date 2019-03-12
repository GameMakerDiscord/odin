/// @desc Adds an action to be checked
/// @arg action_name
/// @arg binding(s)

var _name = argument[0];
var _bindings = ds_list_create();
var i = 1;
repeat (argument_count - 1) {
	ds_list_add(_bindings, argument[i++]);
}
global.input_map[? _name] = _bindings;