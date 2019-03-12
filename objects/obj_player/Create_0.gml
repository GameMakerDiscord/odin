/// @desc Init the FSM and set up object specific variables

// Inherit the parent event
event_inherited();

// Set camera
odin_camera_set_focus(id);

// Serialize variables, marking them to be included whenever you save the game
odin_serialize_variable("x", e_odin_datatype.variable);
odin_serialize_variable("y", e_odin_datatype.variable);