-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale
local Class = ns.Class

local NPC = ns.node.NPC

local Achievement = ns.reward.Achievement
local Section = ns.reward.Section
local Spacer = ns.reward.Spacer
local Transmog = ns.reward.Transmog

local DC = ns.DRAGON_CUSTOMIZATIONS

-------------------------------------------------------------------------------

local AzureSpan = ns.maps[2024]
local ForbiddenReach = ns.maps[2151]
local OhnahranPlains = ns.maps[2023]
local Thaldraszus = ns.maps[2025]
local WakingShores = ns.maps[2022]
local ZaralekCavern = ns.maps[2133]

local Orgimmar = ns.maps[85] or Map({id = 85, settings = true})
local Stormwind = ns.maps[84] or Map({id = 84, settings = true})
local Valdrakken = ns.maps[2112] or Map({id = 2112, settings = true})

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

local Dragonrace = Class('DragonRace', ns.node.Collectible,
    {icon = 1100022, group = ns.groups.DRAGONRACE})

local DRAGONRIDING_RACE_TYPES = {
    [1] = {type = 'normal', label = L['dr_normal']},
    [2] = {type = 'advanced', label = L['dr_advanced']},
    [3] = {type = 'reverse', label = L['dr_reverse']},
    [4] = {type = 'challenge', label = L['dr_challenge']},
    [5] = {type = 'reverseChallenge', label = L['dr_reverse_challenge']}
}

function Dragonrace.getters:sublabel()
    local note = L['dr_best_time']
    local txt = L['dr_your_best_time']
    for _, race in ipairs(DRAGONRIDING_RACE_TYPES) do
        if self[race.type] then
            local currencyID = self[race.type][1]
            local label = race.label
            local time = C_CurrencyInfo.GetCurrencyInfo(currencyID).quantity
            txt = txt .. '\n' .. format(note, label, time / 1000)
        end
    end
    return txt
end

function Dragonrace.getters:note()
    local Silver = ns.color.Silver
    local Gold = ns.color.Gold
    local note = L['dr_target_time']
    local txt = L['dr_your_target_time']
    for _, race in ipairs(DRAGONRIDING_RACE_TYPES) do
        if self[race.type] then
            local label = race.label
            local sTime = ns.color.Red('??')
            if self[race.type][2] then
                sTime = Silver(self[race.type][2])
            end
            local gTime = ns.color.Red('??')
            if self[race.type][3] then
                gTime = Gold(self[race.type][3])
            end
            txt = txt .. '\n' .. format(note, label, sTime, gTime)
        end
    end
    return txt .. '\n\n' .. L['dr_bronze']
end

-------------------------------------------------------------------------------
---------------------------- DRAGONRIDING VENDORS -----------------------------
-------------------------------------------------------------------------------

local DragonridingVendor = Class('DragonridingVendor', NPC, {
    icon = 4638724,
    group = ns.groups.DRAGONRACE,
    note = L['dr_vendor_note'],
    rewards = {
        DC.SetCount(DC.WindborneVelocidrake.TealScales, '50'),
        DC.SetCount(DC.WindingSlitherdrake.BlondeHair, '25'),
        DC.SetCount(DC.WindingSlitherdrake.CurvedNoseHorn, '25'),
        Transmog({item = 206588, slot = L['cosmetic'], count = '20'}), -- Drake Racer's Helmet
        Transmog({item = 206589, slot = L['cosmetic'], count = '20'}), -- Drake Racer's Shoulderpads
        Transmog({item = 206590, slot = L['cosmetic'], count = '20'}), -- Drake Racer's Jersey
        Transmog({item = 206591, slot = L['cosmetic'], count = '20'}), -- Drake Racer's Handwraps
        Transmog({item = 206592, slot = L['cosmetic'], count = '20'}), -- Drake Racer's Belt
        Transmog({item = 206593, slot = L['cosmetic'], count = '20'}), -- Drake Racer's Leggings
        Transmog({item = 206594, slot = L['cosmetic'], count = '20'}) -- Drake Racer's Boots
        --
        -- Transmog({item = 210078, slot = L['cosmetic']}) -- Sky-Captain's Formal Attire
        -- Transmog({item = 210066, slot = L['cosmetic']}) -- Sky-Captain's Formal Boots
        -- Transmog({item = 210071, slot = L['cosmetic']}) -- Sky-Captain's Formal Cape
        -- Transmog({item = 210067, slot = L['cosmetic']}) -- Sky-Captain's Formal Coat
        -- Transmog({item = 210065, slot = L['cosmetic']}) -- Sky-Captain's Formal Hat
        -- Transmog({item = 210079, slot = L['cosmetic']}) -- Sky-Captain's Masquerade Attire
        -- Transmog({item = 210073, slot = L['cosmetic']}) -- Sky-Captain's Masquerade Boots
        -- Transmog({item = 210076, slot = L['cosmetic']}) -- Sky-Captain's Masquerade Cape
        -- Transmog({item = 210075, slot = L['cosmetic']}) -- Sky-Captain's Masquerade Pants
    }
}) -- Dragonriding Vendor

Orgimmar.nodes[52006000] = DragonridingVendor({
    id = 212027, -- Dathendrash (Horde)
    faction = 'Horde'
})

Stormwind.nodes[59806620] = DragonridingVendor({
    id = 212027, -- Dathendrash (Alliance)
    faction = 'Alliance'
})

Valdrakken.nodes[27004760] = DragonridingVendor({
    id = 206744 -- Maztha
})

-------------------------------------------------------------------------------
-------------------------- ROSTRUM OF TRANSFORMATION --------------------------
-------------------------------------------------------------------------------

local RostrumOfTransformation = Class('RostrumOfTransformation', NPC, {
    id = 198464,
    group = ns.groups.DRAGONRACE,
    note = L['dr_rostrum_note']
}) -- Rostrum of Transformation

WakingShores.nodes[74035813] = RostrumOfTransformation({
    icon = 254288,
    rewards = {
        Achievement({id = 16696}), -- Renewed Proto-Drake Drake Armor
        Achievement({id = 16697}), -- Renewed Proto-Drake Head Featuers
        Achievement({id = 16698}), -- Renewed Proto-Drake Tail Features
        Achievement({id = 16699}), -- Renewed Proto-Drake Scales and Patterns
        Achievement({id = 16700}) -- Renewed Proto-Drake Horns and Hair
    }
})

OhnahranPlains.nodes[84643555] = RostrumOfTransformation({
    icon = 254290,
    rewards = {
        Achievement({id = 16701}), -- Windborne Velocidrake Scales and Patterns
        Achievement({id = 16702}), -- Windborne Velocidrake Armor
        Achievement({id = 16704}), -- Windborne Velocidrake Horns and Fur
        Achievement({id = 16705}), -- Windborne Velocidrake Head Features
        Achievement({id = 16706}) -- Windborne Velocidrake Back and Tail
    }
})

AzureSpan.nodes[63611321] = RostrumOfTransformation({
    icon = 254291,
    rewards = {
        Achievement({id = 16707}), -- Highland Drake Scales and Patterns
        Achievement({id = 16708}), -- Highland Drake Armor
        Achievement({id = 16710}), -- Highland Drake Horns and Hair
        Achievement({id = 16711}), -- Highland Drake Back and Tail
        Achievement({id = 16712}) -- Highland Drake Head Features
    }
})

Valdrakken.nodes[25245033] = RostrumOfTransformation({
    icon = 254289,
    rewards = {
        Achievement({id = 16723}), -- Cliffside Wylderdrake Scales and Patterns
        Achievement({id = 16724}), -- Cliffside Wylderdrake Armor
        Achievement({id = 16725}), -- Cliffside Wylderdrake Horns and Manes
        Achievement({id = 16726}), -- Cliffside Wylderdrake Back and Tail
        Achievement({id = 16727}) -- Cliffside Wylderdrake Head Features
    }
})

-------------------------------------------------------------------------------
-------------------------------- DRAGON ISLES ---------------------------------
-------------------------------------------------------------------------------

--------------------------------- AZURE SPAN ----------------------------------

local function AzureSpan_Rewards(b, c, r) -- basic, challenge, reverse challenge
    return {
        Achievement({id = 15921, criteria = b, oneline = true}), -- normal bronze
        Achievement({id = 15922, criteria = b, oneline = true}), -- normal silver
        Achievement({id = 15923, criteria = b, oneline = true}), -- normal gold
        Achievement({id = 15933, criteria = b, oneline = true}), -- advanced bronze
        Achievement({id = 15934, criteria = b, oneline = true}), -- advanced silver
        Achievement({id = 15935, criteria = b, oneline = true}), -- advanced gold
        Achievement({id = 17201, criteria = b, oneline = true}), -- reverse bronze
        Achievement({id = 17202, criteria = b, oneline = true}), -- reverse silver
        Achievement({id = 17203, criteria = b, oneline = true}), -- reverse gold
        Section(L['dr_challenge']),
        Achievement({id = 18757, criteria = c, oneline = true}), -- challenge bronze
        Achievement({id = 18758, criteria = c, oneline = true}), -- challenge silver
        Achievement({id = 18759, criteria = c, oneline = true}), -- challenge gold
        Spacer(), Section(L['dr_reverse_challenge']),
        Achievement({id = 18757, criteria = r, oneline = true}), -- reverse challenge bronze
        Achievement({id = 18758, criteria = r, oneline = true}), -- reverse challenge silver
        Achievement({id = 18759, criteria = r, oneline = true}) -- reverse challenge gold
    }
end

AzureSpan.nodes[47914078] = Dragonrace({
    label = '{quest:66946}',
    normal = {2074, 66, 63},
    advanced = {2075, 63, 58},
    reverse = {2188, 65, 60},
    challenge = {2450, 70, 67},
    reverseChallenge = {2451, 72, 69},
    rewards = AzureSpan_Rewards(1, 1, 2)
}) -- Azure Span Sprint

AzureSpan.nodes[20952262] = Dragonrace({
    label = '{quest:67002}',
    normal = {2076, 61, 58},
    advanced = {2077, 61, 56},
    reverse = {2189, 58, 53},
    challenge = {2452, 58, 55},
    reverseChallenge = {2453, 58, 55},
    rewards = AzureSpan_Rewards(2, 3, 4)
}) -- Azure Span Slalom

AzureSpan.nodes[71292464] = Dragonrace({
    label = '{quest:67031}',
    normal = {2078, 61, 58},
    advanced = {2079, 61, 56},
    reverse = {2190, 61, 56},
    challenge = {2454, 66, 63},
    reverseChallenge = {2455, 67, 64},
    rewards = AzureSpan_Rewards(3, 5, 6)
}) -- Vakthros Ascent

AzureSpan.nodes[16584937] = Dragonrace({
    label = '{quest:67296}',
    normal = {2083, 78, 75},
    advanced = {2084, 75, 70},
    reverse = {2191, 72, 67},
    challenge = {2456, 81, 78},
    reverseChallenge = {2457, 82, 79},
    rewards = AzureSpan_Rewards(4, 7, 8)
}) -- Iskaara Tour

AzureSpan.nodes[48473579] = Dragonrace({
    label = '{quest:67565}',
    normal = {2085, 79, 76},
    advanced = {2086, 77, 72},
    reverse = {2192, 74, 69},
    challenge = {2458, 88, 85},
    reverseChallenge = {2459, 86, 83},
    rewards = AzureSpan_Rewards(5, 9, 10)
}) -- Frostland Flyover

AzureSpan.nodes[42275677] = Dragonrace({
    label = '{quest:67741}',
    normal = {2089, 94, 91},
    advanced = {2090, 86, 81},
    reverse = {2193, 81, 76},
    challenge = {2460, 93, 90},
    reverseChallenge = {2461, 95, 92},
    rewards = AzureSpan_Rewards(6, 11, 12)
}) -- Archive Ambit

------------------------------- FORBIDDEN REACH -------------------------------

local function ForbiddenReach_Rewards(b, c, r) -- basic, challenge, reverse challenge
    return {
        Achievement({id = 17279, criteria = b, oneline = true}), -- normal bronze
        Achievement({id = 17280, criteria = b, oneline = true}), -- normal silver
        Achievement({id = 17281, criteria = b, oneline = true}), -- normal gold
        Achievement({id = 17284, criteria = b, oneline = true}), -- advanced bronze
        Achievement({id = 17286, criteria = b, oneline = true}), -- advanced silver
        Achievement({id = 17287, criteria = b, oneline = true}), -- advanced gold
        Achievement({id = 17288, criteria = b, oneline = true}), -- reverse bronze
        Achievement({id = 17289, criteria = b, oneline = true}), -- reverse silver
        Achievement({id = 17290, criteria = b, oneline = true}), -- reverse gold
        Section(L['dr_challenge']),
        Achievement({id = 18779, criteria = c, oneline = true}), -- challenge bronze
        Achievement({id = 18780, criteria = c, oneline = true}), -- challenge silver
        Achievement({id = 18781, criteria = c, oneline = true}), -- challenge gold
        Spacer(), Section(L['dr_reverse_challenge']),
        Achievement({id = 18779, criteria = r, oneline = true}), -- reverse challenge bronze
        Achievement({id = 18780, criteria = r, oneline = true}), -- reverse challenge silver
        Achievement({id = 18781, criteria = r, oneline = true}) -- reverse challenge gold
    }
end

ForbiddenReach.nodes[76136563] = Dragonrace({
    label = '{quest:73017}',
    normal = {2201, 46, 43},
    advanced = {2207, 47, 42},
    reverse = {2213, 47, 42},
    challenge = {2474, 48, 45},
    reverseChallenge = {2475, 47, 44},
    rewards = ForbiddenReach_Rewards(1, 1, 2)
}) -- Stormsunder Crater Circuit

ForbiddenReach.nodes[31326573] = Dragonrace({
    label = '{quest:73020}',
    normal = {2202, 55, 52},
    advanced = {2208, 54, 49},
    reverse = {2214, 58, 53},
    challenge = {2476, 53, 50},
    reverseChallenge = {2477, 53, 50},
    rewards = ForbiddenReach_Rewards(2, 3, 4)
}) -- Morqut Ascent

ForbiddenReach.nodes[63095195] = Dragonrace({
    label = '{quest:73025}',
    normal = {2203, 56, 53},
    advanced = {2209, 55, 50},
    reverse = {2215, 55, 50},
    challenge = {2478, 56, 53},
    reverseChallenge = {2479, 55, 52},
    rewards = ForbiddenReach_Rewards(3, 5, 6)
}) -- Aerie Chasm Cruise

ForbiddenReach.nodes[63658406] = Dragonrace({
    label = '{quest:73029}',
    normal = {2204, 73, 70},
    advanced = {2210, 73, 68},
    reverse = {2216, 68, 63},
    challenge = {2480, 73, 70},
    reverseChallenge = {2481, 71, 68},
    rewards = ForbiddenReach_Rewards(4, 7, 8)
}) -- Southern Reach Route

ForbiddenReach.nodes[41361455] = Dragonrace({
    label = '{quest:73033}',
    normal = {2205, 61, 58},
    advanced = {2211, 61, 58},
    reverse = {2217, 55, 50},
    challenge = {2482, 58, 55},
    reverseChallenge = {2483, 56, 53},
    rewards = ForbiddenReach_Rewards(5, 9, 10)
}) -- Caldera Coaster

ForbiddenReach.nodes[49426006] = Dragonrace({
    label = '{quest:73061}',
    normal = {2206, 62, 59},
    advanced = {2212, 61, 58},
    reverse = {2218, 61, 58},
    challenge = {2484, 63, 60},
    reverseChallenge = {2485, 63, 60},
    rewards = ForbiddenReach_Rewards(6, 11, 12)
}) -- Forbidden Reach Rush

------------------------------- OHNAHRAN PLAINS -------------------------------

local function OhnahranPlains_Rewards(b, c, r) -- basic, challenge, reverse challenge
    return {
        Achievement({id = 15918, criteria = b, oneline = true}), -- normal bronze
        Achievement({id = 15919, criteria = b, oneline = true}), -- normal silver
        Achievement({id = 15920, criteria = b, oneline = true}), -- normal gold
        Achievement({id = 15930, criteria = b, oneline = true}), -- advanced bronze
        Achievement({id = 15931, criteria = b, oneline = true}), -- advanced silver
        Achievement({id = 15932, criteria = b, oneline = true}), -- advanced gold
        Achievement({id = 17198, criteria = b, oneline = true}), -- reverse bronze
        Achievement({id = 17199, criteria = b, oneline = true}), -- reverse silver
        Achievement({id = 17200, criteria = b, oneline = true}), -- reverse gold
        Section(L['dr_challenge']),
        Achievement({id = 18754, criteria = c, oneline = true}), -- challenge bronze
        Achievement({id = 18755, criteria = c, oneline = true}), -- challenge silver
        Achievement({id = 18756, criteria = c, oneline = true}), -- challenge gold
        Spacer(), Section(L['dr_reverse_challenge']),
        Achievement({id = 18754, criteria = r, oneline = true}), -- reverse challenge bronze
        Achievement({id = 18755, criteria = r, oneline = true}), -- reverse challenge silver
        Achievement({id = 18756, criteria = r, oneline = true}) -- reverse challenge gold
    }
end

OhnahranPlains.nodes[63743051] = Dragonrace({
    label = '{quest:66835}',
    normal = {2060, 52, 44},
    advanced = {2061, 46, 41},
    reverse = {2183, 50, 45},
    challenge = {2437, 54, 51},
    reverseChallenge = {2439, 53, 50},
    rewards = OhnahranPlains_Rewards(1, 1, 2)
}) -- Sundapple Copse Circuit

OhnahranPlains.nodes[86263583] = Dragonrace({
    label = '{quest:66877}',
    normal = {2062, 51, 44},
    advanced = {2063, 46, 41},
    reverse = {2184, 52, 47},
    challenge = {2440, 53, 50},
    reverseChallenge = {2441, 53, 50},
    rewards = OhnahranPlains_Rewards(2, 3, 4)
}) -- Fen Flythrough

OhnahranPlains.nodes[80897220] = Dragonrace({
    label = '{quest:66880}',
    normal = {2064, 52, 50},
    advanced = {2065, 52, 47},
    reverse = {2185, 51, 46},
    challenge = {2442, 53, 50},
    reverseChallenge = {2443, 54, 51},
    rewards = OhnahranPlains_Rewards(3, 5, 6)
}) -- Ravine River Run

OhnahranPlains.nodes[25715508] = Dragonrace({
    label = '{quest:66885}',
    normal = {2066, 66, 59},
    advanced = {2067, 60, 55},
    reverse = {2186, 62, 57},
    challenge = {2444, 69, 66},
    reverseChallenge = {2445, 69, 66},
    rewards = OhnahranPlains_Rewards(4, 7, 8)
}) -- Emerald Garden Ascent

OhnahranPlains.nodes[59933555] = Dragonrace({
    label = '{quest:66921}',
    normal = {2069, 28, 25},
    challenge = {2446, 27, 24},
    rewards = {
        Achievement({id = 15918, criteria = 5, oneline = true}), -- normal bronze
        Achievement({id = 15919, criteria = 5, oneline = true}), -- normal silver
        Achievement({id = 15920, criteria = 5, oneline = true}), -- normal gold
        Section(L['dr_challenge']),
        Achievement({id = 18754, criteria = 11, oneline = true}), -- challenge bronze
        Achievement({id = 18755, criteria = 11, oneline = true}), -- challenge silver
        Achievement({id = 18756, criteria = 11, oneline = true}) -- challenge gold
    }
}) -- Maruukai Dash

OhnahranPlains.nodes[47487064] = Dragonrace({
    label = '{quest:66933}',
    normal = {2070, 29, 26},
    challenge = {2447, 30, 27},
    rewards = {
        Achievement({id = 15918, criteria = 6, oneline = true}), -- normal bronze
        Achievement({id = 15919, criteria = 6, oneline = true}), -- normal silver
        Achievement({id = 15920, criteria = 6, oneline = true}), -- normal gold
        Section(L['dr_challenge']),
        Achievement({id = 18754, criteria = 12, oneline = true}), -- challenge bronze
        Achievement({id = 18755, criteria = 12, oneline = true}), -- challenge silver
        Achievement({id = 18756, criteria = 12, oneline = true}) -- challenge gold
    }
}) -- Mirror of Sky Dash

OhnahranPlains.nodes[43746678] = Dragonrace({
    label = '{quest:70710}',
    normal = {2119, 51, 46},
    advanced = {2120, 48, 43},
    reverse = {2187, 49, 44},
    challenge = {2448, 55, 52},
    reverseChallenge = {2449, 55, 52},
    rewards = {
        Achievement({id = 15918, criteria = 7, oneline = true}), -- normal bronze
        Achievement({id = 15919, criteria = 7, oneline = true}), -- normal silver
        Achievement({id = 15920, criteria = 7, oneline = true}), -- normal gold
        Achievement({id = 15930, criteria = 5, oneline = true}), -- advanced bronze
        Achievement({id = 15931, criteria = 5, oneline = true}), -- advanced silver
        Achievement({id = 15932, criteria = 5, oneline = true}), -- advanced gold
        Achievement({id = 17198, criteria = 5, oneline = true}), -- reverse bronze
        Achievement({id = 17199, criteria = 5, oneline = true}), -- reverse silver
        Achievement({id = 17200, criteria = 5, oneline = true}), -- reverse gold
        Section(L['dr_challenge']),
        Achievement({id = 18754, criteria = 9, oneline = true}), -- challenge bronze
        Achievement({id = 18755, criteria = 9, oneline = true}), -- challenge silver
        Achievement({id = 18756, criteria = 9, oneline = true}), -- challenge gold
        Spacer(), Section(L['dr_reverse_challenge']),
        Achievement({id = 18754, criteria = 10, oneline = true}), -- reverse challenge bronze
        Achievement({id = 18755, criteria = 10, oneline = true}), -- reverse challenge silver
        Achievement({id = 18756, criteria = 10, oneline = true}) -- reverse challenge gold
    }
}) -- River Rapids Route

--------------------------------- THALDRASZUS ---------------------------------

local function Thaldraszus_Rewards(b, c, r) -- basic, challenge, reverse challenge
    return {
        Achievement({id = 15924, criteria = b, oneline = true}), -- normal bronze
        Achievement({id = 15925, criteria = b, oneline = true}), -- normal silver
        Achievement({id = 15926, criteria = b, oneline = true}), -- normal gold
        Achievement({id = 15936, criteria = b, oneline = true}), -- advanced bronze
        Achievement({id = 15937, criteria = b, oneline = true}), -- advanced silver
        Achievement({id = 15938, criteria = b, oneline = true}), -- advanced gold
        Achievement({id = 17204, criteria = b, oneline = true}), -- reverse bronze
        Achievement({id = 17205, criteria = b, oneline = true}), -- reverse silver
        Achievement({id = 17206, criteria = b, oneline = true}), -- reverse gold
        Section(L['dr_challenge']),
        Achievement({id = 18760, criteria = c, oneline = true}), -- challenge bronze
        Achievement({id = 18761, criteria = c, oneline = true}), -- challenge silver
        Achievement({id = 18762, criteria = c, oneline = true}), -- challenge gold
        Spacer(), Section(L['dr_reverse_challenge']),
        Achievement({id = 18760, criteria = r, oneline = true}), -- reverse challenge bronze
        Achievement({id = 18761, criteria = r, oneline = true}), -- reverse challenge silver
        Achievement({id = 18762, criteria = r, oneline = true}) -- reverse challenge gold
    }
end

Thaldraszus.nodes[57777501] = Dragonrace({
    label = '{quest:67095}',
    normal = {2080, 52, 49},
    advanced = {2081, 45, 40},
    reverse = {2194, 46, 41},
    challenge = {2462, 50, 47},
    reverseChallenge = {2463, 49, 46},
    rewards = Thaldraszus_Rewards(1, 1, 2)
}) -- Flowing Forest Flight

Thaldraszus.nodes[57236690] = Dragonrace({
    label = '{quest:69957}',
    normal = {2092, 84, 81},
    advanced = {2093, 80, 75},
    reverse = {2195, 64, 59},
    challenge = {2464, 61, 58},
    reverseChallenge = {2465, 66, 63},
    rewards = Thaldraszus_Rewards(2, 3, 4)
}) -- Tyrhold Trial

Thaldraszus.nodes[37654893] = Dragonrace({
    label = '{quest:70051}',
    normal = {2096, 72, 69},
    advanced = {2097, 71, 66},
    reverse = {2196, 74, 69},
    challenge = {2466, 84, 81},
    reverseChallenge = {2467, 83, 80},
    rewards = Thaldraszus_Rewards(3, 5, 6)
}) -- Cliffside Circuit

Thaldraszus.nodes[60294159] = Dragonrace({
    label = '{quest:70059}',
    normal = {2098, 57, 54},
    advanced = {2099, 57, 52},
    reverse = {2197, 58, 53},
    challenge = {2468, 68, 65},
    reverseChallenge = {2469, 68, 65},
    rewards = Thaldraszus_Rewards(4, 7, 8)
}) -- Academy Ascent

Thaldraszus.nodes[39517619] = Dragonrace({
    label = '{quest:70157}',
    normal = {2101, 64, 61},
    advanced = {2102, 59, 54},
    reverse = {2198, 62, 57},
    challenge = {2470, 63, 60},
    reverseChallenge = {2471, 67, 64},
    rewards = Thaldraszus_Rewards(5, 9, 10)
}) -- Garden Gallivant

Thaldraszus.nodes[58053361] = Dragonrace({
    label = '{quest:70161}',
    normal = {2103, 53, 50},
    advanced = {2104, 50, 45},
    reverse = {2199, 52, 47},
    challenge = {2472, 59, 56},
    reverseChallenge = {2473, 57, 54},
    rewards = Thaldraszus_Rewards(6, 11, 12)
}) -- Caverns Criss-Cross

-------------------------------- WAKING SHORES --------------------------------

local function WakingShores_Rewards(b, c, r) -- basic, challenge, reverse challenge
    return {
        Achievement({id = 15915, criteria = b, oneline = true}), -- normal bronze
        Achievement({id = 15916, criteria = b, oneline = true}), -- normal silver
        Achievement({id = 15917, criteria = b, oneline = true}), -- normal gold
        Achievement({id = 15927, criteria = b, oneline = true}), -- advanced bronze
        Achievement({id = 15928, criteria = b, oneline = true}), -- advanced silver
        Achievement({id = 15929, criteria = b, oneline = true}), -- advanced gold
        Achievement({id = 17195, criteria = b, oneline = true}), -- reverse bronze
        Achievement({id = 17196, criteria = b, oneline = true}), -- reverse silver
        Achievement({id = 17197, criteria = b, oneline = true}), -- reverse gold
        Section(L['dr_challenge']),
        Achievement({id = 18748, criteria = c, oneline = true}), -- challenge bronze
        Achievement({id = 18749, criteria = c, oneline = true}), -- challenge silver
        Achievement({id = 18750, criteria = c, oneline = true}), -- challenge gold
        Spacer(), Section(L['dr_reverse_challenge']),
        Achievement({id = 18748, criteria = r, oneline = true}), -- reverse challenge bronze
        Achievement({id = 18749, criteria = r, oneline = true}), -- reverse challenge silver
        Achievement({id = 18750, criteria = r, oneline = true}) -- reverse challenge gold
    }
end

WakingShores.nodes[63327090] = Dragonrace({
    label = '{quest:66679}',
    normal = {2042, 66, 64},
    advanced = {2044, 57, 52},
    reverse = {2154, 55, 50},
    challenge = {2421, 57, 54},
    reverseChallenge = {2422, 60, 57},
    rewards = WakingShores_Rewards(1, 1, 2)
}) -- Ruby Lifeshrine Loop

WakingShores.nodes[47018558] = Dragonrace({
    label = '{quest:66721}',
    normal = {2048, 45, 43},
    advanced = {2049, 45, 40},
    reverse = {2176, 46, 41},
    challenge = {2423, 51, 48},
    reverseChallenge = {2424, 52, 49},
    rewards = {
        Achievement({id = 15915, criteria = 2, oneline = true}), -- normal bronze
        Achievement({id = 15916, criteria = 2, oneline = true}), -- normal silver
        Achievement({id = 15917, criteria = 2, oneline = true}), -- normal gold
        Achievement({id = 15927, criteria = 2, oneline = true}), -- advanced bronze
        Achievement({id = 15928, criteria = 2, oneline = true}), -- advanced silver
        Achievement({id = 15929, criteria = 2, oneline = true}), -- advanced gold
        Achievement({id = 17195, criteria = 2, oneline = true}), -- reverse bronze
        Achievement({id = 17196, criteria = 2, oneline = true}), -- reverse silver
        Achievement({id = 17197, criteria = 2, oneline = true}), -- reverse gold
        Section(L['dr_challenge']),
        Achievement({id = 18748, criteria = 15, oneline = true}), -- challenge bronze
        Achievement({id = 18749, criteria = 3, oneline = true}), -- challenge silver
        Achievement({id = 18750, criteria = 3, oneline = true}), -- challenge gold
        Spacer(), Section(L['dr_reverse_challenge']),
        Achievement({id = 18748, criteria = 16, oneline = true}), -- reverse challenge bronze
        Achievement({id = 18749, criteria = 4, oneline = true}), -- reverse challenge silver
        Achievement({id = 18750, criteria = 4, oneline = true}) -- reverse challenge gold
    }
}) -- Wild Preserve Slalom

WakingShores.nodes[41976730] = Dragonrace({
    label = '{quest:66727}',
    normal = {2052, 53, 47},
    advanced = {2053, 49, 44},
    reverse = {2177, 50, 45},
    challenge = {2425, 53, 50},
    reverseChallenge = {2426, 54, 51},
    rewards = WakingShores_Rewards(3, 5, 6)
}) -- Emberflow Flight

WakingShores.nodes[23268430] = Dragonrace({
    label = '{quest:66732}',
    normal = {2054, 56, 48},
    advanced = {2055, 50, 45},
    reverse = {2178, 53, 48},
    challenge = {2427, 56, 53},
    reverseChallenge = {2428, 56, 53},
    rewards = WakingShores_Rewards(4, 7, 8)
}) -- Apex Canopy River Run

WakingShores.nodes[55454113] = Dragonrace({
    label = '{quest:66777}',
    normal = {2056, 48, 43},
    advanced = {2057, 45, 40},
    reverse = {2179, 48, 43},
    challenge = {2429, 49, 46},
    reverseChallenge = {2430, 51, 48},
    rewards = WakingShores_Rewards(5, 9, 10)
}) -- Uktulut Coaster

WakingShores.nodes[73203393] = Dragonrace({
    label = '{quest:66786}',
    normal = {2058, 56, 53},
    advanced = {2059, 58, 53},
    reverse = {2180, 61, 56},
    challenge = {2431, 63, 60},
    reverseChallenge = {2432, 63, 60},
    rewards = WakingShores_Rewards(6, 11, 12)
}) -- Wingrest Roundabout

WakingShores.nodes[62777400] = Dragonrace({
    label = '{quest:66710}',
    normal = {2046, 66, 63},
    advanced = {2047, 66, 61},
    reverse = {2181, 65, 60},
    challenge = {2433, 67, 64},
    reverseChallenge = {2434, 74, 69},
    rewards = WakingShores_Rewards(7, 13, 14)
}) -- Flashfrost Flyover

WakingShores.nodes[42599445] = Dragonrace({
    label = '{quest:66725}',
    normal = {2050, 43, 41},
    advanced = {2051, 43, 38},
    reverse = {2182, 46, 41},
    challenge = {2435, 46, 43},
    reverseChallenge = {2436, 47, 44},
    rewards = {
        Achievement({id = 15915, criteria = 8, oneline = true}), -- normal bronze
        Achievement({id = 15916, criteria = 8, oneline = true}), -- normal silver
        Achievement({id = 15917, criteria = 8, oneline = true}), -- normal gold
        Achievement({id = 15927, criteria = 8, oneline = true}), -- advanced bronze
        Achievement({id = 15928, criteria = 8, oneline = true}), -- advanced silver
        Achievement({id = 15929, criteria = 8, oneline = true}), -- advanced gold
        Achievement({id = 17195, criteria = 8, oneline = true}), -- reverse bronze
        Achievement({id = 17196, criteria = 8, oneline = true}), -- reverse silver
        Achievement({id = 17197, criteria = 8, oneline = true}), -- reverse gold
        Section(L['dr_challenge']),
        Achievement({id = 18748, criteria = 3, oneline = true}), -- challenge bronze
        Achievement({id = 18749, criteria = 15, oneline = true}), -- challenge silver
        Achievement({id = 18750, criteria = 15, oneline = true}), -- challenge gold
        Spacer(), Section(L['dr_reverse_challenge']),
        Achievement({id = 18748, criteria = 4, oneline = true}), -- reverse challenge bronze
        Achievement({id = 18749, criteria = 16, oneline = true}), -- reverse challenge silver
        Achievement({id = 18750, criteria = 16, oneline = true}) -- reverse challenge gold
    }
}) -- Wild Preserve Circuit

------------------------------- ZARALEK CAVERN --------------------------------

local function ZaralekCavern_Rewards(b, c, r) -- basic, challenge, reverse challenge
    return {
        Achievement({id = 17483, criteria = b, oneline = true}), -- normal bronze
        Achievement({id = 17484, criteria = b, oneline = true}), -- normal silver
        Achievement({id = 17485, criteria = b, oneline = true}), -- normal gold
        Achievement({id = 17486, criteria = b, oneline = true}), -- advanced bronze
        Achievement({id = 17487, criteria = b, oneline = true}), -- advanced silver
        Achievement({id = 17488, criteria = b, oneline = true}), -- advanced gold
        Achievement({id = 17489, criteria = b, oneline = true}), -- reverse bronze
        Achievement({id = 17490, criteria = b, oneline = true}), -- reverse silver
        Achievement({id = 17491, criteria = b, oneline = true}), -- reverse gold
        Section(L['dr_challenge']),
        Achievement({id = 18786, criteria = c, oneline = true}), -- challenge bronze
        Achievement({id = 18787, criteria = c, oneline = true}), -- challenge silver
        Achievement({id = 18788, criteria = c, oneline = true}), -- challenge gold
        Spacer(), Section(L['dr_reverse_challenge']),
        Achievement({id = 18786, criteria = r, oneline = true}), -- reverse challenge bronze
        Achievement({id = 18787, criteria = r, oneline = true}), -- reverse challenge silver
        Achievement({id = 18788, criteria = r, oneline = true}) -- reverse challenge gold
    }
end

ZaralekCavern.nodes[38756061] = Dragonrace({
    label = '{quest:74839}',
    normal = {2246, 68, 63},
    advanced = {2252, 60, 55},
    reverse = {2258, 57, 52},
    challenge = {2486, 60, 57},
    reverseChallenge = {2487, 61, 58},
    rewards = ZaralekCavern_Rewards(1, 1, 2)
}) -- Crystal Circuit

ZaralekCavern.nodes[39054999] = Dragonrace({
    label = '{quest:74889}',
    normal = {2247, 80, 75},
    advanced = {2253, 73, 68},
    reverse = {2259, 73, 68},
    challenge = {2488, 75, 72},
    reverseChallenge = {2489, 75, 72},
    rewards = ZaralekCavern_Rewards(2, 3, 4)
}) -- Caldera Cruise

ZaralekCavern.nodes[54502371] = Dragonrace({
    label = '{quest:74939}',
    normal = {2248, 72, 69},
    advanced = {2254, 69, 64},
    reverse = {2260, 69, 64},
    challenge = {2490, 72, 69},
    reverseChallenge = {2491, 74, 71},
    rewards = ZaralekCavern_Rewards(3, 5, 6)
}) -- Brimstone Scramble

ZaralekCavern.nodes[58724503] = Dragonrace({
    label = '{quest:74951}',
    normal = {2249, 80, 75},
    advanced = {2255, 75, 70},
    reverse = {2261, 77, 42},
    challenge = {2492, 82, 79},
    reverseChallenge = {2493, 78, 75},
    rewards = ZaralekCavern_Rewards(4, 7, 8)
}) -- Shimmering Slalom

ZaralekCavern.nodes[58155759] = Dragonrace({
    label = '{quest:74972}',
    normal = {2250, 60, 55},
    advanced = {2256, 55, 50},
    reverse = {2262, 53, 48},
    challenge = {2494, 56, 53},
    reverseChallenge = {2495, 55, 52},
    rewards = ZaralekCavern_Rewards(5, 9, 10)
}) -- Loamm Roamm

ZaralekCavern.nodes[51264667] = Dragonrace({
    label = '{quest:75035}',
    normal = {2251, 67, 64},
    advanced = {2257, 62, 57},
    reverse = {2263, 62, 57},
    challenge = {2496, 70, 67},
    reverseChallenge = {2497, 68, 65},
    rewards = ZaralekCavern_Rewards(6, 11, 12)
}) -- Sulfur Sprint

-------------------------------------------------------------------------------
---------------------------------- KALIMDOR -----------------------------------
-------------------------------------------------------------------------------

local function Kalimdor_Rewards(c)
    return {
        Achievement({id = 17712, criteria = c, oneline = true}), -- normal bronze
        Achievement({id = 17713, criteria = c, oneline = true}), -- normal silver
        Achievement({id = 17714, criteria = c, oneline = true}), -- normal gold
        Achievement({id = 17715, criteria = c, oneline = true}), -- advanced bronze
        Achievement({id = 17716, criteria = c, oneline = true}), -- advanced silver
        Achievement({id = 17717, criteria = c, oneline = true}), -- advanced gold
        Achievement({id = 17718, criteria = c, oneline = true}), -- reverse bronze
        Achievement({id = 17719, criteria = c, oneline = true}), -- reverse silver
        Achievement({id = 17720, criteria = c, oneline = true}) -- reverse gold
    }
end

local Felwood = ns.maps[77] or Map({id = 77, settings = true})
Felwood.nodes[58181079] = Dragonrace({
    label = '{quest:75277}',
    normal = {2312, 75, 70},
    advanced = {2342, 66, 63},
    reverse = {2372, 65, 62},
    rewards = Kalimdor_Rewards(1)
}) -- Fel Flyover

local Winterspring = ns.maps[83] or Map({id = 83, settings = true})
Winterspring.nodes[68836804] = Dragonrace({
    label = '{quest:75310}',
    normal = {2313, 81, 76},
    advanced = {2343, 86, 73},
    reverse = {2373, 73, 70},
    rewards = Kalimdor_Rewards(2)
}) -- Winter Wander

local Hyjal = ns.maps[198] or Map({id = 198, settings = true})
Hyjal.nodes[56702790] = Dragonrace({
    label = '{quest:75317}',
    normal = {2314, 50, 45},
    advanced = {2344, 46, 41},
    reverse = {2374, 46, 41},
    rewards = Kalimdor_Rewards(3)
}) -- Nordrassil Spiral

Hyjal.nodes[21905420] = Dragonrace({
    label = '{quest:75330}',
    normal = {2315, 75, 70},
    advanced = {2345, 72, 69},
    reverse = {2375, 72, 67},
    rewards = Kalimdor_Rewards(4)
}) -- Hyjal Hotfoot

local Azshara = ns.maps[76] or Map({id = 76, settings = true})
Azshara.nodes[67202617] = Dragonrace({
    label = '{quest:75347}',
    normal = {2316, 105, 100},
    advanced = {2346, 100, 94},
    reverse = {2376, 100, 94},
    rewards = Kalimdor_Rewards(5)
}) -- Rocketway Ride

local Ashenvale = ns.maps[63] or Map({id = 63, settings = true})
Ashenvale.nodes[37043058] = Dragonrace({
    label = '{quest:75378}',
    normal = {2317, 69, 64},
    advanced = {2347, 64, 59},
    reverse = {2377, 64, 59},
    rewards = Kalimdor_Rewards(6)
}) -- Ashenvale Ambit

local Durotar = ns.maps[1] or Map({id = 1, settings = true})
Durotar.nodes[56906286] = Dragonrace({
    label = '{quest:75385}',
    normal = {2318, 85, 80},
    advanced = {2348, 78, 73},
    reverse = {2378, 78, 73},
    rewards = Kalimdor_Rewards(7)
}) -- Durotar Tour

local StonetalonMontains = ns.maps[65] or Map({id = 65, settings = true})
StonetalonMontains.nodes[66778681] = Dragonrace({
    label = '{quest:75394}',
    normal = {2319, 85, 80},
    advanced = {2349, 75, 70},
    reverse = {2379, 75, 70},
    rewards = Kalimdor_Rewards(8)
}) -- Webwinder Weave

local Desolace = ns.maps[66] or Map({id = 66, settings = true})
Desolace.nodes[28106328] = Dragonrace({
    label = '{quest:75409}',
    normal = {2320, 80, 75},
    advanced = {2350, 80, 75},
    reverse = {2380, 75, 70},
    rewards = Kalimdor_Rewards(9)
}) -- Desolace Drift

local SouthernBarrens = ns.maps[199] or Map({id = 199, settings = true})
SouthernBarrens.nodes[41431300] = Dragonrace({
    label = '{quest:75412}',
    normal = {2321, 53, 48},
    advanced = {2351, 48, 43},
    reverse = {2381, 49, 44},
    rewards = Kalimdor_Rewards(10)
}) -- Barrens Divide Dive

SouthernBarrens.nodes[42809308] = Dragonrace({
    label = '{quest:75437}',
    normal = {2322, 58, 53},
    advanced = {2352, 52, 47},
    reverse = {2382, 52, 47},
    rewards = Kalimdor_Rewards(11)
}) -- Razorfen Roundabout

local ThousandNeedles = ns.maps[64] or Map({id = 64, settings = true})
ThousandNeedles.nodes[09731735] = Dragonrace({
    label = '{quest:75463}',
    normal = {2323, 92, 87},
    advanced = {2353, 82, 77},
    reverse = {2383, 82, 77},
    rewards = Kalimdor_Rewards(12)
}) -- Thousand Needles Thread

local Feralas = ns.maps[69] or Map({id = 69, settings = true})
Feralas.nodes[64125435] = Dragonrace({
    label = '{quest:75468}',
    normal = {2324, 94, 89},
    advanced = {2354, 89, 84},
    reverse = {2384, 89, 84},
    rewards = Kalimdor_Rewards(13)
}) -- Feralas Ruins Ramble

local Silithus = ns.maps[81] or Map({id = 81, settings = true})
Silithus.nodes[39548419] = Dragonrace({
    label = '{quest:75472}',
    normal = {2325, 80, 75},
    advanced = {2355, 71, 66},
    reverse = {2385, 74, 69},
    rewards = Kalimdor_Rewards(14)
}) -- Ahn'Qiraj Circuit

local Uldum = ns.maps[249] or Map({id = 249, settings = true})
Uldum.nodes[55764218] = Dragonrace({
    label = '{quest:75481}',
    normal = {2326, 89, 84},
    advanced = {2356, 81, 76},
    reverse = {2386, 81, 76},
    rewards = Kalimdor_Rewards(15)
}) -- Uldum Tour

local UngoroCrater = ns.maps[78] or Map({id = 78, settings = true})
UngoroCrater.nodes[53379308] = Dragonrace({
    label = '{quest:75485}',
    normal = {2327, 105, 100},
    advanced = {2357, 92, 87},
    reverse = {2387, 96, 91},
    rewards = Kalimdor_Rewards(16)
}) -- Un'Goro Crater Circuit

-------------------------------------------------------------------------------
------------------------------- EASTERN KINGDOMS ------------------------------
-------------------------------------------------------------------------------

-- local function EasternKingdoms_Rewards(c)
--     return {
--         Achievement({id = 18566, criteria = c, oneline = true}), -- normal bronze
--         Achievement({id = 18567, criteria = c, oneline = true}), -- normal silver
--         Achievement({id = 18568, criteria = c, oneline = true}), -- normal gold
--         Achievement({id = 18569, criteria = c, oneline = true}), -- advanced bronze
--         Achievement({id = 18570, criteria = c, oneline = true}), -- advanced silver
--         Achievement({id = 18571, criteria = c, oneline = true}), -- advanced gold
--         Achievement({id = 18572, criteria = c, oneline = true}), -- reverse bronze
--         Achievement({id = 18573, criteria = c, oneline = true}), -- reverse silver
--         Achievement({id = 18574, criteria = c, oneline = true}) -- reverse gold
--     }
-- end

-- local Gilneas = ns.maps[nil] or Map({id = nil, settings = true}) -- Missing Map ID
-- Gilneas.nodes[10001000] = Dragonrace({
--     label = '{quest:76309}',
--     normal = {nil, nil, nil},
--     advanced = {nil, nil, nil},
--     reverse = {nil, nil, nil},
--     rewards = EasternKingdoms_Rewards(1)
-- }) -- Gilneas Gambit

-- local LochModan = ns.maps[48] or Map({id = 48, settings = true})
-- LochModan.nodes[10001000] = Dragonrace({
--     label = '{quest:76339}',
--     normal = {nil, nil, nil},
--     advanced = {nil, nil, nil},
--     reverse = {nil, nil, nil},
--     rewards = EasternKingdoms_Rewards(2)
-- }) -- Loch Modan Loop

-- local SearingGorge = ns.maps[32] or Map({id = 32, settings = true})
-- SearingGorge.nodes[10001000] = Dragonrace({
--     label = '{quest:76357}',
--     normal = {nil, nil, nil},
--     advanced = {nil, nil, nil},
--     reverse = {nil, nil, nil},
--     rewards = EasternKingdoms_Rewards(3)
-- }) -- Searing Slalom

-- TwilightHighlands.nodes[10001000] = Dragonrace({
--     label = '{quest:76364}',
--     normal = {nil, nil, nil},
--     advanced = {nil, nil, nil},
--     reverse = {nil, nil, nil},
--     rewards = EasternKingdoms_Rewards(4)
-- }) -- Twilight Terror

-- local DeadwindPass = ns.maps[42] or Map({id = 42, settings = true})
-- DeadwindPass.nodes[10001000] = Dragonrace({
--     label = '{quest:76380}',
--     normal = {nil, nil, nil},
--     advanced = {nil, nil, nil},
--     reverse = {nil, nil, nil},
--     rewards = EasternKingdoms_Rewards(5)
-- }) -- Deadwind Derby

-- local ElwynnForest = ns.maps[37] or Map({id = 37, settings = true})
-- ElwynnForest.nodes[10001000] = Dragonrace({
--     label = '{quest:76397}',
--     normal = {nil, nil, nil},
--     advanced = {nil, nil, nil},
--     reverse = {nil, nil, nil},
--     rewards = EasternKingdoms_Rewards(6)
-- }) -- Elwynn Forest Flash

-- local NorthernStranglethorn = ns.maps[50] or Map({id = 50, settings = true})
-- NorthernStranglethorn.nodes[10001000] = Dragonrace({
--     label = '{quest:76438}',
--     normal = {nil, nil, nil},
--     advanced = {nil, nil, nil},
--     reverse = {nil, nil, nil},
--     rewards = EasternKingdoms_Rewards(7)
-- }) -- Gurubashi Gala

-- local DunMorogh = ns.maps[27] or Map({id = 27, settings = true})
-- DunMorogh.nodes[10001000] = Dragonrace({
--     label = '{quest:76445}',
--     normal = {nil, nil, nil},
--     advanced = {nil, nil, nil},
--     reverse = {nil, nil, nil},
--     rewards = EasternKingdoms_Rewards(8)
-- }) -- Ironforge Interceptor

-- local BlastedLands = ns.maps[17] or Map({id = 17, settings = true})
-- BlastedLands.nodes[10001000] = Dragonrace({
--     label = '{quest:76469}',
--     normal = {nil, nil, nil},
--     advanced = {nil, nil, nil},
--     reverse = {nil, nil, nil},
--     rewards = EasternKingdoms_Rewards(9)
-- }) -- Blasted Lands Bolt

-- local EasternPlaguelands = ns.maps[22] or Map({id = 22, settings = true})
-- EasternPlaguelands.nodes[10001000] = Dragonrace({
--     label = '{quest:76510}',
--     normal = {nil, nil, nil},
--     advanced = {nil, nil, nil},
--     reverse = {nil, nil, nil},
--     rewards = EasternKingdoms_Rewards(10)
-- }) -- Plaguelands Plunge

-- local CapeOfStranglethorn = ns.maps[210] or Map({id = 210, settings = true})
-- CapeOfStranglethorn.nodes[10001000] = Dragonrace({
--     label = '{quest:76515}',
--     normal = {nil, nil, nil},
--     advanced = {nil, nil, nil},
--     reverse = {nil, nil, nil},
--     rewards = EasternKingdoms_Rewards(11)
-- }) -- Booty Bay Blast

-- local Badlands = ns.maps[15] or Map({id = 15, settings = true})
-- Badlands.nodes[10001000] = Dragonrace({
--     label = '{quest:76523}',
--     normal = {nil, nil, nil},
--     advanced = {nil, nil, nil},
--     reverse = {nil, nil, nil},
--     rewards = EasternKingdoms_Rewards(12)
-- }) -- Fuselight Night Flight

-- local TwilightHighlands = ns.maps[241] or Map({id = 241, settings = true})
-- TwilightHighlands.nodes[10001000] = Dragonrace({
--     label = '{quest:76527}',
--     normal = {nil, nil, nil},
--     advanced = {nil, nil, nil},
--     reverse = {nil, nil, nil},
--     rewards = EasternKingdoms_Rewards(13)
-- }) -- Krazzworks Klash

-- local RedridgeMountains = ns.maps[49] or Map({id = 49, settings = true})
-- RedridgeMountains.nodes[10001000] = Dragonrace({
--     label = '{quest:76536}',
--     normal = {nil, nil, nil},
--     advanced = {nil, nil, nil},
--     reverse = {nil, nil, nil},
--     rewards = EasternKingdoms_Rewards(14)
-- }) -- Redridge Rally

-------------------------------------------------------------------------------
----------------------------------- OUTLANDS ----------------------------------
-------------------------------------------------------------------------------

-- local function Outlands_Rewards(c)
--     return {
--         Achievement({id = 18566, criteria = c, oneline = true}), -- normal bronze
--         Achievement({id = 18567, criteria = c, oneline = true}), -- normal silver
--         Achievement({id = 18568, criteria = c, oneline = true}), -- normal gold
--         Achievement({id = 18569, criteria = c, oneline = true}), -- advanced bronze
--         Achievement({id = 18570, criteria = c, oneline = true}), -- advanced silver
--         Achievement({id = 18571, criteria = c, oneline = true}), -- advanced gold
--         Achievement({id = 18572, criteria = c, oneline = true}), -- reverse bronze
--         Achievement({id = 18573, criteria = c, oneline = true}), -- reverse silver
--         Achievement({id = 18574, criteria = c, oneline = true}) -- reverse gold
--     }
-- end

-- local BladesEdge = ns.maps[105] or Map({id = 105, settings = true})
-- local HellfirePeninsula = ns.maps[100] or Map({id = 100, settings = true})
-- local Nagrand = ns.maps[107] or Map({id = 107, settings = true})
-- local Netherstorm = ns.maps[109] or Map({id = 109, settings = true})
-- local ShadowmoonValley = ns.maps[104] or Map({id = 104, settings = true})
-- local TerokkarForest = ns.maps[108] or Map({id = 108, settings = true})
-- local Zangarmarsh = ns.maps[102] or Map({id = 102, settings = true})

-------------------------------------------------------------------------------
---------------------------------- NORTHREND ----------------------------------
-------------------------------------------------------------------------------

-- local function Northrend_Rewards(c)
--     return {
--         Achievement({id = nil, criteria = c, oneline = true}), -- normal bronze
--         Achievement({id = nil, criteria = c, oneline = true}), -- normal silver
--         Achievement({id = nil, criteria = c, oneline = true}), -- normal gold
--         Achievement({id = nil, criteria = c, oneline = true}), -- advanced bronze
--         Achievement({id = nil, criteria = c, oneline = true}), -- advanced silver
--         Achievement({id = nil, criteria = c, oneline = true}), -- advanced gold
--         Achievement({id = nil, criteria = c, oneline = true}), -- reverse bronze
--         Achievement({id = nil, criteria = c, oneline = true}), -- reverse silver
--         Achievement({id = nil, criteria = c, oneline = true}) -- reverse gold
--     }
-- end

-------------------------------------------------------------------------------
----------------------------------- PANDARIA ----------------------------------
-------------------------------------------------------------------------------

-- local function Pandaria_Rewards(c)
--     return {
--         Achievement({id = nil, criteria = c, oneline = true}), -- normal bronze
--         Achievement({id = nil, criteria = c, oneline = true}), -- normal silver
--         Achievement({id = nil, criteria = c, oneline = true}), -- normal gold
--         Achievement({id = nil, criteria = c, oneline = true}), -- advanced bronze
--         Achievement({id = nil, criteria = c, oneline = true}), -- advanced silver
--         Achievement({id = nil, criteria = c, oneline = true}), -- advanced gold
--         Achievement({id = nil, criteria = c, oneline = true}), -- reverse bronze
--         Achievement({id = nil, criteria = c, oneline = true}), -- reverse silver
--         Achievement({id = nil, criteria = c, oneline = true}) -- reverse gold
--     }
-- end

-------------------------------------------------------------------------------
--------------------------------- BROKEN ISLES --------------------------------
-------------------------------------------------------------------------------

-- local function BrokenIsles_Rewards(c)
--     return {
--         Achievement({id = nil, criteria = c, oneline = true}), -- normal bronze
--         Achievement({id = nil, criteria = c, oneline = true}), -- normal silver
--         Achievement({id = nil, criteria = c, oneline = true}), -- normal gold
--         Achievement({id = nil, criteria = c, oneline = true}), -- advanced bronze
--         Achievement({id = nil, criteria = c, oneline = true}), -- advanced silver
--         Achievement({id = nil, criteria = c, oneline = true}), -- advanced gold
--         Achievement({id = nil, criteria = c, oneline = true}), -- reverse bronze
--         Achievement({id = nil, criteria = c, oneline = true}), -- reverse silver
--         Achievement({id = nil, criteria = c, oneline = true}) -- reverse gold
--     }
-- end

-------------------------------------------------------------------------------
---------------------------- VignettePinMixin Hook ----------------------------
-------------------------------------------------------------------------------

hooksecurefunc(VignettePinMixin, 'DisplayNormalTooltip', function(self)
    if self.vignetteID ~= 5104 then return end

    local mapID = self:GetMap().mapID
    local group = ns.groups.DRAGONRACE
    if not ns.maps[mapID] or not group:GetDisplay(mapID) then return end

    local x = C_VignetteInfo.GetVignettePosition(self.vignetteGUID, mapID).x
    local y = C_VignetteInfo.GetVignettePosition(self.vignetteGUID, mapID).y
    local node = ns.maps[mapID].nodes[HandyNotes:getCoord(x, y)]
    if not node then return end

    GameTooltip:SetText(ns.RenderLinks(node.label, true))
    GameTooltip:AddLine(ns.RenderLinks(node.sublabel, true), 1, 1, 1)
    if ns:GetOpt('show_notes') then
        GameTooltip:AddLine(' ')
        GameTooltip:AddLine(ns.RenderLinks(node.note), 1, 1, 1, true)
    end
    if ns:GetOpt('show_loot') then node:RenderRewards(GameTooltip) end

    GameTooltip:Show()
end)

-------------------------------------------------------------------------------
---------------------------- AreaPOIPinMixin Hook -----------------------------
-------------------------------------------------------------------------------

local DRAGONRACE_POI = {
    -- Kalimdor
    [7494] = 58181079, -- Fel Flyby
    [7495] = 68836804, -- Winter Wander
    [7496] = 56702790, -- Nordrassil Spiral
    [7497] = 21905420, -- Hyjal Hotfoot
    [7498] = 67202617, -- Rocketway Ride
    [7499] = 37043058, -- Ashenvale Ambit
    [7500] = 56906286, -- Durotar Tour
    [7501] = 66778681, -- Webwinder Weave
    [7502] = 28106328, -- Desolace Drift
    [7503] = 41431300, -- Barrens Divide Dive
    [7504] = 42809308, -- Razorfen Roundabout
    [7505] = 09731735, -- Thousand Needles Thread
    [7506] = 64125435, -- Feralas Ruins Ramble
    [7507] = 39548419, -- Ahn'Qiraj Circuit
    [7508] = 55764218, -- Uldum Tour
    [7509] = 53379308 -- Un'Goro Crater Circuit
    -- Eastern Kingdoms
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
    -- Outlands
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
    -- Northrend
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
    -- Pandaria
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
    -- Broken Isles
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
}

hooksecurefunc(AreaPOIPinMixin, 'TryShowTooltip', function(self)
    if not DRAGONRACE_POI[self.areaPoiID] then return end
    local mapID = self:GetMap().mapID
    local group = ns.groups.DRAGONRACE

    if not ns.maps[mapID] or not group:GetDisplay(mapID) then return end

    local node = ns.maps[mapID].nodes[DRAGONRACE_POI[self.areaPoiID]]
    if not node then return end

    GameTooltip:AddLine(' ')
    GameTooltip:AddLine(ns.RenderLinks(node.sublabel, true), 1, 1, 1)
    if ns:GetOpt('show_notes') then
        GameTooltip:AddLine(' ')
        GameTooltip:AddLine(ns.RenderLinks(node.note), 1, 1, 1, true)
    end
    if ns:GetOpt('show_loot') then
        GameTooltip:AddLine(' ')
        for i, reward in ipairs(node.rewards) do
            if reward:IsEnabled() then reward:Render(GameTooltip) end
        end
    end

    -- GameTooltip:AddLine('\nPOI ID: ' .. self.areaPoiID) -- Debug

    GameTooltip:Show()
end)
