/// @desc Checks for nearby interactable objects, and checks for input to interact with them

// Check if interaction is valid
if !(obj_odin.interactions_enabled) exit;

// Gather input data
var _use_actions = obj_odin.textbox_config[? e_odin_textbox_config.use_odin_actions];
var _binding = obj_odin.textbox_config[? e_odin_textbox_config.binding];
var _input = (_use_actions) ?  odin_input_check(_binding) : 
	(keyboard_check_pressed(_binding)
	|| mouse_check_button_pressed(_binding)
	|| gamepad_button_check(0, _binding));
	
// Check for an interaction with an object in range
if (_input && distance_to_object(par_interactable) < 25) {
	var _inst = instance_nearest(x, y, par_interactable);
	if (object_is_ancestor(_inst.object_index, par_speaker)) {
		odin_npc_dialogue_start(_inst);
		odin_disable_interactions();	
	}
}