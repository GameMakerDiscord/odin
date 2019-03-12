/// @desc Updates the current toast notifications

// Gather variables
var _toast_height = sprite_get_height(toast_sprite);

// Loop through toasts
var _size = ds_list_size(toast_list);
for (var i = 0; i < _size; i++)  {
	
	// Grab this toast
	var _this_toast = toast_list[| i];
	
	// Move this toast
	var _y_target = i * _toast_height;
	_this_toast[? "y"] = lerp(_this_toast[? "y"], _y_target, 0.25);
	
	// Tick down this toast
	_this_toast[? "timer"]--;
	
	// Handle this toast's exit
	if (_this_toast[? "timer"] <= 0) {
		_this_toast[? "alpha"] -= 0.05;
		if (_this_toast[? "alpha"] < 0.1) {
			
			// Destroy this toast
			ds_list_delete(toast_list, i);
			ds_map_destroy(_this_toast);
			
			// Adjust our iteration
			--i;
			--_size;
		}
	}
}