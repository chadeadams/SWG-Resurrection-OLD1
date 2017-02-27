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

	--Spawn Rebel Recruiters

    --Outside	
	--spawnMobile("corellia","imperial_recruiter",0,-211,28,-4735,-1,0)

	
