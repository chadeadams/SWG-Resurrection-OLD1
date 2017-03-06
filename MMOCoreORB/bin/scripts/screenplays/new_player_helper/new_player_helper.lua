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

    --Corellia
    --Cornet StrP
	spawnMobile("corellia","new_player_helper",0,-144,28,-4723,-1,0)

    --Naboo
    --Theed Starport
    spawnMobile("naboo","new_player_helper",0,-4858,6,4163,-1,0)

    --Tatooine
    --Mos Eisley
    spawnMobile("tatooine","new_player_helper",0,-3532,5,-4803,-1,0)
    --Bestine
    spawnMobile("tatooine","new_player_helper",0,-1282,12,-3591,-1,0)
    -- Mos Espa
    spawnMobile("tatooine","new_player_helper",0,-2901,5,2131,-1,0)

end


--Added Convo Hander

new_player_helper_convo_handler = Object:new {
	tstring = "myconversation"
 }

function new_player_helper_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
-- Assign the player to variable creature for use inside this function.
	local creature = LuaCreatureObject(conversingPlayer)
	
	-- Get the last conversation to determine whetehr or not we're  on the first screen
	local convosession = creature:getConversationSession()
	lastConversation = nil
	local conversation = LuaConversationTemplate(conversationTemplate)
	local nextConversationScreen 
	
	-- If there is a conversation open, do stuff with it
	if ( conversation ~= nil ) then
		-- check to see if we have a next screen
		if ( convosession ~= nil ) then
			 local session = LuaConversationSession(convosession)
			 if ( session ~= nil ) then
			 	lastConversationScreen = session:getLastConversationScreen()
			 end
		end
		
		-- Last conversation was nil, so get the first screen
		if ( lastConversationScreen == nil ) then
			nextConversationScreen = conversation:getInitialScreen()
		else
		-- Start playing the rest of the conversation based on user input
			local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
			
			-- Set variable to track what option the player picked and get the option picked
			local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
			nextConversationScreen = conversation:getScreen(optionLink)
						
		end
	end
	-- end of the conversation logic.
	return nextConversationScreen
end
--*****************************************************************************************************************************************

function new_player_helper_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	-- Plays the screens of the conversation.
	return conversationScreen
end
