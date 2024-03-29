trainer_hs = Creature:new {
	customName = "Kenka Isoder - [Heightened Senses]",
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
	templates = {"object/mobile/dressed_dark_jedi_human_male_01.iff"},
	conversationTemplate = "trainer_heightenedsenses_convotemplate",
	optionsBitmask = 264
}
CreatureTemplates:addCreatureTemplate(trainer_hs,"trainer_hs")
