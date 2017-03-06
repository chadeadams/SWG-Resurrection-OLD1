--Will spawn and hold conversation piece for new player greeter and helper
--Added 2/27/2017
--=======================================
--Authors
--Nugax (nugax@swgresurrection.com


NewPlayerHelper = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "NewPlayerHelper"
}

registerScreenPlay("NewPlayerHelper", true)

function NewPlayerHelper:start()
	  self:spawnMobiles()
end

function NewPlayerHelper:spawnSceneObjects()

end

function NewPlayerHelper:spawnMobiles()

	--Spawn New Player Helper Droids

    --Cornet Starport	
	spawnMobile("corellia","new_player_helper",0,-144,28,-4723,-1,0)

end
	
