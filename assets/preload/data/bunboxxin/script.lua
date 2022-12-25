function onCreate()
     
     makeAnimatedLuaSprite('bag', 'Matt/bag', 1000, -200);
	addAnimationByPrefix('bag', 'idle', 'bag idle', 24, true);
	addAnimationByPrefix('bag', 'hit', 'hit', 30, false);
	addAnimationByPrefix('bag', 'knockout', 'knockout', 24, false);
	scaleObject('bag', 1.1, 1.1);
	setProperty('bag.offset.x', 0);
	setProperty('bag.offset.y', 0);
	addLuaSprite('bag', true);

	setProperty('bag.origin.y', getProperty('bag.origin.y') - 300);
     
end
	 
function goodNoteHit(id, noteData, isSustainNote)
	if noteData == 0 then
  	
  	objectPlayAnimation("bag", "hit", true)
  
			
	elseif noteData == 1 then
	
	objectPlayAnimation("bag", "hit", true)
		
				
	elseif noteData == 2 then
						              objectPlayAnimation("bag", "hit", true)
	
	elseif noteData == 3 then
						                objectPlayAnimation("bag", "hit", true)
    end
end

function onUpdate(elapsed)
	animName = getProperty('bag.animation.curAnim.name');
	if animName ~= 'idle' and getProperty('bag.animation.curAnim.finished') then
		if animName == 'hit' then
		
		objectPlayAnimation("bag", "idle", true)
		
		end
		
		animName = 'idle';
	end

	if animName == 'idle' then
		bagFrameTiming = bagFrameTiming + elapsed;
		while bagFrameTiming >= 1 / bagSwingFramerate do
			moveBag();
			bagFrameTiming = bagFrameTiming - (1 / bagSwingFramerate);
		end
	else
		setProperty('bag.angle', 0);
	end
end

function onStepHit()

    if curStep == 2302 then
    
    characterPlayAnim('boyfriend','frontkick',true)
    
    end
     
    if curStep == 2304 then
    
    
    objectPlayAnimation("bag", "knockout", true)
    characterPlayAnim('dad','dodge',true)
    

    end
end