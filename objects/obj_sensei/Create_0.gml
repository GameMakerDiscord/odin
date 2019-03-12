/// @desc Set Up Dialogue

// Inherit the parent event
event_inherited();

enum e_sensei {
	greeting,
	annoyed,
	return_to_sensei,
	waiting_to_kill
}

odin_npc_create(spr_sensei_head, e_sensei.greeting);

odin_npc_dialogue_set(
	e_sensei.greeting,
	[ "Greetings, young one!",
		"I am here to demonstrate how textboxes work.",
		"I also am here to show you how quests work!",
		"When we finish this conversation, a quest will start.",
		"This quest will show you around this world.",
		"Best of luck, and enjoy!"
	],
	e_odin_dialogue_end_behavior.progress,
	quest_intro,
	"start"
);
odin_npc_dialogue_set(
	e_sensei.annoyed,
	[ "Why are you still talking to me?" ],
	e_odin_dialogue_end_behavior.freeze
);
odin_npc_dialogue_set(
	e_sensei.return_to_sensei,
	[ "Ah, I see you have gotten the axe!",
		"Good... very good!",
		"Now, you will kill an innocent creature!",
		"...what?",
		"Were you expecting some elaborate, carefully crafted story?",
		"I'm here to showcase a framework to you, not provide meaningful art.",
		"Go! Kill stuff!",
	],
	e_odin_dialogue_end_behavior.progress,
	quest_intro,
	"kill_time"
);
odin_npc_dialogue_set(
	e_sensei.waiting_to_kill,
	[ "For the love of God... please go kill something.",
		"Don't think about it, just kill!",
		"The battle system needs to be shown off somehow.",
		"Now leave, before I have to break the fourth wall even further."
	],
	e_odin_dialogue_end_behavior.freeze
);
