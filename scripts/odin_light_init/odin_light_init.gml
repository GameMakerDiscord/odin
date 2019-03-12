/// @desc Initiates the Odin lighting system

enum e_odin_light_state {
	sunrise,
	day,
	sunset,
	night
}

light_surf = noone;
overlay_surf = noone;
morning_color = undefined;
day_color = undefined;
dusk_color = undefined;
night_color = undefined;
current_sky_color = night_color;
light_state = e_odin_light_state.sunrise;
light_ticks = 0;
light_tick_max = undefined;