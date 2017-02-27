spawn_custom_imp_recruiters = ScreenPlay:new {
	numberOfActs = 1,
}

--True here tells the server to load this screenplay at server load. False tells it to wait until explicitly started.
registerScreenPlay("spawn_custom_imp_recruiters", true)

--This gets executed automatically when the screenplay is started
function spawn_custom_imp_recruiters:start()
   local pImpies = spawnMobile("lok", "imperial_recruiter", 1,-215, 12, 3720, -1, 0)
end

--Put all the initial spawning of mobiles in a nice method like this.
function spawn_custom_imp_recruiters:spawnMobiles()
    --Spawn Custom
	spawnMobile("lok", "imperial_recruiter", 1,-215.6, 12.7, 3720.9,-1, 0)
   -- spawnMobile("lok", "imperial_recruiter", 1,-215.6, 12.7, 3720.9,-1, 0)
end
