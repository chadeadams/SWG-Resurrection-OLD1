local ObjectManager = require("managers.object.object_manager")
local QuestManager = require("managers.quest.quest_manager")

GiveNoviceJedi = ScreenPlay:new {
numberOfActs = 1,

}

function GiveNoviceJedi:start(pCreatureObject)
	--Set Jedi State and award Novice Beginner Jedi
        --Award Jedi Initate - then send them to a shine to continue Jedi Training
        --Added 1-3-17 by Nugax
        --Custom Jedi Progression
        if (pCreatureObject == nil) then
		    return
	    end

	QuestManager.activateQuest(pCreatureObject, QuestManager.quests.FS_VILLAGE_ELDER)
	CreatureObject(pCreatureObject):sendSystemMessage("@quest/force_sensitive/intro:force_sensitive")
	
	ObjectManager.withCreaturePlayerObject(pCreatureObject, function(playerObject)
		if (not playerObject:isJedi()) then
			playerObject:setJediState(2)
		end
	end)

	awardSkill(pCreatureObject, "force_title_jedi_novice")
	awardSkill(pCreatureObject, "force_title_jedi_rank_01")

    --Send System Message to player to find a Shrine
   -- CreatureObject(pCreatureObject):sendSystemMessage("@quest/force_sensitive/intro:find_shrine")
      CreatureObject(pCreatureObject):sendSystemMessage("You have received Jedi Padawan! It is now time to decide which path you will take. Light or Dark. Seek out your trainer using findmytrainer or visit the Temple of Exar Kun to train with existing Force Masters in the ways of the Force. May the force be with you!")
  

end

