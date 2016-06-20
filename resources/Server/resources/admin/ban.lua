--Add the "ban" command handler
-- Example with the player
function banPlayerCommand ( theClient, commandName, bannedName, reason )
 
	-- Give the player a nice error if he doesn't have rights
	if ( hasObjectPermissionTo ( theClient, "function.banPlayer" ) ) then
		--Get player element from the name
		local bannedPlayer = getPlayerFromName ( bannedName )
 
		--Ban the player
		banPlayer ( bannedPlayer, theClient, reason )
		outputChatBox ( "Admin: " .. bannedName .. " has been successfully banned.", theClient )
 
	else
		outputChatBox ( "Admin: You don't have permission to use this command.", theClient )
	end
 
end
addCommandHandler ( "ban", banPlayerCommand )
 
-- Example function with the root element. Here you would pass a player element to the function.
function banCheater(theCheater)
	banPlayer(theCheater, getRootElement(), "You are banned from this server.")
end
