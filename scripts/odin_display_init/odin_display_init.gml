/// @desc Initilizes the Odin display system, setting a world height (the height of your art's resolution)
/// @arg world_height

// Set world height
global.world_height = argument0;

// Resolution list
resolution_list = ds_list_create_filled(
	180,
	270,
	540,
	720,
	1080,
	1440,
	2160
);

// Display info
display_width = display_get_width();
display_height = display_get_height();