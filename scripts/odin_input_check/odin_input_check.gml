/// @desc Returns true if the given action is held
/// @arg _name

var _name = argument[0];
var _bindings = global.input_map[? _name];
if (_bindings == undefined) {
	show_error("Specified action does not exist!", false);
	return;
} else {
	var i = 0;
	repeat (ds_list_size(_bindings)) {
		var _binding = _bindings[| i++];
		if (gamepad_button_check(0, _binding)) return true;
		if (keyboard_check(_binding) || mouse_check_button(_binding)) return true;
	}
}
	