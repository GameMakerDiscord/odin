/// @desc Creates an item for the Odin inventory database
/// @arg name
/// @arg prop_name
/// @arg prop_value...
/// Example: odin_inventory_create_item("sword", "damage", 5, "value", 10);

// Make sure arguments are valid
if (argument_count mod 2 == 0) {
	show_error("Incorrect number of arguments!", false);
	exit;
}

// Create map
var _item = ds_map_create();
_item[? "name"] = argument[0];
var i = 1;
repeat ((argument_count - 1) / 2) {
	var _key = argument[i++];
	var _value = argument[i++];
	if (_key == "name") {
		show_error("Property 'name' is reserved and automatically set by Odin!", false);
		exit;
	}
	_item[? _key] = _value;
}

// Add to global dictionary
ds_map_add(obj_odin.inventory_master_map, argument[0], _item);