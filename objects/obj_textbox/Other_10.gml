/// @desc Load Next Line

current_string = "";
current_line = "";
current_index++;
if (current_index < array_length_1d(line_array)) {
	input_string = line_array[current_index];
} else {
	odin_npc_dialogue_end(id);
}