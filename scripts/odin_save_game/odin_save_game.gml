/// @desc Saves the game to the given filename based on data serialized with odin_serialize_variable
/// @arg filename

// Gather data
var _data_map = obj_odin.save_data_map;
var _output_map = ds_map_create();
var _obj_key = ds_map_find_first(_data_map);

// Loop through master map
while (_obj_key != undefined) {
	
	// Fetch object specific map
	var _obj_map = _data_map[? _obj_key];
	
	// Check if there is an instance present
	var _obj = asset_get_index(_obj_key);
	
	// Create list for each instance
	var _inst_list = ds_list_create();
	
	// Loop through all instances
	with (_obj) {
		
		// Create a list for this instance's variables
		var _var_list = ds_list_create();
		
		// Loop through all serialized properties
		var _var_key = ds_map_find_first(_obj_map);
		while (_var_key != undefined) {
			
			// Create a map for this property
			var _property_map = ds_map_create();
			var _value = variable_instance_get(id, _var_key);
			
			// Ensure the variable exists
			if (_value == undefined) {
				show_error("Requested value to serialize does not exist!", true);
			}
			
			// Record variable data
			switch (_obj_map[? _var_key]) {
				case e_odin_datatype.variable:
					_property_map[? "type"] = "variable";
					_property_map[? "name"] = _var_key;
					_property_map[? "value"] = variable_instance_get(id, _var_key);
					ds_list_add_map(_var_list, _property_map);
					break;
				case e_odin_datatype.list:
					_property_map[? "type"] = "list";
					_property_map[? "name"] = _var_key;
					ds_map_add_list(_property_map, "value", variable_instance_get(id, _var_key));
					ds_list_add_map(_var_list,_property_map);
					break;
				case e_odin_datatype.map:
					_property_map[? "type"] = "map";
					_property_map[? "name"] = _var_key;
					ds_map_add_map(_property_map, "value", variable_instance_get(id, _var_key));
					ds_list_add_map(_var_list, _property_map);
					break;
			}
			_var_key = ds_map_find_next(_obj_map, _var_key);
		}
		ds_list_add_list(_inst_list, _var_list);
	}
	ds_map_add_list(_output_map, _obj_key, _inst_list);
	_obj_key = ds_map_find_next(_data_map, _obj_key);
}

// Save file
var _str = json_encode(_output_map);
_str = json_minify(_str);
_str = json_beautify(_str);
var _buff = buffer_create(string_byte_length(_str), buffer_fixed, 1);
buffer_write(_buff, buffer_text, _str);
buffer_save(_buff, argument0);
buffer_delete(_buff);