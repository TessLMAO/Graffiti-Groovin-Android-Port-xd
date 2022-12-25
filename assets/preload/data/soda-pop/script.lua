function onCountdownTick(counter)
	
	if counter == 0 then
	
    setProperty('dad.alpha', 0)
	setProperty('skar.alpha', 1)
	objectPlayAnimation('skar', 'Three', true)
     setProperty("skar.x", 180)
	
	end

    if counter == 1 then
	
	objectPlayAnimation('skar', 'Two', true)
	 setProperty("skar.x", 170)
	
	end 
	  
	if counter == 2 then
	 
	 objectPlayAnimation('skar', 'One', true)
	 setProperty("skar.x", 150)
	 
	  
	end
	  
	 if counter == 3 then
	 
	 objectPlayAnimation('skar', 'Go', true)
	 setProperty("skar.x", 140)
	 

	 end

     if counter == 4 then
	
	setProperty('skar.alpha', 0)
    setProperty('dad.alpha', 1)
	
	end
end

function onCreate()

	 makeAnimatedLuaSprite('skar', 'characters/countdown', 160, 135);
	 setLuaSpriteScrollFactor('skar', 1.0, 1.0);
	scaleObject('skar', 1.0,1.0);
	
	
	addAnimationByPrefix('skar', 'One', 'one0', 24, false);
	addAnimationByPrefix('skar', 'Two', 'two0', 24, false);
	addAnimationByPrefix('skar', 'Three', 'three0', 24, false);
	addAnimationByPrefix('skar', 'Go', 'go0', 24, false);
	addLuaSprite('skar', false);
	
	setProperty('skar.alpha',0)
	
end