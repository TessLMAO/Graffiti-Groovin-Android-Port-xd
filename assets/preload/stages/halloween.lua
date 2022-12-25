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
	
	makeAnimatedLuaSprite('bg', 'halloween/BG', -800, -332);
	scaleObject('bg', 2, 2);

	makeAnimatedLuaSprite('cassette', 'halloween/cd', 540, 588)
	scaleObject('cassette', 1.4, 1.4);
	setProperty('cassette.flipX', true);
	
	makeLuaText('sion', "Recreation By SION | MOD Rechi", 0, 850, 20);
	setProperty('sion.alpha',0.90);
    setTextSize('sion',18);
    setTextFont("sion", "pija.ttf")
	
	addLuaSprite('bg', false)
	addAnimationByPrefix('bg', 'idle', 'bg0', 24, true);
	addAnimationByPrefix('bg', 'lighting', 'bg_lightning', 24, false);
	addLuaSprite('cassette', false)
	addAnimationByPrefix('cassette', 'idle', 'boombox', 24, false);
	addLuaSprite('barbot',true)
    addLuaSprite('bartop',true)
    addLuaText('sion');
	
	
	setPropertyFromClass('GameOverSubstate', 'characterName', 'skarlet-spooky-dead');
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'deathSpooky');
end

function onSongStart()
     doTweenY('Up', 'bartop', 0, 0.4, 'circInOut')
     doTweenY('Down', 'barbot', 615, 0.4, 'circInOut')
end

function onBeatHit()
	if curBeat % 2 == 0 then
	
	objectPlayAnimation("cassette", "idle", true)
	
	end

	if curBeat % 27 == 0 then
	
	objectPlayAnimation("bg", "lighting", true)
	   
	end
end