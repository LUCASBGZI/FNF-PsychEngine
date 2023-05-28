-- Stage Stuff
function onCreate()
	makeLuaSprite('bg', 'fondo_arrecho', -520,-330);
	setScrollFactor('bg', 1, 1);
	scaleObject('bg', 2.36, 2.36)

	addLuaSprite('bg', false);

	makeLuaSprite('fainal', 'fainal2', 320,150);
	setScrollFactor('fainal', 1, 1);
	scaleObject('fainal', 1.63, 1.63)

	addLuaSprite('fainal', true);
	setProperty('fainal.visible', false);

end

function onEvent(name,value1,value2)

	if name == 'Play Animation' then 

		
		if value1 == 'fainal' then
			setProperty('fainal.visible', true);
		end
	end
end