/// @desc Initiates the Odin textbox system

enum e_odin_textbox_config {
	sprite,
	x,
	y,
	font,
	text_color,
	delays,
	interval,
	use_odin_actions,
	binding
}

textbox_config = ds_map_create();
textbox_config[? e_odin_textbox_config.sprite] = undefined;
textbox_config[? e_odin_textbox_config.x] = 0;
textbox_config[? e_odin_textbox_config.y] = 0;
textbox_config[? e_odin_textbox_config.font] = undefined;
textbox_config[? e_odin_textbox_config.text_color] = c_white;
textbox_config[? e_odin_textbox_config.delays] = true;
textbox_config[? e_odin_textbox_config.interval] = 1;
textbox_config[? e_odin_textbox_config.use_odin_actions] = false;
textbox_config[? e_odin_textbox_config.binding] = vk_nokey;