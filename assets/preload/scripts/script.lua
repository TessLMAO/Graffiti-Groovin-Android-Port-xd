function onCountdownTick(counter)
	
	if counter == 0 then
	
	  objectPlayAnimation('que', 'Three', true)
	  doTweenAlpha('Waos', 'que', 1, 0.1, 'lineal');
	
	end

    if counter == 1 then
	
	objectPlayAnimation('que', 'Two', true)
	  playSound('Dos', 3)
	  setProperty("que.x", 530)
	  setProperty("que.y", 220)
	end 
	  
	if counter == 2 then
	 
	 objectPlayAnimation('que', 'One', true)
	 setProperty("que.x", 560)
	  setProperty("que.y", 215)
	  
	end
	  
	 if counter == 3 then
	 
	objectPlayAnimation('que', 'Go', true)
	  playSound('Go', 3)
	  setProperty("que.y", 160)
	  setProperty("que.x", 420)
	 end

     if counter == 4 then
	
	doTweenAlpha('Waos', 'que', 0, 0.4, 'lineal');
	
	end
end

function onCreate()

	 makeAnimatedLuaSprite('que', 'Count/countdown', 550, 200);
	 setLuaSpriteScrollFactor('que', 1.0, 1.0);
	scaleObject('que', 0.8,0.8);
	setObjectCamera('que', 'other');
	
	addLuaSprite('que', false);
	addAnimationByPrefix('que', 'One', 'one0', 24, false);
	addAnimationByPrefix('que', 'Two', 'two0', 24, false);
	addAnimationByPrefix('que', 'Three', 'three0', 24, false);
	addAnimationByPrefix('que', 'Go', 'go0', 24, false);
	
	setProperty('que.alpha', 0)
	
end