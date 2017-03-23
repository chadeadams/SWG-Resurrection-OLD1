JediTrainerScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "JediTrainerScreenPlay"
}

registerScreenPlay("JediTrainerScreenPlay", true)

function JediTrainerScreenPlay:start()
	if (isZoneEnabled("yavin4")) then
		--self:spawnMobiles()
		--self:spawnSceneObjects()
	end
end

function JediTrainerScreenPlay:spawnSceneObjects()

end

function JediTrainerScreenPlay:spawnMobiles()

	--Jedi Trainers / Will Spawn at the Ruined Jedi Temple.
		
	spawnMobile("yavin4","trainer_jedi_ls",0, 5073,73,5514,-1,0)
	spawnMobile("yavin4","trainer_jedi_me",0, 5061,73,5514,-1,0)
	spawnMobile("yavin4","trainer_jedi_md",0, 5043,73,5514,-1,0)
	spawnMobile("yavin4","trainer_jedi_mh",0, 5026,73,5514,-1,0)
	spawnMobile("yavin4","trainer_jedi_mp",0, 5011,73,5514,-1,0)
	spawnMobile("yavin4","trainer_jedi_cm",0, 5062,73,5562,-1,0)
	spawnMobile("yavin4","trainer_jedi_cp",0, 5044,73,5562,-1,0)
	spawnMobile("yavin4","trainer_jedi_er",0, 5026,73,5562,-1,0)
	spawnMobile("yavin4","trainer_jedi_hs",0, 5012,73,5562,-1,0)
	
	--Spawn the Jedi Vendor
	
	

end
