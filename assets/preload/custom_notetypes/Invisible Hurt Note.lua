function onCreate()
   for a = 0, getProperty('unspawnNotes.length') - 1 do
      if getPropertyFromGroup('unspawnNotes', a, 'noteType') == 'Invisible Hurt Note' then
         setPropertyFromGroup('unspawnNotes', a, 'texture', 'HURTNOTE-INVISIBLE_assets')
         setPropertyFromGroup('unspawnNotes', a, 'hitHealth', '-0.1');

         if getPropertyFromGroup('unspawnNotes', a, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', a, 'ignoreNote', true); --Miss has no penalties
			end
         setPropertyFromGroup("unspawnNotes", a, "multAlpha", 0)
      end
   end
end
   

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Invisible Hurt Note' then
      addMisses(1)
      characterPlayAnim('bf', 'hurt', true)
		setProperty('bf.specialAnim', true)
	end
end