/// @desc

// Inherit the parent event
event_inherited();

enum e_cora {
	not_met,
	greeting,
	return_to_sensei
}

odin_npc_create(spr_cora_head, e_cora.not_met);
odin_npc_dialogue_set(
	e_cora.not_met,
	[ "I have nothing to say to you.",
		"...yet!",
		"Come back after you've talked to Sensei!"
	],
	e_odin_dialogue_end_behavior.freeze
);
odin_npc_dialogue_set(
	e_cora.greeting,
	[ "Ah! Hello there, friend!",
		"I see you have managed to find me, the first step of your quest.",
		"Wow! You must be really, really smart!",
		"Anyway, I'm going to be giving you an item.",
		"An axe, to be more specific!",
		"Just uh...",
		"Don't use it on me, okay?"
	],
	e_odin_dialogue_end_behavior.progress,
	quest_intro,
	"return_to_sensei"
);
odin_npc_dialogue_set(
	e_cora.return_to_sensei,
	[ "...",
		"What, did you think you'd actually be able to fight me?",
		"Yeah, I don't think you want to do that.",
		"Run along now!"
	],
	e_odin_dialogue_end_behavior.freeze
);