function showNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end
    
AddEventHandler('playerSpawned', function(spawn)
	showNotification('Welcome!')
	showNotification('ENJOY :)')
end)