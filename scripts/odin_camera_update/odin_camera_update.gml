/// @desc Updates the camera position and scaling

switch (cam_mode) {
	case e_camera_mode.inst:
		cam_x = lerp(cam_x, cam_target_inst.x - (cam_w div 2), 0.2);
		cam_y = lerp(cam_y, cam_target_inst.y - (cam_h div 2), 0.2);
	break;
	
	case e_camera_mode.point:
		cam_x = lerp(cam_x, cam_target_x, 0.2);
		cam_y = lerp(cam_y, cam_target_y, 0.2);
	break;
}
camera_set_view_size(view_camera[0], cam_w, cam_h);
var _round = cam_w / surface_get_width(application_surface);
camera_set_view_pos(view_camera[0], round_n(cam_x, _round), round_n(cam_y, _round));