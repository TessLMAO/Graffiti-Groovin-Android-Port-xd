local defaultNotePos = {};

function onSongStart()
    for i = 0,7 do 
        x = getPropertyFromGroup('strumLineNotes', i, 'x')
 
        y = getPropertyFromGroup('strumLineNotes', i, 'y')
 
        table.insert(defaultNotePos, {x,y})

     doTweenY('Up', 'bartop', 0, 0.4, 'circInOut')
doTweenY('Down', 'barbot', 615, 0.4, 'circInOut')
    end
end

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
	
	makeAnimatedLuaSprite('gym', 'Matt/gym', -600, -400);
	addAnimationByPrefix('gym', 'anim', 'bg bump', 24, false);
	scaleObject('gym', 1.45, 1.45);
	
	makeLuaText('sion', "Recreation By SION | MOD Rechi", 0, 850, 20);
	setProperty('sion.alpha',0.90);
    setTextSize('sion',18);
    setTextFont("sion", "pija.ttf")
	addLuaSprite('barbot',true)
    addLuaSprite('bartop',true)
	addLuaSprite('gym');
	addLuaText('sion');
	

	
	setPropertyFromClass('GameOverSubstate', 'characterName', 'skarlet-matt-dead');
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'deathMatt');
end

function onStepHit()
    if curStep == 5 then
        for i = 4,7 do setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i - 3][1]) end
        for i = 0,3 do setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 5][1]) end
    end
end

function onBeatHit()
	if curBeat % 2 == 0 then
		objectPlayAnimation('gym', 'anim', true);
	end
end