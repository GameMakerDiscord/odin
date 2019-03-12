/// @desc Disables interactions with interactable objects (such as NPCs). Allows setting a timer to re-enable
/// @arg [seconds]

obj_odin.interactions_enabled = false;
if (argument_count > 0) {
	obj_odin.interactions_enable_timer = argument[0] * 60;
}