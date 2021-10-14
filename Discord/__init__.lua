
function dis()
game:executecommand("say Solidserver Discord: ^5discord.gg/qaAeJQfph3 ")
end


local onPlayerSay = function (player, msg)
    msg = string.lower(msg);

	if msg == "!discord" or msg == "!dis" then
		dis();
    end
	
end

local onPlayerConnected = function (player)
	local saylistener = player:onnotify("say", function(msg) onPlayerSay(player, msg) end);
        
end


level:onnotify("connected", onPlayerConnected);
