/// @desc Initiates the Odin Finite State Machine

// Basic variables
main_state = e_player_main.idle;
main_state_previous = main_state;
run_state = e_player_run.run;
run_spd = 1.5;
sprint_spd = 2.25;
stamina_max = 100;
stamina = stamina_max;
hspd = 0;
vspd = 0;