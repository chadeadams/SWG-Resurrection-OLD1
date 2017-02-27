--Will spawn custom placed Imperial Recruiters besides the static SWGEmu Ones
--Added 2/27/2017
--Nugax (nugax@swgresurrection.com


CustomImperialRecruiterScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "CustomImperialRecruiterScreenPlay"
}

registerScreenPlay("CustomImperialRecruiterScreenPlay", true)

function CustomImperialRecruiterScreenPlay:start()
	  self:spawnMobiles(
end

function CustomImperialRecruiterScreenPlay:spawnSceneObjects()

end

function CustomImperialRecruiterScreenPlay:spawnMobiles()

	--Spawn Imperial Recruiters

    --Outside	
	spawnMobile("corellia","imperial_recruiter",0,-211,28,-4735,-1,0)

	

end
