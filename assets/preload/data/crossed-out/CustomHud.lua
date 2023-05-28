--Hud Type Options
local Hudtype = 'Custom' -- Default is Custom
--list of hudtypes
-- Custom
-- Psych(leave blank to restore psych hud)
-- VixtinEngine
-- KadeEngine
-- ForeverEngine
                       --Options--
local zoom = true; -- alters the camHUD zoom(default = true)
local CameraMovement = true; --Camera follows the character(default = true)
local statCounter = true; --(custom hud only) Keeps track of your sicks, goods, etc(default = true)
		--Below is the dumpster fire script that I created--
function onCreatePost()
	if Hudtype == "Custom" then
	setProperty('scoreTxt.visible', false)
    	setProperty('timeBarBG.visible', true)
    	setProperty('timeBar.visible', true)
   	setProperty('timeTxt.visible', true)

	makeLuaText('watermark','', 0,3,0);
	setTextSize('watermark', 18);
	setTextColor('watermark','ffffff')
	addLuaText('watermark')

	if Hudtype == 'Custom' then
	makeLuaText('newScoreTxt','',0,3,50)
	setTextSize('newScoreTxt', 18)
	addLuaText('newScoreTxt')

	makeLuaText('missTxt','',0,3,70)
	setTextSize('missTxt', 18)
	addLuaText('missTxt')

	makeLuaText('accTxt','',0,3,90)
	setTextSize('accTxt', 18)
	addLuaText('accTxt')

	makeLuaText('daRating','',0,3,110)
	setTextSize('daRating', 18)
	addLuaText('daRating')

	if statCounter then -- only applies to the custom hudtype
	makeLuaText('sick','Sicks!!:',0,3,170)
	setTextSize('sick', 18)
	addLuaText('sick')

	makeLuaText('good','Goods!:',0,3, 190)
	setTextSize('good',18)
	addLuaText('good')

	makeLuaText('bad','Bads:',0,3, 210)
	setTextSize('bad',18)
	addLuaText('bad')

	makeLuaText('shit','Shits:',0,3, 230)
	setTextSize('shit',18)
	addLuaText('shit')

	if not downscroll then -- upscroll positions
	setProperty('shit.y',getProperty('newScoreTxt.y')-70)
	setProperty('bad.y',getProperty('shit.y')-20)
	setProperty('good.y',getProperty('bad.y')-20)
	setProperty('sick.y',getProperty('good.y')-20)
end
	if not downscroll then -- upscroll positions 
	setProperty('newScoreTxt.y',getProperty('healthBarBG.y')-40)
	setProperty('missTxt.y',getProperty('healthBarBG.y')-20)
	setProperty('daRating.y',getProperty('healthBarBG.y')+20)
	setProperty('accTxt.y',getProperty('healthBarBG.y'))
	setProperty('watermark.y',getProperty('healthBarBG.y')+50)
	end
    end
end
	function onUpdate()
	if hits < 1 and misses < 1 then
	setTextString('newScoreTxt','Score: 0')
	setTextString('missTxt','Misses: 0')
	setTextString('accTxt','Accuracy: 0%')
	setTextString('daRating','Rating: ?')
else
	setTextString('newScoreTxt','Score: ' .. score)
	setTextString('missTxt','Misses: ' .. misses)
	setTextString('accTxt','Accuracy: ' .. round(rating * 100, 2) .. '%')
	setTextString('daRating','Rating: [' .. ratingFC .. '] '..ratingName)
	end
	if Hudtype == 'VixtinEngine' then
	if hits < 1 and misses < 1 then
	setTextString('newscoretxt','Score: 0 | Combo Breaks: 0 | Accuracy: 0 % | N/A')
else
	setTextString('newscoretxt','Score: '..score..' | Combo Breaks: '..misses..' | Accuracy: ' .. round((getProperty('ratingPercent') * 100), 2)..' % (' .. ratingFC .. ') '..ratingName)
end
end
	setTextString('sick','Sicks!!: ' .. getProperty('sicks'))
	setTextString('good','Goods!: ' ..getProperty('goods'))
	setTextString('bad','Bads: ' .. getProperty('bads'))
	setTextString('shit','Shits: ' .. getProperty('shits'))
	
	if ratingName =='Perfect!!' then
	ratingFC = 'MFC'
	elseif ratingName == 'Nice' then
	ratingName = 'funny number go brr'
	elseif ratingName == 'Meh' then
	ratingName = 'Semi Skill issue'
	elseif ratingName == 'Bruh' then
	ratingName = 'Skill issue'
	elseif ratingName == 'Bad' then
	ratingName = 'Skill issue'
	elseif ratingName == 'Shit' then
	ratingName = 'Skill issue'
	elseif ratingName == 'You Suck!' then
	ratingName = 'Mega Skill issue'
	end
end
end
	
	function onBeatHit()
	if zoom then
	if curBeat % 4 == 0 then
	doTweenZoom('zoom','camGame',1,0.2,'quadOut')
	doTweenZoom('zoom','camHUD',1,0.2,'quadOut')
	elseif curBeat % 1 == 0 then
	setProperty('iconP1.scale.x', 1.3)
    	setProperty('iconP1.scale.y', 1.3)
   	setProperty('iconP2.scale.x', 1.3)
    	setProperty('iconP2.scale.y', 1.3)
	end
    end
end
	if Hudtype == 'ForeverEngine' then
	setProperty('scoreTxt.visible', false)
    	setProperty('timeBarBG.visible', false)
    	setProperty('timeBar.visible', false)
   	setProperty('timeTxt.visible', false)

	makeLuaText('txt','',0,setProperty('txt.y'),getProperty('scoreTxt.y'))
	setProperty('txt.x',getProperty('scoreTxt.x')+ 400)
	setTextSize('txt', 16)
	addLuaText('txt')

	makeLuaText('songtxt','',0,3,2)
	setTextSize('songtxt', 18)
	addLuaText('songtxt')

	makeLuaText('version','Psych Engine v0.6.3',0,1060,2)
	setTextSize('version', 18)
	addLuaText('version')

	if not downscroll then
	setProperty('songtxt.y',getProperty('healthBarBG.y')+55)
	setProperty('version.y',getProperty('healthBarBG.y')+55)
end
end
	if Hudtype == 'ForeverEngine' then
	if difficulty == 0 then
	setTextString('songtxt',songName .. ' - EASY')
	else if difficulty == 1 then
	setTextString('songtxt',songName .. ' - NORMAL')
	else if difficulty == 2 then
	setTextString('songtxt',songName .. ' - HARD')
	elseif difficulty == 3 then
	setTextString('songtxt',songName .. ' - Your custom difficulty name')
	end
    end
end
end

	if Hudtype == "Custom" then
	if difficulty == 0 then
	setTextString('watermark',songName .. ' - Easy - PE v0.6.3')
	else if difficulty == 1 then
	setTextString('watermark',songName .. ' - Normal - PE v0.6.3')
	else if difficulty == 2 then
	setTextString('watermark',songName .. ' - Hard - PE v0.6.3')
	elseif difficulty == 3 then
	setTextString('watermark',songName .. ' - Your custom difficulty name - PE v0.6.3')
	end
    end
end
end

	if Hudtype == 'VixtinEngine' then
	setProperty('scoreTxt.visible', false)
    	setProperty('timeBarBG.visible', false)
    	setProperty('timeBar.visible', false)
   	setProperty('timeTxt.visible', false)
end

	if Hudtype == 'VixtinEngine' then
	makeLuaText('newscoretxt','',0,setProperty('newscoretxt.y'),getProperty('scoreTxt.y'))
	setProperty('newscoretxt.x',getProperty('scoreTxt.x')+ 350)
	setTextSize('newscoretxt', 21)
	setObjectCamera('newscoretxt','hud')
	setTextBorder('newscoretxt', 1,'000001')
	addLuaText('newscoretxt')
end

	if Hudtype == 'KadeEngine' then
	setProperty('scoreTxt.visible', false)
    	setProperty('timeBarBG.visible', true)
    	setProperty('timeBar.visible', true)
   	setProperty('timeTxt.visible', true)


end

	if Hudtype == 'KadeEngine' then
	--Kade engine timebar code from laztrix hud--
	makeLuaSprite('black', 'black', 297.5, 20)
	makeLuaSprite('gray', 'gray', 303, 25.25)
	makeLuaSprite('green', 'green', 303, 25.25)

	addLuaSprite('black', true)
	addLuaSprite('gray', true)
	addLuaSprite('green', true)
				
	setObjectCamera('black', 'hud')
	setObjectCamera('gray', 'hud')
	setObjectCamera('green', 'hud')
				
	scaleObject('black', 2, .065)
	scaleObject('gray', 1.965, .035)
	scaleObject('green', 1.965, .035)

	makeLuaText('kadesongname', songName,0, 600, 19.5)
	setTextSize('kadesongname', 18)
	addLuaText('kadesongname')

	makeLuaText('sick','Sicks!:',0,3,390)
	setTextSize('sick', 18)
	addLuaText('sick')

	makeLuaText('good','Goods!:',0,3, 410)
	setTextSize('good',18)
	addLuaText('good')

	makeLuaText('bad','Bads:',0,3, 430)
	setTextSize('bad',18)
	addLuaText('bad')

	makeLuaText('shit','Shits:',0,3, 450)
	setTextSize('shit',18)
	addLuaText('shit')

end

	if Hudtype == 'KadeEngine' then
	if downscroll then
	setProperty('black.y', 690)
	setProperty('gray.y', 695)
	setProperty('green.y', 695)
	setProperty('kadesongname.y', 690)
end
end

	if Hudtype == 'KadeEngine' then
	makeLuaText('kadehud','',0,0,0)
	setProperty('kadehud.x',getProperty('scoreTxt.x')+ 390)
	setProperty('kadehud.y',getProperty('scoreTxt.y')+10)
	setTextSize('kadehud', 16)
	addLuaText('kadehud')
end

	function onSongStart()
	if botPlay and Psych then
	doTweenAlpha('botplay','scoreTxt',0,1,'linear')
	end
end

local velocity = 1.1
local camMovement = 25
function onMoveCamera(focus)
	if CameraMovement then
	-- Camera Movement code by Teniente Mantequilla
	if focus == 'boyfriend' then
	camY = getProperty('camFollow.y')
	camX = getProperty('camFollow.x')
	else if focus == 'dad' then
	camY = getProperty('camFollow.y')
	camX = getProperty('camFollow.x')
	end
    end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	-- variables not listed on the psych github be like
	if CameraMovement then
	if direction == 0 then
	setProperty('camFollow.x', camX - camMovement)
	elseif direction == 1 then
	setProperty('camFollow.y', camY + camMovement)
	elseif direction == 2 then
	setProperty('camFollow.y', camY - camMovement)
	elseif direction == 3 then
	setProperty('camFollow.x', camX + camMovement)
	end
	setProperty('cameraSpeed', velocity)
end
end
end

	function opponentNoteHit(id, direction, noteType, isSustainNote)
	if CameraMovement then
	if direction == 0 then
	setProperty('camFollow.x', camX - camMovement)
	elseif direction == 1 then
	setProperty('camFollow.y', camY + camMovement)
	elseif direction == 2 then
	setProperty('camFollow.y', camY - camMovement)
	elseif direction == 3 then
	setProperty('camFollow.x', camX + camMovement)
	end
	setProperty('cameraSpeed', velocity)
end
end
end
	function round(x, n) --https://stackoverflow.com/questions/18313171/lua-rounding-numbers-and-then-truncate
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end
	function onUpdatePost()
	if Hudtype == 'KadeEngine' then -- this is here because this kade hud is based off of KE 1.8
	setTextString('sick','Sicks!: ' .. getProperty('sicks'))
	setTextString('good','Goods!: ' ..getProperty('goods'))
	setTextString('bad','Bads: ' .. getProperty('bads'))
	setTextString('shit','Shits: ' .. getProperty('shits'))
end

	if Hudtype == 'KadeEngine' then
	if hits < 1 and misses < 1 then
	setTextString('kadehud','Score: 0 | Combo Breaks: 0 | Accuracy: 0 % | N/A')
else
	setTextString('kadehud','Score: '..score..' | Combo Breaks: '..misses..' | Accuracy: ' .. round((getProperty('ratingPercent') * 100), 2)..' % (' .. ratingFC .. ') '..ratingName)
end
end

	if Hudtype == 'VixtinEngine' then
	if hits < 1 and misses < 1 then
	setTextString('newscoretxt','Score: 0 | Combo Breaks: 0 | Accuracy: 0 % | N/A')
else
	setTextString('newscoretxt','Score: '..score..' | Combo Breaks: '..misses..' | Accuracy: ' .. round((getProperty('ratingPercent') * 100), 2)..' % (' .. ratingFC .. ') '..ratingName)
end
end
	scaleObject('green', 1.965 * getProperty("songPercent"), .035)

	if Hudtype == 'ForeverEngine' then
	if hits < 1 and misses < 1 then
	setTextString('txt','Score: 0 - Accuracy: 0% - Combo Breaks: 0 - Rank: N/A')
else
	setTextString('txt','Score: '..score..' - Accuracy: '..round((getProperty('ratingPercent') * 100), 2) ..'%'..' [' .. ratingFC .. ']'..' - Rank: '..ratingName)
end
end
end