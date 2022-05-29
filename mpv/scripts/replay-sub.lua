function hasSubs()
    tracks = mp.get_property_native("track-list")
    for _, track in pairs(tracks) do
        if track.type == "sub" and track.selected then
            return true
        end
    end
    return false
end

function replaySub()
    if not hasSubs() then 
        mp.command("seek -60 relative")
    else
        subStart = mp.get_property_number("sub-start")
        subDelay = mp.get_property_number("sub-delay")
        if subStart then
            -- Add a small offset to make sure subtitle is visible
            -- mp.set_property_number("time-pos", subStart + subDelay + 0.2)
            -- absolute also sets exact
            mp.commandv("seek", subStart + subDelay, "absolute")
        end
    end
end

mp.add_key_binding(nil, "replay-sub", replaySub)

function prevSub()
    if hasSubs() then 
        mp.command("sub-seek -1")
    else
        mp.command("seek -5 relative")
    end
end

mp.add_key_binding(nil, "prev-sub", prevSub)

function nextSub()
    if hasSubs() then 
        mp.command("sub-seek 1")
    else
        mp.command("seek 5 relative")
    end
end

mp.add_key_binding(nil, "next-sub", nextSub)

function findSubByLang(lang)
    tracks = mp.get_property_native("track-list")
    ret = nil
    for _, track in pairs(tracks) do
        if track.type == "sub" and track.lang == lang then
            ret = track
            if track.external then
                break
            end
        end
    end
    return ret
end

function toggleSubs()
    jpnSub = findSubByLang("jpn")
    if jpnSub then
        sub = mp.get_property("sid")
        if sub == "no" then
            mp.set_property_number("sid", jpnSub.id)
        else
            mp.set_property("sid", "no")
        end
    end
end

mp.add_key_binding(nil, "toggle-subs", toggleSubs)

function toggleSecondarySubs()
    engSub = findSubByLang("eng")
    if engSub then
        sub = mp.get_property("secondary-sid") 
        if sub == "no" then
            mp.set_property_number("secondary-sid", engSub.id)
        else
            mp.set_property("secondary-sid", "no")
        end
    end
end

mp.add_key_binding(nil, "toggle-secondary-subs", toggleSecondarySubs)
