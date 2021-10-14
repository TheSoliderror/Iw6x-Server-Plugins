

function grind()
game:executecommand("g_gametype grind")
game:executecommand("say Set to ^5GRIND ^7next round! ")
end

function crackgame()
game:executecommand("g_gametype cranked")
game:executecommand("say Set to ^5CRANKED ^7next round! ")
end



local onPlayerSay = function (player, msg)
    msg = string.lower(msg);

	if msg == "!grind" or msg == "!gd" then
		grind();
    end
	
	if msg == "!crack" or msg == "!ck" or msg == "!cranked" then
		crackgame();
    end
	
	
end

local onPlayerConnected = function (player)
	local saylistener = player:onnotify("say", function(msg) onPlayerSay(player, msg) end);
        
end


level:onnotify("connected", onPlayerConnected);
