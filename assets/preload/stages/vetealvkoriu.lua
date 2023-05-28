-- Stage Stuff
function onCreate()
	makeLuaSprite('bg1', 'a', -668,-230);
	setScrollFactor('bg1', 1, 1);
	scaleObject('bg1', 2.61, 2.61)

	addLuaSprite('bg1', false);

	makeAnimatedLuaSprite('pipol', 'eso tilin', -598, 130)
luaSpriteAddAnimationByPrefix('pipol', 'pipol', ' weones del fondo', 12, true);

	scaleObject('pipol', 2.6, 2.6)
		addLuaSprite("pipol", false)

	makeLuaSprite('bg2', 'nose', -668,315);
	setScrollFactor('bg2', 1, 1);
	scaleObject('bg2', 2.61, 2.61)

	addLuaSprite('bg2', false);

end

function onEvent(name,value1,value2)

	if name == 'Play Animation' then 

		
		if value1 == 'fainal' then
			setProperty('fainal.visible', true);
		end
	end
end