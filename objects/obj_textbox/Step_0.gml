/// @desc Process Text

// Check for sleep
if (sleep_ticks > 0) {
	sleep_ticks--;
	exit;
}

// Check if a character should be added
if (ticks >= interval) && (sleep_ticks == 0) && (input_string != "") {
	ticks = 0;
	var _new_char = string_char_at(input_string, 1);
		
	// Inspect character
	if (_new_char == " ") {
			
		// Check if there's room for the next word
		var _next_space_pos = string_pos(" ", string_delete(input_string, 1, 1));
		
		// Plan B if there is no spaces left
		if (_next_space_pos == 0) _next_space_pos = string_length(input_string);
		
		// Calculate measurments
		var _current_width = string_width(current_line);
		var _preview_width = string_width(string_copy(input_string, 1, _next_space_pos));
		if (_current_width + _preview_width > 143) {
			current_line = "";
			_new_char = "\n";
		}
			
		// Sleep on space
		sleep_ticks = round(interval / 3);
			
	} else if (_new_char == "," || _new_char == "." || _new_char == "?" || _new_char == "!") {
		sleep_ticks = interval * 8;
	}
	
	// Add new character
	current_string += _new_char;
	current_line += _new_char;
	input_string = string_delete(input_string, 1, 1);
	audio_sound_gain(audio_play_sound(snd_blip, 0, 0), 0.3, 0);
}
ticks++;

// Gather input data
var _use_actions = obj_odin.textbox_config[? e_odin_textbox_config.use_odin_actions];
var _binding = obj_odin.textbox_config[? e_odin_textbox_config.binding];
var _input = (_use_actions) ?  odin_input_check_pressed(_binding) : 
	(keyboard_check_pressed(_binding)
	|| mouse_check_button_pressed(_binding)
	|| gamepad_button_check_pressed(0, _binding));
	
// Finish text scroll or proceed to next line
if (_input) {
	if (input_string != "") {
		current_string += input_string;
		input_string = "";
		ticks = 0;
		sleep_ticks = 0;
	} else {
		event_user(0);
	}
}