/// @desc Initiates the entire Odin framework
/// @arg world_height
/// @arg window_height
/// @arg toast_sprite
/// @arg font
/// @arg text_color

// Display and Camera
odin_display_init(argument0);
odin_display_set_resolution(argument1);
odin_camera_init();

// Toast Notifications
odin_toast_init(argument2);

// General Variables
font = argument3;
text_color = argument4;
interactions_enabled = true;
interactions_enable_timer = -1;

// Input
odin_input_init();

// Textbox
odin_textbox_init();

// Save / Load
odin_save_init();

// Inventory
odin_inventory_init();

// Quests
odin_quest_init();

// NPCs
odin_npc_init();

// Lighting
odin_light_init();

