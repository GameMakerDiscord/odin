/// @desc Adds an item (of an optional quantity) to the players database
/// @arg item_name
/// @arg [count]

// Fetch the item
var _item = obj_odin.inventory_master_map[? argument[0]];

// Validate item
if (_item == undefined) {
	show_error("Item not found!", false);
	exit;
}

// Add item
var _count = (argument_count > 1) ? argument[1] : 1;
repeat (_count) {
	ds_list_add(obj_odin.inventory_player_list, _item);
}

// Create toast
odin_toast_create("Item Added: " + _item[? "name"]);