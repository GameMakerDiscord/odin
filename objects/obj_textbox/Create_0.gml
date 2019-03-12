/// @desc Initilize Basic Values

enum e_odin_textbox_input_mode {
	key,
	action
}

// Data variables
textbox_sprite = obj_odin.textbox_config[? e_odin_textbox_config.sprite];
x = obj_odin.textbox_config[? e_odin_textbox_config.x];
y = obj_odin.textbox_config[? e_odin_textbox_config.y];
delays = obj_odin.textbox_config[? e_odin_textbox_config.delays];
interval = obj_odin.textbox_config[? e_odin_textbox_config.interval];

// Specified variables
my_speaker = undefined;
portrait = undefined;
line_map = undefined;
line_array = undefined;
end_behavior = undefined;
quest = undefined;
event_key = undefined;
current_index = -1;
current_string = "";
current_line = "";
input_string = "";
ticks = 0;
sleep_ticks = 0;