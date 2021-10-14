--this needs search n destroy, reinforce and gun game. 
function sd()
game:executecommand("g_gametype sd")
game:executecommand("say Set to ^5SEARCH AND DESTROY ^7for next round!")
end

function rein()
game:executecommand("g_gametype siege")
game:executecommand("say Set to ^5REINFORCE ^7for next round!")
end

function gungame()
game:executecommand("g_gametype gun")
game:executecommand("say Set to ^5GUN GAME ^7for next round!")
end


local onPlayerSay = function (player, msg)
    msg = string.lower(msg);

	if msg == "!search" or msg == "!search n destroy" or msg == "!search and destroy" or msg == "!sd" then
		sd();
    end
	
	if msg == "!reinforce" or msg == "!rein" then
		rein();
    end
	
	if msg == "!gun game" or msg == "!gg" or msg == "!gungame" then
		gungame();
    end
	
end

local onPlayerConnected = function (player)
	local saylistener = player:onnotify("say", function(msg) onPlayerSay(player, msg) end);
        
end


level:onnotify("connected", onPlayerConnected);
