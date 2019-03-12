/// @desc Main Body
/// Override this event to add the individual quest events and their logic

switch (current_event) {
	case "return_to_sensei":
		odin_npc_set_state(obj_sensei, e_sensei.return_to_sensei);
		odin_inventory_add_item("Axe");
		break;
}