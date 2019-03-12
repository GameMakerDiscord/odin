/// @desc Speaker Updates

if (speaking) {
	
	// Face player
	image_xscale = (par_player.x > x) ? 1 : -1;
	
	// Break if distance is too large
	if (distance_to_object(par_player) > 40) {
		
		// Override end behavior
		my_textbox.end_behavior = e_odin_dialogue_end_behavior.freeze;
		my_textbox.quest = undefined;
		my_textbox.event_key = undefined;
		
		// End it
		odin_npc_dialogue_end(my_textbox);
	}
}