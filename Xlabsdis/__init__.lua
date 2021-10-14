
function dis()
game:executecommand("say X-Labs Discord: ^5discord.gg/nrtpJCh ")
end


local onPlayerSay = function (player, msg)
    msg = string.lower(msg);

	if msg == "!xlabs" or msg == "!xdis" then
		dis();
    end
	
end

local onPlayerConnected = function (player)
	local saylistener = player:onnotify("say", function(msg) onPlayerSay(player, msg) end);
        
end


level:onnotify("connected", onPlayerConnected);
