-- Script made by RealReal
-- uhhhh I made it before Catbrother so it's mine right?
-- https://www.youtube.com/channel/UCBiEI00nFRfvR8it0z8zmzw

	
	
	
	
	
-- These Comment is made for Helping People to understand the code
-- Put this in new Created Folder in mods/ur mod folder/new created folder

local singing = 0

function onCreate()

addLuaScript('custom_notetypes/bfplayerp_Sing') -- Load the Note Type

-- CUSTOM SPRITE
makeAnimatedLuaSprite('bfplayerp', 'characters/BOYFRIEND6', 0, 0)

		addAnimationByPrefix('bfplayerp', 'idle', 'BF idle dance', 24, false) 
		
        addAnimationByPrefix('bfplayerp', 'singLEFT', 'BF NOTE LEFT0', 24, false) 
		
		addAnimationByPrefix('bfplayerp', 'singDOWN', 'BF NOTE DOWN0', 24, false) 
		
		addAnimationByPrefix('bfplayerp', 'singUP', 'BF NOTE UP0', 24, false) 
		
		addAnimationByPrefix('bfplayerp', 'singRIGHT', 'BF NOTE RIGHT0', 24, false) 
		
		-- you can add more animation if ur character xml has more animation
		-- addAnimationByPrefix('bfplayerp', 'singRIGHT', 'your character right Pose animation', 24, false) 
		
		addLuaSprite('bfplayerp', true)
		setProperty ("bfplayerp.flipX", true)
		
	
end

function onStepHit() -- Idle Function
    -- Make Bopping Idle Match the Dad and Boyfriend
    if getProperty('bfplayerp.animation.curAnim.name')  ~= null and curBeat % 1 == 0 and singing ~= 1 then -- avoiding Glitchy animation like Kade Engine LMAO
        objectPlayAnimation('bfplayerp','idle');	
    end
		
    -- Change curBeat % 2 to 1 for Bopping Every Beat
	
end

function onUpdate(elapsed) -- Avoid Playing Idle While Playing Animation

	-- WILL NOT DO IDLE IF PLAYING ANIMATION		
	if getProperty('bfplayerp.animation.curAnim.name') ~= 'idle' and not getProperty('bfplayerp.animation.curAnim.finished') then
	singing = 1
	else
	singing = 0
	
	end

end

function onUpdatePost(elapsed) -- This is the Offset Function 

            if getProperty('bfplayerp.animation.curAnim.name') == 'idle' then
                setProperty('bfplayerp.offset.x',-5)
				setProperty('bfplayerp.offset.y',35)
                
			
			elseif getProperty('bfplayerp.animation.curAnim.name') == 'singLEFT' then
                setProperty('bfplayerp.offset.x',-8)
				setProperty('bfplayerp.offset.y',20)
              
			
			elseif getProperty('bfplayerp.animation.curAnim.name') == 'singUP' then
                setProperty('bfplayerp.offset.x',36)
				setProperty('bfplayerp.offset.y',23)
               
			
			elseif getProperty('bfplayerp.animation.curAnim.name') == 'singDOWN' then
                setProperty('bfplayerp.offset.x',-2)
				setProperty('bfplayerp.offset.y',-15)
                
			
			elseif getProperty('bfplayerp.animation.curAnim.name') == 'singRIGHT' then
                setProperty('bfplayerp.offset.x',7)
				setProperty('bfplayerp.offset.y',35)
				
				
		
            end

			
end

function opponentNoteHit(id, noteData, noteType, isSustainNote) -- I like making easy code so this is different from Catbrother everything code :D

if noteType == 'bfplayerp_Sing' and noteData == 0 then

	objectPlayAnimation('bfplayerp', 'singLEFT',true);

end

if noteType == 'bfplayerp_Sing' and noteData == 1 then

	objectPlayAnimation('bfplayerp', 'singDOWN',true);

end

if noteType == 'bfplayerp_Sing' and noteData == 2 then

	objectPlayAnimation('bfplayerp', 'singUP',true);

end

if noteType == 'bfplayerp_Sing' and noteData == 3 then

	objectPlayAnimation('bfplayerp', 'singRIGHT',true);

end

if noteType == 'bfplayerp_Sing' and noteData == 4 then

	objectPlayAnimation('bfplayerp', 'singLEFT',true);

end

if noteType == 'bfplayerp_Sing' and noteData == 5 then

	objectPlayAnimation('bfplayerp', 'singDOWN',true);

end

if noteType == 'bfplayerp_Sing' and noteData == 6 then

	objectPlayAnimation('bfplayerp', 'singUP',true);

end

if noteType == 'bfplayerp_Sing' and noteData == 7 then

	objectPlayAnimation('bfplayerp', 'singRIGHT',true);

end

if noteType == 'bfplayerp_Sing' and noteData == 8 then

	objectPlayAnimation('bfplayerp', 'singLEFT',true);

end

if noteType == 'bfplayerp_Sing' and noteData == 9 then

	objectPlayAnimation('bfplayerp', 'singDOWN',true);

end

if noteType == 'bfplayerp_Sing' and noteData == 10 then

	objectPlayAnimation('bfplayerp', 'singUP',true);

end

if noteType == 'bfplayerp_Sing' and noteData == 11 then

	objectPlayAnimation('bfplayerp', 'singRIGHT',true);

end

if noteType == 'BOBF2_Sing' and noteData == 0 then

	objectPlayAnimation('bfplayerp', 'singLEFT',true);

end

if noteType == 'BOBF2_Sing' and noteData == 1 then

	objectPlayAnimation('bfplayerp', 'singDOWN',true);

end

if noteType == 'BOBF2_Sing' and noteData == 2 then

	objectPlayAnimation('bfplayerp', 'singUP',true);

end

if noteType == 'BOBF2_Sing' and noteData == 3 then

	objectPlayAnimation('bfplayerp', 'singRIGHT',true);

end

if noteType == 'BOBF2_Sing' and noteData == 4 then

	objectPlayAnimation('bfplayerp', 'singLEFT',true);

end

if noteType == 'BOBF2_Sing' and noteData == 5 then

	objectPlayAnimation('bfplayerp', 'singDOWN',true);

end

if noteType == 'BOBF2_Sing' and noteData == 6 then

	objectPlayAnimation('bfplayerp', 'singUP',true);

end

if noteType == 'BOBF2_Sing' and noteData == 7 then

	objectPlayAnimation('bfplayerp', 'singRIGHT',true);

end

if noteType == 'BOBF2_Sing' and noteData == 8 then

	objectPlayAnimation('bfplayerp', 'singLEFT',true);

end

if noteType == 'BOBF2_Sing' and noteData == 9 then

	objectPlayAnimation('bfplayerp', 'singDOWN',true);

end

if noteType == 'BOBF2_Sing' and noteData == 10 then

	objectPlayAnimation('bfplayerp', 'singUP',true);

end

if noteType == 'BOBF2_Sing' and noteData == 11 then

	objectPlayAnimation('bfplayerp', 'singRIGHT',true);

end

if noteType == 'BOSMP_Sing' and noteData == 0 then

	objectPlayAnimation('bfplayerp', 'singLEFT',true);

end

if noteType == 'BOSMP_Sing' and noteData == 1 then

	objectPlayAnimation('bfplayerp', 'singDOWN',true);

end

if noteType == 'BOSMP_Sing' and noteData == 2 then

	objectPlayAnimation('bfplayerp', 'singUP',true);

end

if noteType == 'BOSMP_Sing' and noteData == 3 then

	objectPlayAnimation('bfplayerp', 'singRIGHT',true);

end

if noteType == 'BOSMP_Sing' and noteData == 4 then

	objectPlayAnimation('bfplayerp', 'singLEFT',true);

end

if noteType == 'BOSMP_Sing' and noteData == 5 then

	objectPlayAnimation('bfplayerp', 'singDOWN',true);

end

if noteType == 'BOSMP_Sing' and noteData == 6 then

	objectPlayAnimation('bfplayerp', 'singUP',true);

end

if noteType == 'BOSMP_Sing' and noteData == 7 then

	objectPlayAnimation('bfplayerp', 'singRIGHT',true);

end

if noteType == 'BOSMP_Sing' and noteData == 8 then

	objectPlayAnimation('bfplayerp', 'singLEFT',true);

end

if noteType == 'BOSMP_Sing' and noteData == 9 then

	objectPlayAnimation('bfplayerp', 'singDOWN',true);

end

if noteType == 'BOSMP_Sing' and noteData == 10 then

	objectPlayAnimation('bfplayerp', 'singUP',true);

end

if noteType == 'BOSMP_Sing' and noteData == 11 then

	objectPlayAnimation('bfplayerp', 'singRIGHT',true);

end

end




function noteMiss(id, noteData, noteType, isSustainNote) -- You can add Miss animation if The Character is on BF side
	
end


