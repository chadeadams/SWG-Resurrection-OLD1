SithTrainerScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "SithTrainerScreenPlay"
}

registerScreenPlay("SithTrainerScreenPlay", true)

function SithTrainerScreenPlay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles()
		--self:spawnSceneObjects()
	end
end

function SithTrainerScreenPlay:spawnSceneObjects()

end

function SithTrainerScreenPlay:spawnMobiles()

	--Jedi Trainers / Will Spawn at the Sith Exar Kun Temple Outside.
	
	spawnMobile("yavin4","trainer_sith_ls",0, 5073,73,5514,-1,0)
	spawnMobile("yavin4","trainer_sith_me",0, 5061,73,5514,-1,0)
	spawnMobile("yavin4","trainer_sith_md",0, 5043,73,5514,-1,0)
	spawnMobile("yavin4","trainer_sith_mh",0, 5026,73,5514,-1,0)
	spawnMobile("yavin4","trainer_sith_mp",0, 5011,73,5514,-1,0)
	spawnMobile("yavin4","trainer_sith_cm",0, 5062,73,5562,-1,0)
	spawnMobile("yavin4","trainer_sith_cp",0, 5044,73,5562,-1,0)
	spawnMobile("yavin4","trainer_sith_er",0, 5026,73,5562,-1,0)
	spawnMobile("yavin4","trainer_sith_hs",0, 5012,73,5562,-1,0)
	
	--Spawn the Jedi Vendor
    -- (in progress)
	
	

end
