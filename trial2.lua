function printSmallGuildNames(memberCount)
    -- this method is supposed to print names of all guilds that have less than memberCount max members
    local selectGuildQuery = "SELECT name FROM guilds WHERE max_members < %d;"

    -- resultId should become results, since it would return a list of names that fit the query
    local results = db.storeQuery(string.format(selectGuildQuery, memberCount))
    
    -- guild name becomes unnessecary, since it would be looking for a single name given by a single guild id
    -- instead, loop through the results to print all names that match the query

    -- first, check if query made any matches
    if #results == 0 then return end

    -- if results is larger than 0, loop through list
    for name in results do
        print(name)
    end
end