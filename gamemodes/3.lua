

function infec()
game:executecommand("g_gametype infect")
game:executecommand("say Set to ^5INFECTED ^7for next round!")
game:executecommand ("scr_game_graceperiod 300")
end

function dom()
game:executecommand("g_gametype dom")
game:executecommand("say Set to ^5DOMINATION ^7for next round!")
end



local onPlayerSay = function (player, msg)
    msg = string.lower(msg);

	if msg == "!infect" or msg == "!if" then
		infec();
    end
	
	if msg == "!domination" or msg == "!dom" then
		dom();
    end
	
	
end

local onPlayerConnected = function (player)
	local saylistener = player:onnotify("say", function(msg) onPlayerSay(player, msg) end);
        
end


level:onnotify("connected", onPlayerConnected);
