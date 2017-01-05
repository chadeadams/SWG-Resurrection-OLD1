local ObjectManager = require("managers.object.object_manager")
local QuestManager = require("managers.quest.quest_manager")

GiveNoviceJedi = ScreenPlay:new {
numberOfActs = 1,

}

function GiveNoviceJedi:start(pCreatureObject,pPlayer)
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
    CreatureObject(pCreatureObject):sendSystemMessage("@quest/force_sensitive/intro:find_shrine")

end

