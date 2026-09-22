function Merge(t1, t2)
    for k, v in pairs(t2) do t1[k] = v end
end

Merge(Device, {
    BoomBox_base = L"Boombox",
    BoomBox_old = L"Old Songs",
    BoomBox_new = L"New Songs",
    chainsaw_man_kick_back = L"Kick Back (Chainsaw Man)",
    flame_brigade_ending = L"Flame Brigade - Ending",
    flame_brigade_opening = L"Flame Brigade - Opening",
    stupid_pig_dream = L"Stupid Pig Dream",
    renai_circulation = L"Renai Circulation",
    tokyo_ghoul_unravel = L"Unravel (Tokyo Ghoul)",
    kino_tsoy_summer_ends = L"Kino - Summer Ends",
    caesar_ep_zenless = L"Caesar EP (Zenless)",
})
