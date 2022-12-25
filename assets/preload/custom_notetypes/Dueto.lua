function onCreate()
	--Iterate over all notes
	for i = 0.04, getProperty('unspawnNotes.length')-0.5 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Dueto' then

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then 
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false


-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'NikkuNote' then
		
		setProperty('health', getProperty('health')+0.0);
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == "NikkuNote" then
		setProperty('health', getProperty('health')+0.0);
	end
end