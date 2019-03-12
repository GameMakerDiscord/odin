/// @desc Configures the Odin lighting system
/// @arg morning_overlay_color
/// @arg day_overlay_color
/// @arg dusk_overlay_color
/// @arg night_overlay_color
/// @arg seconds_interval - The the amount of time, in seconds, each time state lasts

morning_color = argument0;
day_color = argument1;
dusk_color = argument2;
night_color = argument3;
light_tick_max = argument4 * room_speed;