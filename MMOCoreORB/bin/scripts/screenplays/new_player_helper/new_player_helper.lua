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


--Added Convo Hander

conv_handler = Object:new {
tstring = "myconversation"
}

function new_player_helper_conv_handler:getNextConversationScreen(pConvTemplate, pPlayer, selectedOption, pNpc)
	local convsession = CreatureObject(pPlayer):getConversationSession()

	local lastConvScreen = nil

	if (convsession ~= nil) then
		local session = LuaConversationSession(convsession)
		lastConvScreen = session:getLastConversationScreen()
	end

	local conv = LuaConversationTemplate(pConvTemplate)

	local nextConvScreen

	if (lastConvScreen ~= nil) then
		local luaLastConvScreen = LuaConversationScreen(lastConvScreen)

		--Get the linked screen for the selected option.
		local optionLink = luaLastConvScreen:getOptionLink(selectedOption)

		nextConvScreen = conv:getScreen(optionLink)

		if nextConvScreen == nil then
			nextConvScreen = self:getInitialScreen(pPlayer, pNpc, pConvTemplate)
		end
	else
		nextConvScreen = self:getInitialScreen(pPlayer, pNpc, pConvTemplate)
	end

	return nextConvScreen
end

function conv_handler:getInitialScreen(pPlayer, pNpc, pConvTemplate)
	local convTemplate = LuaConversationTemplate(pConvTemplate)
	return convTemplate:getInitialScreen()
end

function new_player_helper_conv_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
	return pC
end

	
