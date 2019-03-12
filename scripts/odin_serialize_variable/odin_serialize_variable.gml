/// @desc Adds a variable to the Odin database, instructing it to be included in save files
/// @arg string_variable_name
/// @arg type
/// Example: odin_serialize_variable("x", e_odin_datatype.variable)

// Define variables
var _var_name = argument0;
var _type = argument1;
var _obj_name = object_get_name(object_index);
var _master_map = obj_odin.save_data_map;
var _map = _master_map[? _obj_name];

// Check if list already exists / serialize data
if (_map != undefined) {
	_map[? _var_name] = _type;
} else {
	_map = ds_map_create();
	_map[? _var_name] = _type;
	ds_map_add_map(_master_map, _obj_name, _map);
}
