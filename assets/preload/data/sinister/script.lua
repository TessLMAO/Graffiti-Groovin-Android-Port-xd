NikkuIdle = true
function onCreate()
	makeAnimatedLuaSprite('Nikku', 'characters/nikku', 1000, 280);
	addAnimationByPrefix('Nikku', 'idle', 'idle', 24, false);
	addAnimationByPrefix('Nikku', 'singLEFT', 'left', 24, false);
	addAnimationByPrefix('Nikku', 'singDOWN', 'down', 24, false);
	addAnimationByPrefix('Nikku', 'singUP', 'up', 24, false);
	addAnimationByPrefix('Nikku', 'singRIGHT', 'right0', 24, false);
	scaleObject('Nikku', 1.0, 1.0);
	objectPlayAnimation('Nikku', 'idle', true);
	addLuaSprite('Nikku', true);
setObjectOrder('boyfriendGroup',getObjectOrder('Nikku'))

    idleOffsets = {'-152', '-27'}
    leftOffsets = {'-152', '-46'}
    downOffsets = {'-153', '-76'}
    upOffsets = {'-162', '-28'}
    rightOffsets = {'-162', '-52'}
    
end

local NikkuAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == "NikkuNote" then
	    NikkuIdle = false
		objectPlayAnimation('Nikku', NikkuAnims[direction + 1], false);

	if direction == 0 then
		setProperty('Nikku.offset.x', leftOffsets[1]);
		setProperty('Nikku.offset.y', leftOffsets[2]);
		objectPlayAnimation('Nikku', 'singLEFT', true);

    elseif direction == 1 then
		setProperty('Nikku.offset.x', downOffsets[1]);
		setProperty('Nikku.offset.y', downOffsets[2]);
		objectPlayAnimation('Nikku', 'singDOWN', true);

	elseif direction == 2 then
		setProperty('Nikku.offset.x', upOffsets[1]);
		setProperty('Nikku.offset.y', upOffsets[2]);
		objectPlayAnimation('Nikku', 'singUP', true);

	elseif direction == 3 then
		setProperty('Nikku.offset.x', rightOffsets[1]);
		setProperty('Nikku.offset.y', rightOffsets[2]);
		objectPlayAnimation('Nikku', 'singRIGHT', true);

	if isSustainNote then
		objectPlayAnimation('Nikku', NikkuAnims[direction + 1], true);
			end
		end
	end
end

-- come Mierda Nickobelit.
local NikkuAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}

function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 1 == 0 then
		objectPlayAnimation('Nikku', 'idle');
		setProperty('Nikku.offset.x', idleOffsets[1]);
		setProperty('Nikku.offset.y', idleOffsets[2]);
	end
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 2 == 0 then
		objectPlayAnimation('Nikku', 'idle');
		setProperty('Nikku.offset.x', idleOffsets[1]);
		setProperty('Nikku.offset.y', idleOffsets[2]);
	end
end

function onStepHit()
if curStep == 3 then
    setProperty('Nikku.alpha', 1)
    
end
end