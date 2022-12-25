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
	
	makeLuaSprite('bg', 'basket/city_shit', -1100, -750)
	addLuaSprite('bg', false)
	
	makeLuaSprite('court', 'basket/floor', -1100, -750)
	addLuaSprite('court', false)

   	makeAnimatedLuaSprite('cassette', 'basket/cd', 500, 600)
	addAnimationByPrefix('cassette', 'idle', 'boombox', 24, true);
	addLuaSprite('cassette', false)
	
		makeAnimatedLuaSprite('fgNene', 'basket/nene', -600, 660)
		setScrollFactor('fgNene', 1.6, 1.2);
		addAnimationByPrefix('fgNene', 'bop', 'nene bop', 24, true);
		scaleObject('fgNene', 1.6, 1.6);
		addLuaSprite('fgNene', true);
		
		makeAnimatedLuaSprite('fgOther', 'basket/pico', 1500, 600)
		setScrollFactor('fgOther', 1.9, 1.2);
		addAnimationByPrefix('fgOther', 'bop', 'pico bop', 24, false);
		scaleObject('fgOther', 1.6, 1.6);
		
		makeLuaText('sion', "Recreation By SION | MOD Rechi", 0, 850, 20);
	setProperty('sion.alpha',0.90);
    setTextSize('sion',18);
    setTextFont("sion", "pija.ttf")
		addLuaSprite('fgOther', true);
		
		
		addLuaSprite('barbot',true)
    addLuaSprite('bartop',true)
    addLuaText('sion');
		
end
	

local defaultNotePos = {}
local spin = 2

function onSongStart()

doTweenY('Up', 'bartop', 0, 0.4, 'circInOut')
doTweenY('Down', 'barbot', 615, 0.4, 'circInOut')

end

function onBeatHit()
	objectPlayAnimation('cassette', 'idle', true);

	if curBeat % 2 == 0 then
		objectPlayAnimation('fgNene', 'bop', true);
		objectPlayAnimation('fgOther', 'bop', true);
	end
end