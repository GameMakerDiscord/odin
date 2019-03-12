/// @desc System Updates

#region Camera

odin_camera_update();

#endregion

#region Toast Notifications

odin_toast_update();

#endregion

#region Interactions

if (interactions_enable_timer == 0) {
	interactions_enabled = true;
}
if (interactions_enable_timer >= 0) {
	interactions_enable_timer--;
}

#endregion

odin_light_time_update();

if (keyboard_check_pressed(vk_enter)) {
	odin_toast_create("Test");
}