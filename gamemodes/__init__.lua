game:executecommand("say gametypes Loaded")

function killcon()
game:executecommand("g_gametype conf")
game:executecommand("say Set to ^5 KILL CONFIRMED ^7for next round!")
end



function tdm()
game:executecommand("g_gametype war")
game:executecommand("say Set to ^5TDM ^7next round! ")
end



local onPlayerSay = function (player, msg)
    msg = string.lower(msg);

	if msg == "!killcon" or msg == "!kc" then
		killcon();
    end
	
	
	
	if msg == "!team deathmatch" or msg == "!tdm" then
		tdm();
    end
	
	
end

local onPlayerConnected = function (player)
	local saylistener = player:onnotify("say", function(msg) onPlayerSay(player, msg) end);
        
end


level:onnotify("connected", onPlayerConnected);

include("2")
include("3")
include("4")