--Action by Wallaby- baseado na Porta do postman by eu mesmo.. action que foi baseada na lvl door  
-- quando for por no mapa, em propriedades poe actionID 5019 e vai funfa =]

function onUse(cid, item, frompos, item2, topos)
	
	
	if item.itemid == 1223 then
  			queststatus = getPlayerStorageValue(cid,1234561)
 			queststatus2 = getPlayerStorageValue(cid,1234562)
 			queststatus3 = getPlayerStorageValue(cid,1234563)
 			queststatus4 = getPlayerStorageValue(cid,1234564)
 			queststatus5 = getPlayerStorageValue(cid,1234565)
 			queststatus6 = getPlayerStorageValue(cid,1234566)
 			queststatus7 = getPlayerStorageValue(cid,1234567)
  
  		if queststatus == -1 or queststatus2 == -1 or queststatus3 == -1 or queststatus4 == -1 or queststatus5 == -1 or queststatus6 == -1 or queststatus7 == -1 then
  doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'Sorry, but you did not absorb enough energy!')
else
 pos = getPlayerPosition(cid)	
			if pos.x == topos.x then
				if pos.y < topos.y then
					pos.y = topos.y + 1
				else
					pos.y = topos.y - 1
				end
			elseif pos.y == topos.y then
				if pos.x < topos.x then
					pos.x = topos.x + 1
				else
					pos.x = topos.x - 1
				end
			else

doPlayerSendTextMessage(cid,22,'Stand in front of the door.')
				return 1
			end

			doTeleportThing(cid,pos)
			doSendMagicEffect(topos,12)
			end
		return 1
	else  
		return 0
	end
end