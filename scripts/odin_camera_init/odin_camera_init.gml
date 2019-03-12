/// @desc Initilizes the Odin camera system

// Camera mode enum
enum e_camera_mode {
	inst,
	point
}

// Camera variables
cam_x = 0;
cam_y = 0;
cam_h = global.world_height;
cam_w = round(cam_h * 1.777);
cam_mode = e_camera_mode.point;
cam_target_inst = noone;
cam_target_x = 0;
cam_target_y = 0;