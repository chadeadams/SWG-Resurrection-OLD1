spawn_custom_reb_recruiters = ScreenPlay:new {
	numberOfActs = 1,
}

--True here tells the server to load this screenplay at server load. False tells it to wait until explicitly started.
registerScreenPlay("spawn_custom_reb_recruiters", true)

--This gets executed automatically when the screenplay is started
function spawn_custom_reb_recruiters:start()

end

--Put all the initial spawning of mobiles in a nice method like this.
function spawn_custom_reb_recruiters:spawnMobiles()
    --Spawn Custom
	spawnMobile("corellia", "rebel_recruiter", 1,-116.9, 26.4, -5589.9,-1, 0)
   
end
