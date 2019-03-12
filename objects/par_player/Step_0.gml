/// @desc Update Player

// Update state machine
odin_fsm_update();

// Move and collide
odin_move_and_collide(hspd, vspd);

// Interact
odin_interact();