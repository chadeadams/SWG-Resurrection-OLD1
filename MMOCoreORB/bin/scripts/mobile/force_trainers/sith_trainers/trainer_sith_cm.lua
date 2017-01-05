trainer_cm = Creature:new {
	customName = "Jobee Resuren - [Crafting Mastery]",
 	faction = "",
	level = 100,
	chanceHit = 0.390000,
	damageMin = 290,
	damageMax = 300,
	baseXp = 2914,
	baseHAM = 8400,
	baseHAMmax = 10200,
	armor = 0,
	resists = {-1,-1,-1,-1,-1,-1,-1,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	diet = HERBIVORE,
	templates = {"object/mobile/dressed_sith_shadow_hum_f_01.iff"},
	conversationTemplate = "trainer_craftingmastery_convotemplate",
	optionsBitmask = 264
}
CreatureTemplates:addCreatureTemplate(trainer_cm,"trainer_cm")
