

function safe()
game:executecommand("g_gametype horde")
game:executecommand("say Set to ^5SAFEGUARD ^7for next round!")
end

function drop()
game:executecommand("g_gametype grnd")
game:executecommand("say Set to ^5DROP ZONE ^7for next round!")
end

function hunt()
game:executecommand("g_gametype sotf_ffa")
game:executecommand("say Set to ^5HUNTED ^7for next round!")
end


local onPlayerSay = function (player, msg)
    msg = string.lower(msg);

	if msg == "!safeguard" or msg == "!safe" then
		safe();
    end
	
	if msg == "!drop" or msg == "!dropzone" then
		drop();
    end
	
	if msg == "!hunted" or msg == "!hunt" then
		hunt();
    end
	
end

local onPlayerConnected = function (player)
	local saylistener = player:onnotify("say", function(msg) onPlayerSay(player, msg) end);
        
end


level:onnotify("connected", onPlayerConnected);
