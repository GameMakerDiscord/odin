/// @desc Draws the current toast notifications

// Gather variables
var _toast_height = sprite_get_height(toast_sprite);
var _toast_width = sprite_get_width(toast_sprite);
var _toast_x = display_get_gui_width() - sprite_get_width(toast_sprite);

// Loop through toasts
var i = 0;
repeat (ds_list_size(toast_list)) {
	
	// Grab this toast
	var _this_toast = toast_list[| i];
	
	// Set alpha
	draw_set_alpha(_this_toast[? "alpha"]);
	
	// Draw this toast
	draw_sprite(toast_sprite, 0, _toast_x, _this_toast[? "y"]);
	
	// Draw this toast's text
	draw_set_color(obj_odin.text_color);
	draw_set_font(obj_odin.font);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text_ext(
		_toast_x + (_toast_width / 2),
		_this_toast[? "y"] + (_toast_height / 2),
		_this_toast[? "text"],
		8, 
		_toast_width
	);
	
	// Reset our alpha
	draw_set_alpha(1);
	
	// Iterate
	++i;
}