local onetime = false
function onUpdatePost()
    if onetime == false then
    setProperty('botplayTxt.text', 'BOTPLAY')
    setTextFont("scoreTxt", "pija.ttf")
    setTextFont("botplayTxt", "pija.ttf")
    setTextFont("timeTxt", "pija.ttf")
    onetime = true
    end

    if ratingName == '?' then
        setRatingName('?') --When there are no notes
    end
    if ratingName == 'You Suck!' then
        setRatingName('BANNED') --From 0% to 19% of accuracy
    end
    if ratingName == 'Shit' then
        setRatingName('Bruh') --From 20% to 39% of accuracy
    end
    if ratingName == 'Bad' then
        setRatingName('Ok') --From 40% to 49% of accuracy
    end
    if ratingName == 'Bruh' then
        setRatingName('Eh') --From 50% to 59% of accuracy
    end
    if ratingName == 'Meh' then
        setRatingName('Meh') --From 60% to 68% of accuracy
    end
    if ratingName == 'Nice' then
        setRatingName('Good') --69% of accuracy :bruh:
    end
    if ratingName == 'Good' then
        setRatingName('Cool') --From 70% to 79% of accuracy
    end
    if ratingName == 'Great' then
        setRatingName('Great') --From 80% to 89% of accuracy
    end
    if ratingName == 'Sick!' then
        setRatingName('Sick!') --From 90% to 99% of accuracy
    end
    if ratingName == 'Perfect!!' then
        setRatingName('Perfect!!') --100% of accuracy
    end
end