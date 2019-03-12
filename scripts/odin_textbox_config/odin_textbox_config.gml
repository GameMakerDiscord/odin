/// @desc Configures the settings for the Odin textbox system
/// @arg sprite - the sprite of the texbox
/// @arg draw_x - the x coordinate to draw the textbox
/// @arg draw_y - the y coordinate to draw the textbox
/// @arg interval - the number of steps between each character being drawn
/// @arg delays - whether or not things like spaces, commas, and elipses should give small delays in the typewriter effect
/// @arg use_odin_actions - true to use an Odin action for interaction, false to use a normal key
/// @arg interval - the number of steps between each character being drawn

textbox_config[? e_odin_textbox_config.sprite] = argument0;
textbox_config[? e_odin_textbox_config.x] = argument1;
textbox_config[? e_odin_textbox_config.y] = argument2;
textbox_config[? e_odin_textbox_config.interval] = argument3;
textbox_config[? e_odin_textbox_config.delays] = argument4;
textbox_config[? e_odin_textbox_config.use_odin_actions] = argument5;
textbox_config[? e_odin_textbox_config.binding] = argument6;