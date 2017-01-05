--Will spawn force trainers at exar kun temple 

ForceTrainerScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "ForceTrainerScreenPlay"
}

registerScreenPlay("ForceTrainerScreenPlay", true)

function ForceTrainerScreenPlay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles()
		--self:spawnSceneObjects()
	end
end

function ForceTrainerScreenPlay:spawnSceneObjects()

end

function ForceTrainerScreenPlay:spawnMobiles()

	--Force Trainers / Will Spawn at the Sith Exar Kun Temple Outside.
	
	spawnMobile("yavin4","trainer_ls",0, 5073,73,5514,-1,0)
	spawnMobile("yavin4","trainer_me",0, 5061,73,5514,-1,0)
	spawnMobile("yavin4","trainer_md",0, 5043,73,5514,-1,0)
	spawnMobile("yavin4","trainer_mh",0, 5026,73,5514,-1,0)
	spawnMobile("yavin4","trainer_mp",0, 5011,73,5514,-1,0)
	spawnMobile("yavin4","trainer_cm",0, 5062,73,5562,-1,0)
	spawnMobile("yavin4","trainer_cp",0, 5044,73,5562,-1,0)
	spawnMobile("yavin4","trainer_er",0, 5026,73,5562,-1,0)
	spawnMobile("yavin4","trainer_hs",0, 5012,73,5562,-1,0)
	
	--Spawn the Jedi Vendor
    -- (in progress)
	
	

end
