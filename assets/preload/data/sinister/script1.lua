PumpIdle = true
function onCreate()
	makeAnimatedLuaSprite('Pump', 'characters/pump', 150, 480);
	addAnimationByPrefix('Pump', 'idle', 'idle', 24, false);
	addAnimationByPrefix('Pump', 'singLEFT', 'pump_left', 24, false);
	addAnimationByPrefix('Pump', 'singDOWN', 'pump_down', 24, false);
	addAnimationByPrefix('Pump', 'singUP', 'pump_up', 24, false);
	addAnimationByPrefix('Pump', 'singRIGHT', 'pump_right0', 24, false);
	scaleObject('Pump', 1.0, 1.0);
	objectPlayAnimation('Pump', 'idle', true);
	addLuaSprite('Pump', true);
setObjectOrder('dadGroup',getObjectOrder('Pump'))

    idleOffsets = {'0', '0'}
    leftOffsets = {'66', '3'}
    downOffsets = {'7', '-8'}
    upOffsets = {'-4', '64'}
    rightOffsets = {'-31', '-20'}
    
end

local PumpAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == "PumpNote" then
	    PumpIdle = false
		objectPlayAnimation('Pump', PumpAnims[direction + 1], false);

	if direction == 0 then
		setProperty('Pump.offset.x', leftOffsets[1]);
		setProperty('Pump.offset.y', leftOffsets[2]);
		objectPlayAnimation('Pump', 'singLEFT', true);

    elseif direction == 1 then
		setProperty('Pump.offset.x', downOffsets[1]);
		setProperty('Pump.offset.y', downOffsets[2]);
		objectPlayAnimation('Pump', 'singDOWN', true);

	elseif direction == 2 then
		setProperty('Pump.offset.x', upOffsets[1]);
		setProperty('Pump.offset.y', upOffsets[2]);
		objectPlayAnimation('Pump', 'singUP', true);

	elseif direction == 3 then
		setProperty('Pump.offset.x', rightOffsets[1]);
		setProperty('Pump.offset.y', rightOffsets[2]);
		objectPlayAnimation('Pump', 'singRIGHT', true);

	if isSustainNote then
		objectPlayAnimation('Pump', PumpAnims[direction + 1], true);
			end
		end
	end
end

-- come Mierda Nickobelit.
local PumpAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}

function onBeatHit()
	if curBeat % 2 == 0 then
		objectPlayAnimation('Pump', 'idle');
		setProperty('Pump.offset.x', idleOffsets[1]);
		setProperty('Pump.offset.y', idleOffsets[2]);
	end
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 2 == 0 then
		objectPlayAnimation('Pump', 'idle');
		setProperty('Pump.offset.x', idleOffsets[1]);
		setProperty('Pump.offset.y', idleOffsets[2]);
	end
end

function onStepHit()
if curStep == 3 then
    setProperty('Pump.alpha', 1)
    
end
end