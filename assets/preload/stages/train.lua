function onCreate()
     
    addCharacterToList('skarlet-neonsolo', 'dad')
    addCharacterToList('skarlet-graffiti', 'dad')
     addCharacterToList('bf-graffiti', 'boyfriend')
     
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
     
     
     makeAnimatedLuaSprite('sky', 'train/sky', -382, -404)
	scaleObject('sky', 1.15, 1.15)
	setScrollFactor('sky', 0.9, 0.9);
	
	makeLuaSprite('atras', 'train/far buildings', -900, -504)
	scaleObject('atras', 1.0, 1.0)
	setScrollFactor('atras', 1.0, 1.0);
	
	makeLuaSprite('atras2', 'train/far buildings', 3100, -504)
	scaleObject('atras2', 1.0, 1.0)
	setScrollFactor('atras2', 1.0, 1.0);
	
	makeLuaSprite('hola', 'train/buildings', -1137, -334)
	scaleObject('hola', 1.0, 1.0)
	setScrollFactor('hola', 1.0, 1.0);
	
	makeLuaSprite('hola2', 'train/buildings', 6800, -334)
	scaleObject('hola2', 1.0, 1.0)
	setScrollFactor('hola2', 1.0, 1.0);
	
	makeLuaSprite('otra', 'train/buildings darker', -1137, -334)
	scaleObject('otra', 1.0, 1.0)
	setScrollFactor('otra', 1.0, 1.0);
	
	makeLuaSprite('otra2', 'train/buildings darker', 7000, -334)
	scaleObject('otra2', 1.0, 1.0)
	setScrollFactor('otra2', 1.0, 1.0);
	
	makeLuaSprite('base', 'train/train', -343, 542)
	scaleObject('base', 1.0, 1.0)
	setScrollFactor('base', 1.0, 1.0);
  
     makeAnimatedLuaSprite('Video', 'pija/QU', 0, 0)
	scaleObject('Video', 2.02, 2.02)
	setScrollFactor('Video', 1.0, 1.0);
	setObjectCamera('Video','other')
	
	makeAnimatedLuaSprite('dropBg', 'train/drop_bg', -900, -350);
	scaleObject('dropBg', 1.9, 1.9);
	setScrollFactor('dropBg', 0.75, 0.75);
	setProperty('dropBg.visible', false);
	
	makeLuaSprite('trans', 'train/wall', 1300, 0)
	scaleObject('trans', 1.0, 1.0)
	setScrollFactor('trans', 1.0, 1.0);
	setObjectCamera('trans','hud')
	
	makeLuaSprite('basedrop', 'train/train shaded', -343, 542)
	scaleObject('basedrop', 1.0, 1.0)
	setScrollFactor('basedrop', 1.0, 1.0);
	
	makeLuaSprite('pol', 'train/poles', 537, 444)
	scaleObject('pol', 1.0, 1.0)
	setScrollFactor('pol', 1.0, 1.0);
	
	makeLuaSprite('pol2', 'train/poles', 1400, 444)
	scaleObject('pol2', 1.0, 1.0)
	setScrollFactor('pol2', 1.0, 1.0);
	
	makeLuaSprite('pe', 'train/walls', -2000, -260)
	scaleObject('pe', 1.0, 1.0)
	setScrollFactor('pe', 1.0, 1.0);
	
	makeLuaSprite('pe2', 'train/walls', 5050, -260)
	scaleObject('pe2', 1.0, 1.0)
	setScrollFactor('pe2', 1.0, 1.0);
	
	makeLuaText('sion', "Recreation By SION | MOD Rechi", 0, 850, 20);
	setProperty('sion.alpha',0.90);
    setTextSize('sion',18);
    setTextFont("sion", "pija.ttf")
    
	
	addLuaSprite('barbot',true)
    addLuaSprite('bartop',true)
	addLuaSprite('Video', true)
	addAnimationByPrefix('Video','cool','QU idle',10.1,false)
	addLuaSprite('sky', false)
	addAnimationByPrefix('sky','que','sky',24,true)
	addLuaSprite('atras', false)
	addLuaSprite('atras2', false)
	addLuaSprite('hola', false)
	addLuaSprite('hola2', false)
	addLuaSprite('otra', false)
	addLuaSprite('otra2', false)
    addLuaSprite('pol', false)
    addLuaSprite('pol2', false)
	addLuaSprite('pe', false)
	addLuaSprite('pe2', false)
	addLuaSprite('base', false)
	addLuaSprite('basedrop', false)
	addLuaSprite('dropBg', false)
	addAnimationByPrefix('dropBg', 'idle', 'tunnel loop', 24, true);
    addLuaSprite('trans', false)
    addLuaText('sion');
    
    setProperty('dropBg.visible', false);
    setProperty('basedrop.visible', false);
    setProperty('pe.visible', false);
    setProperty('pe2.visible', false);
    
	doTweenX('primero', 'atras', -4500, 11,'linear');
	doTweenX('primero2', 'atras2', -4500, 23,'linear');
	
	doTweenX('segundo', 'hola', -8500, 5,'linear');
	doTweenX('segundo2', 'hola2', -8500, 10,'linear');
	
	doTweenX('tercer', 'otra', -8500, 4,'linear');
	doTweenX('tercer2', 'otra2', -8500, 8,'linear');
	
	doTweenX('postes', 'pol', -1000, 0.4,'linear');
	doTweenX('postes2', 'pol2', -1000, 0.7,'linear');
	
	doTweenX('drop', 'pe', -7000, 0.5,'linear');
	doTweenX('drop2', 'pe2', -7000, 0.8,'linear');
	
end

function onTweenCompleted(tag)

    if tag == 'trans' then


setProperty("trans.x", 1300)

    end

    if tag == 'primero' then

doTweenX('primero', 'atras', -4500, 23,'linear');
setProperty("atras.x", 3290)

    end

    if tag == 'primero2' then
doTweenX('primero2', 'atras2', -4500, 23,'linear');
setProperty("atras2.x", 3100)

    end

    if tag == 'segundo' then

doTweenX('segundo', 'hola', -8500, 10,'linear');
setProperty("hola.x", 6800)

    end

    if tag == 'segundo2' then
doTweenX('segundo2', 'hola2', -8500, 10,'linear');
setProperty("hola2.x", 6800)

    end

    if tag == 'tercer' then

doTweenX('tercer', 'otra', -8500, 8,'linear');
setProperty("otra.x", 7000)

    end

    if tag == 'tercer2' then
doTweenX('tercer2', 'otra2', -8500, 8,'linear');
setProperty("otra2.x", 7000)

    end

    if tag == 'postes' then

doTweenX('postes', 'pol', -1000, 0.7,'linear');
setProperty("pol.x", 1500)

    end

    if tag == 'postes2' then
doTweenX('postes2', 'pol2', -1000, 0.7,'linear');
setProperty("pol2.x", 1500)

    end

    if tag == 'drop' then

doTweenX('drop', 'pe', -7000, 0.8,'linear');
setProperty("pe.x", 4000)

    end

    if tag == 'drop2' then
doTweenX('drop2', 'pe2', -7000, 0.8,'linear');
setProperty("pe2.x", 6000)
   end
end

function onEvent(name,value1,value2)
	 
	 if name == 'Sion' then 
		
	    if value1 == 'waos' then
	    setProperty('Video.visible', false);
	    
	    end
	    
	    if value1 == 'video' then
	    objectPlayAnimation("Video", "cool", true)
       playSound('tren', 3.5)
       doTweenY('Up', 'bartop', 0, 0.4, 'circInOut')
      doTweenY('Down', 'barbot', 615, 0.4, 'circInOut')
	    
	    end
	  
	 if value1 == 'trans' then  
	   
	   doTweenX('trans', 'trans', -3000, 0.6,'linear');
	   
	   end
	  
	 if value1 == 'transbf' then  
	   
	   doTweenX('trans', 'trans', -3000, 0.6,'linear');
	   
	   end

    if value1 == 'drop' then

     triggerEvent('Change Character', 'dad', 'skarlet-neonsolo');
      setProperty('dropBg.visible', true);
      setProperty('boyfriend.visible', false);
      
       end

   if value1 == 'drop2' then

     triggerEvent('Change Character', 'dad', 'skarlet-graffiti');
     triggerEvent('Change Character', 'boyfriend', 'bf-graffiti');
      setProperty('dropBg.visible', false);
    setProperty('Video.visible', false);
    setProperty('sky.visible', false);
    setProperty('atras.visible', false);
    setProperty('atras2.visible', false);
    setProperty('hola.visible', false);
    setProperty('hola2.visible', false);
    setProperty('otra.visible', false);
    setProperty('otra2.visible', false);
    setProperty('base.visible', false);
    setProperty('basedrop.visible', true);
    setProperty('pe.visible', true);
    setProperty('pe2.visible', true);
    setProperty('pol.visible', false);
    setProperty('pol2.visible', false);
    
    
    end
    
   if value1 == 'trans3' then  
	   
	   doTweenX('trans', 'trans', -3000, 0.6,'linear');
	   
	   end

   if value1 == 'normal' then

     triggerEvent('Change Character', 'dad', 'skarlet_excited');
     triggerEvent('Change Character', 'boyfriend', 'bf-epic');
      setProperty('dropBg.visible', false);
    setProperty('Video.visible', false);
    setProperty('sky.visible', true);
    setProperty('atras.visible', true);
    setProperty('atras2.visible', true);
    setProperty('hola.visible', true);
    setProperty('hola2.visible', true);
    setProperty('otra.visible', true);
    setProperty('otra2.visible', true);
    setProperty('base.visible', true);
    setProperty('basedrop.visible', false);
    setProperty('pe.visible', false);
    setProperty('pe2.visible', false);
    setProperty('pol.visible', true);
    setProperty('pol2.visible', true);
      end
   end
end