/// @desc Lighting

// Target light surface
if !(surface_exists(light_surf)) light_surf = surface_create(cam_w, cam_h);
surface_set_target(light_surf);

// Clear the surface
draw_clear_alpha(0, 1);

// Set GPU settings
gpu_set_colorwriteenable(true, true, true, false);
gpu_set_blendmode(bm_add);

// Draw all lights

// Reset GPU settings
gpu_set_colorwriteenable(true, true, true, true);
gpu_set_blendmode(bm_normal);

// Reset surface
surface_reset_target();

// Target overlay
if !(surface_exists(overlay_surf)) overlay_surf = surface_create(cam_w, cam_h);
surface_set_target(overlay_surf);

// Clear the surface
draw_clear_alpha(current_sky_color, 1);

// Draw our lights
gpu_set_blendmode(bm_add);
draw_surface(light_surf, 0, 0);
gpu_set_blendmode(bm_normal);

// Reset surface
surface_reset_target();

// Draw overlay
gpu_set_blendmode_ext(bm_dest_color, bm_zero);
draw_surface(overlay_surf, cam_x, cam_y);
gpu_set_blendmode(bm_normal);