function onCreate()

	makeLuaSprite('bartop','',0,-200)
    makeGraphic('bartop',1280,70,'000000')
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)
    scaleObject('bartop', 1.5, 1.5);

    makeLuaSprite('barbot','',0,755)
    makeGraphic('barbot',1280,200,'000000')
    scaleObject('barbot', 1.5, 1.5);
	setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')
	
	
	makeAnimatedLuaSprite('bg', 'neo/BG_NEON', -483, -310)
	scaleObject('bg', 1.2, 1.2)
	setScrollFactor('bg', 0.9, 0.9);
	
	makeAnimatedLuaSprite('floor', 'neo/FRONT2', -483, -310)
	scaleObject('floor', 1.2, 1.2)
	setScrollFactor('floor', 1, 1);
	
	makeAnimatedLuaSprite('floor2', 'neo/FRONT2', -483, -310+getProperty('floor.height')-1)
	scaleObject('floor2', 1.2, 1.2)
	setScrollFactor('floor2', 1, 1);
	setProperty('floor2.flipY', true)
	

	makeLuaSprite('hat', 'neo/hat', 580, 666 - 8)
	scaleObject('hat', 1.2, 1.2)
	setScrollFactor('hat', 1, 1);

   	makeAnimatedLuaSprite('boppers', 'neo/CROWD', -550, 350)
	addAnimationByPrefix('boppers', 'idle', 'crowd')
	scaleObject('boppers', 1.2, 1.2)
	
	makeLuaSprite('tren', 'neo/train', -6000, 190)
	scaleObject('tren', 1.2, 1.2)
	setScrollFactor('tren', 1, 1);
	
	makeAnimatedLuaSprite('ani', 'neo/doors1', -3830, 250)
	scaleObject('ani', 1.2, 1.2)
	setScrollFactor('ani', 1, 1);
	
	makeAnimatedLuaSprite('ani2', 'neo/doors2', -3440, 280)
	scaleObject('ani2', 1.2, 1.2)
	setScrollFactor('ani2', 1, 1);
	
	makeAnimatedLuaSprite('ani3', 'neo/doors4', -3440, 280)
	scaleObject('ani3', 1.2, 1.2)
	setScrollFactor('ani3', 1, 1);
	
	makeLuaText('sion', "Recreation By SION | MOD Rechi", 0, 850, 20);
	setProperty('sion.alpha',0.90);
    setTextSize('sion',18);
    setTextFont("sion", "pija.ttf")
	
	
	addLuaSprite('bg', false)
    addAnimationByPrefix('bg','cool','BACK',24,true)
	objectPlayAnimation('bg','cool',false)
	addLuaSprite('ani', false)
	addAnimationByPrefix('ani','cerrao','DOORS CLOSING',24, false)
    addAnimationByPrefix('ani','waos','DOORS OPENING',24, false)
    
    addLuaSprite('ani2', false)
	addAnimationByPrefix('ani2','cerrao2','DOORS CLOSING',24, false)
    addAnimationByPrefix('ani2','waos2','DOORS OPENING',24, false)
    
    addLuaSprite('ani3', false)
	addAnimationByPrefix('ani3','cerrao3','DOORS CLOSING',24, false)
    addAnimationByPrefix('ani3','waos3','DOORS OPENING',24, false)

	addLuaSprite('tren',false)
	addLuaSprite('floor', false)
    addAnimationByPrefix('floor','dance','Floor front',24,true)
    objectPlayAnimation('floor','dance',false)
    addAnimationByPrefix('floor2','dance','Floor front',24,true)
	objectPlayAnimation('floor2','dance',false)
	addLuaSprite('hat', false)
    addLuaSprite('floor2', false)
	addLuaSprite('tren',false)
	addLuaSprite('boppers', true)
	addLuaSprite('barbot',true)
    addLuaSprite('bartop',true)
    addLuaText('sion');
    
    setProperty('ani.visible', false)
    setProperty('ani2.visible', false)
    setProperty('ani2.visible', false)
    
	
end

function onTweenCompleted(tag)

    if tag == 'primero2' then
  

     objectPlayAnimation('ani', 'waos', true) 
     
     end
     
     
     if tag == 'tween2' then
  
    objectPlayAnimation('ani2', 'waos2', true) 
     
     
     end
     
     if tag == 'agottween' then
  
    objectPlayAnimation('ani3', 'waos3', true) 
     
     end
     
     if tag == 'trewn' then
     
     setProperty("tren.x", -6000)
     setProperty('ani2.visible', false)
     
     end
     
     if tag == 'pija' then
     
     setProperty("tren.x", -6000)
     setProperty('ani3.visible', false)
     
     end


     if tag == 'final' then
     
     setProperty("tren.x", -6000)
     setProperty('ani.visible', false)
     
    end
end

function onEvent(name,value1,value2)
	 
	 if name == 'Sion' then 
		
	   if value1 == 'byebye' then
	    doTweenX('final', 'tren', 2100, 4,'linear');
	doTweenX('final2', 'ani', 2200,2,'linear');

     end
        
        if value1 == 'byebyenikku' then
        
        doTweenX('trewn', 'tren', 2100, 4,'linear');
	doTweenX('tani', 'ani2', 3000, 2.5,'linear');
 
 
      end
      
      if value1 == 'byebyeagoti' then
      
      doTweenX('pija', 'tren', 2100, 4,'linear');
	doTweenX('tani3', 'ani3', 3000, 2.5,'linear');


      end

       if value1 == 'hola' then
       
       doTweenX('primero', 'tren', -2100, 4,'linear');
	doTweenX('primero2', 'ani', 70, 4,'linear');
	setProperty('ani.visible', true)
	
	 end
	 
	   if value1 == 'holanikku' then
       setProperty('ani2.visible', true)
       doTweenX('tween', 'tren', -2100, 4,'linear');
	doTweenX('tween2', 'ani2', 380, 4.0,'linear');
	
	
	 end

       if value1 == 'holaagoti' then
       setProperty('ani3.visible', true)
       doTweenX('Ag', 'tren', -2100, 4,'linear');
	doTweenX('agottween', 'ani3', 390, 4.011,'linear');
	
	
	 end
	 
	 if value1 == 'closenikku' then
       
       
      objectPlayAnimation('ani2', 'cerrao2', true) 
      
      end
      
      
     if value1 == 'closeagoti' then
     
     objectPlayAnimation('ani3', 'cerrao3', true) 
     
     end
     

     if value1 == 'close' then
       
       
      objectPlayAnimation('ani', 'cerrao', true) 

    end
end
end

function onBeatHit()

	objectPlayAnimation('boppers', 'idle', true)

end

function onSongStart()
	
     doTweenY('Up', 'bartop', 0, 0.4, 'circInOut')
doTweenY('Down', 'barbot', 615, 0.4, 'circInOut')
end