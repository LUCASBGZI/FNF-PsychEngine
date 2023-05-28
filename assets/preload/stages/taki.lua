function onCreate()
	-- background shit
	makeLuaSprite('takibg', 'takibg/takibg', -500, -100);
	setScrollFactor('takibg', 1.0, 1.0);

	addLuaSprite('takibg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end