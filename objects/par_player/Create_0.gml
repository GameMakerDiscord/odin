/// @desc Init FSM

enum e_player_main {
	idle,
	run
}

enum e_player_run {
	run,
	sprint
}

// Init finite state machine
odin_fsm_init();