local ObjectManager = require("managers.object.object_manager")
local QuestManager = require("managers.quest.quest_manager")

GiveNoviceJedi = ScreenPlay:new {
numberOfActs = 1,

}

function GiveNoviceJedi:start(pPlayer)
	--Set Jedi State and award Novice Beginner Jedi
        --Award Jedi Initate - then send them to a shine to continue Jedi Training
        --Added 1-3-17 by Nugax
        --Custom Jedi Progression
        local pGhost = CreatureObject(pPlayer):getPlayerObject()
        PlayerObject(pGhost):setJediState(1)
        awardSkill(pPlayer, "force_title_jedi_rank_01")

        --Send System Message to player to find a Shrine
        CreatureObject(pPlayer):sendSystemMessage("@quest/force_sensitive/intro:find_shrine")

end

