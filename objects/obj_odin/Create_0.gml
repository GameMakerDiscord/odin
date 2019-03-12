/// @desc Odin Initilization

// Start the engine!
odin_init(180, 1080, spr_toast, fnt_pixel, $2e2232);

// Input mapping
odin_input_add("left", ord("A"), vk_left);
odin_input_add("right", ord("D"), vk_right);
odin_input_add("up", ord("W"), vk_up);
odin_input_add("down", ord("S"), vk_down);
odin_input_add("sprint", vk_shift, vk_control);
odin_input_add("interact", ord("E"), vk_enter);

// Textbox configure
odin_textbox_config(spr_textbox, 64, 128, 2, true, true, "interact");

// Lighting configure
odin_light_configure($5b80ff, c_white, $825bb2, $41222d, 60);

// Quests
odin_quest_create(quest_intro, "Introduction to Odin");

// Items
odin_inventory_create_item("Axe", "Damage", 20, "Value", 50);

// Move past init room
room_goto_next();