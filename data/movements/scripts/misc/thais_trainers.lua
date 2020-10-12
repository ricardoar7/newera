function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end
	
	doRelocate(item:getPosition(),{x = 32231, y = 32200, z = 7})
	Game.sendMagicEffect({x = 32231, y = 32200, z = 7}, 11)
end

function onAddItem(item, tileitem, position)
	doRelocate(item:getPosition(),{x = 32231, y = 32200, z = 7})
	item:getPosition():sendMagicEffect(11)
	Game.sendMagicEffect({x = 32231, y = 32200, z = 7}, 11)
end