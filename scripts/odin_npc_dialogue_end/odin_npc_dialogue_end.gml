/// @desc Ends the current dialogue being run by the given textbox instance
/// @arg textbox_inst

// Use textbox
with (argument0) {

	// Check for quest triggers
	if (quest != undefined) {
		odin_quest_call(quest, event_key);
	}
	
	// End behavior
	switch (end_behavior) {
		case e_odin_dialogue_end_behavior.progress:
			var _current_state = odin_npc_get_state(obj_sensei);
			if !(is_real(_current_state)) {
				show_error("Cannot use 'progress' on an NPC with non-real states!", false);
			} else {
				_current_state++;
				odin_npc_set_state(obj_sensei, _current_state);
			}
			break;
	}
	
	// Clean up NPC
	my_speaker.speaking = false;
	my_speaker.my_textbox = noone;
	
	// End textbox
	instance_destroy();
	odin_disable_interactions(0.5);
}