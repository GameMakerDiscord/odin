/// @desc Initilizes the Odin save system

// Datatype map
enum e_odin_datatype {
	variable,
	list,
	map 
}

// Create main data map
save_data_map = ds_map_create();