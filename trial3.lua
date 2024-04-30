function removePlayerFromParty(playerId)
    -- remove membername as a variable. if you can get the player object with either, it would be better to use the playerID, since it would idealy never change

    player = Player(playerId)
    local party = player:getParty()
    
    -- looping through party seems unnessecary if all that's happening is removing a single player from the party. instead, remove them directly
    party:removeMember(player)
end