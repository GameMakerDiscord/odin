/// @desc Changes the bindings for an input action
/// @arg action_name
/// @arg binding(s)

var _name = argument[0];
if !(ds_map_exists(global.input_map, _name)) {
	show_error("Specified action does not exist!", false);
	return;
}
var _bindings = global.input_map[? _name];
ds_list_clear(_bindings);
var i = 1;
repeat (argument_count - 1) {
	ds_list_add(_bindings, argument[i++]);
}