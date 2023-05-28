function onCreatePost()
    setProperty('timeBar.visible',true)
    setProperty('timeBarBG.visible',true)

    setProperty('timeTxt.y',675)
end

function formatTime(millisecond)
    local seconds = math.floor(millisecond / 1000)

    return string.format("%01d:%02d", (seconds / 60) % 60, seconds % 60)  
end

function onUpdatePost()
    setTextString('timeTxt', songName..' ('..formatTime(getSongPosition() - noteOffset)..')')
end
