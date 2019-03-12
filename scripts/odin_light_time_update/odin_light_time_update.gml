/// @desc Progresses time for the day / night cycle in the Odin lighting system

if (light_ticks < light_tick_max) {
	light_ticks++;
} else {
	light_state = (light_state == e_odin_light_state.night) ? e_odin_light_state.sunrise : light_state + 1;
	light_ticks = 0;
}

var _source_color;
var _target_color;
switch (light_state) {
	case e_odin_light_state.sunrise:
		_source_color = night_color;
		_target_color = morning_color;
		break;
	case e_odin_light_state.day:
		_source_color = morning_color;
		_target_color = day_color;
		break;
	case e_odin_light_state.sunset:
		_source_color = day_color;
		_target_color = dusk_color;
		break;
	case e_odin_light_state.night:
		_source_color = dusk_color;
		_target_color = night_color;
		break;
}
current_sky_color = merge_color(_source_color, _target_color, light_ticks / light_tick_max);