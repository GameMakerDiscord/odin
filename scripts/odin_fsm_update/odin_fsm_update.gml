switch (main_state) {
	case e_player_main.idle:
	
		// Idling
		if (odin_input_check("up")
		|| odin_input_check("down") 
		|| odin_input_check("right")
		|| odin_input_check("left")) {
			odin_set_state(e_player_main.run);
		}
		hspd = 0;
		vspd = 0;
		
		// Animation
		sprite_index = spr_boy_idle;
			
		break;
		
	case e_player_main.run:
	
		// Gather input
		var _x_mod = odin_input_check("right") - odin_input_check("left");
		var _y_mod = odin_input_check("down") - odin_input_check("up");
		
		// Return to idle if no input
		if (_x_mod == 0 && _y_mod == 0) {
			odin_set_state(e_player_main.idle);
			break;
		}
		
		// Run state
		var _spd, _lerp_spd;
		run_state = (odin_input_check("sprint") && stamina >= 10) ? e_player_run.sprint : e_player_run.run;
		if (run_state == e_player_run.run) {
			_spd = run_spd;
			_lerp_spd = 0.7;
			image_speed = 1;
		} else {
			_spd = sprint_spd;
			_lerp_spd = 0.3;
			image_speed = 1.2;
			stamina -= 0.75;
			if (stamina <= 0) {
				run_state = e_player_run.run;
			}
		}
		
		// Apply movement
		hspd = lerp(hspd, _x_mod * _spd, _lerp_spd);
		vspd = lerp(vspd, _y_mod * _spd, _lerp_spd);
		
		// Animation
		sprite_index = spr_boy_run;
		image_xscale = (_x_mod != 0) ? _x_mod : image_xscale;
		
		break;
}

// Stamina tick
stamina = clamp(stamina + 0.25, 0, stamina_max);