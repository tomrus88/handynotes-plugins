-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Class = ns.Class
local Map = ns.Map
local isinstance = ns.isinstance

local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Quest = ns.reward.Quest
local Transmog = ns.reward.Transmog
local Toy = ns.reward.Toy

local Path = ns.poi.Path
local POI = ns.poi.POI

local options = ns.options.args.VisibilityGroup.args
local defaults = ns.optionDefaults.profile

-------------------------------------------------------------------------------

local NIGHTFAE = ns.covenants.FAE

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=1565 })
local nodes = map.nodes

function map:enabled (node, coord, minimap)
    if not Map.enabled(self, node, coord, minimap) then return false end

    if node == map.intro then return true end

    -- add rlabel and warning if covenant doesn't match
    ns.processCovenant(node)

    local profile = ns.addon.db.profile
    if isinstance(node, Rare) then return profile.rare_ardenweald end
    if isinstance(node, Treasure) then return profile.treasure_ardenweald end
    return true
end

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

defaults['rare_ardenweald'] = true
defaults['treasure_ardenweald'] = true

options.groupArdenweald = {
    type = "header",
    name = C_Map.GetMapInfo(map.id).name,
    order = 0,
}

options.rareArdenweald = {
    type = "toggle",
    arg = "rare_ardenweald",
    name = L["options_toggle_rares"],
    desc = L["options_toggle_rares_desc"],
    order = 1,
    width = "normal",
}

options.treasureArdenweald = {
    type = "toggle",
    arg = "treasure_ardenweald",
    name = L["options_toggle_treasures"],
    desc = L["options_toggle_treasures_desc"],
    order = 2,
    width = "normal",
}

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- Mysterious Mushroom Ring (47924018)

nodes[34606800] = Rare({id=164477, quest=59226, rewards={
    Achievement({id=14309, criteria=48714})
}}) -- Deathbinder Hroth

nodes[47522845] = Rare({id=164238, quest={59201,62271}, rewards={
    Achievement({id=14309, criteria=48784}),
    Pet({item=180631, id=2920}) -- Gorm Needler
}, pois={
    Path({
        47522845, 48052741, 48692650, 49172530, 49652403, 49022308, 48842184,
        48162099, 47362116, 46712135, 46332211, 46432338, 46452445, 46602590,
        46932693, 47112793, 47522845
    })
}, note=L["deifir_note"]}) -- Deifir the Untamed

nodes[48397717] = Rare({id=163229, quest=58987, rewards={
    Achievement({id=14309, criteria=48794})
}}) -- Dustbrawl

nodes[57862955] = Rare({id=167851, quest=60266, rewards={
    Achievement({id=14309, criteria=48790})
}, note=L["lehgo_note"]}) -- Egg-Tender Leh'go

nodes[68612765] = Rare({id=171688, quest=61184, rewards={
    Achievement({id=14309, criteria=48798})
}, note=L["faeflayer_note"]}) -- Faeflayer

nodes[54067601] = Rare({id=163370, quest=59006, rewards={
    Achievement({id=14309, criteria=48795})
}}) -- Gormbore

nodes[27885248] = Rare({id=164107, quest=59145, rewards={
    Achievement({id=14309, criteria=48781}),
    Mount({item=180725, id=1362}) -- Spinemaw Gladechewer
}}) -- Gormtamer Tizo

nodes[32423026] = Rare({
    id=164112,
    quest=59157,
    requires="{item:175247}",
    note=L["humongozz_note"],
    rewards={
        Achievement({id=14309, criteria=48782}),
        Mount({item=182650, id=1415}) -- Arboreal Gulper
    }
}) -- Humon'gozz

nodes[67465147] = Rare({id=160448, quest=59221, rewards={
    Achievement({id=14309, criteria=48787}),
    Transmog({item=179596, slot=L["cosmetic"]}), -- Drust Mask of Dominance
    Quest({id=62246}) -- A Fallen Friend
}}) -- Hunter Vivian

-- nodes[] = Rare({id=164093, quest=nil, rewards={
--     Achievement({id=14309, criteria=48780})
-- }}) -- Macabre

nodes[62102470] = Rare({id=165053, quest=nil, rewards={
    Achievement({id=14309, criteria=48788})
}}) -- Mymaen

nodes[50092091] = Rare({id=164547, quest=59235, rewards={
    Achievement({id=14309, criteria=48715}),
    Item({item=182179, quest=62434}) -- Runestag Soul
}}) -- Mystic Rainbowhorn

-- nodes[] = Rare({id=168135, quest=nil, rewards={
--     Achievement({id=14309, criteria=48793})
-- }}) -- Night Mare

nodes[51105740] = Rare({id=164391, quest={59208,62270}, rewards={
    Achievement({id=14309, criteria=48785}),
    Pet({item=180643, id=2908}) -- Chirpy Valeshrieker
}, note=L["old_ardeite_note"]}) -- Old Ardeite

nodes[65104430] = Rare({id=167726, quest=60273, rewards={
    Achievement({id=14309, criteria=48791})
}, note=L["rootwrithe_note"]}) -- Rootwrithe

nodes[65702430] = Rare({id=167724, quest=60258, rewards={
    Achievement({id=14309, criteria=48789}),
    Item({item=175729, note=L["trinket"]}) -- Rotbriar Sprout
}, note=L["rotbriar_note"]}) -- Rotbriar Changeling

nodes[72425175] = Rare({id=171451, quest=61177, rewards={
    Achievement({id=14309, criteria=48797}),
    Transmog({item=180164, slot=L["staff"]}) -- Soultwister's Scythe
}}) -- Soultwister Cero

nodes[37675917] = Rare({id=164415, quest=59220, covenant=NIGHTFAE, rewards={
    Achievement({id=14309, criteria=48786}),
    Item({item=182183, quest=62439}) -- Wolfhawk Soul
}, note=L["skuld_vit_note"]}) -- Skuld Vit

nodes[59304660] = Rare({id=167721, quest=60290, rewards={
    Achievement({id=14309, criteria=48792})
}, note=L["slumbering_note"]}) -- The Slumbering Emperor

nodes[30115536] = Rare({id=168647, quest=61632, rewards={
    Achievement({id=14309, criteria=48796}),
    Mount({item=180730, id=1393}), -- Glimmerfur Prowler
    Item({item=182176, quest=62431}) -- Shadowstalker Soul
}, pois={
    Path({29265611, 30115536, 30875464})
},note=L["valfir_note"]}) -- Valfir the Unrelenting

nodes[58306180] = Rare({id=164147, quest=59170, rewards={
    Achievement({id=14309, criteria=48783})
}, note=L["wrigglemortis_note"]}) -- Wrigglemortis

--------------------------- STAR LAKE AMPHITHEATER ----------------------------

local StarLake = Class('StarLake', Rare, { _rewards = {
    Achievement({id=14309, criteria={
        {id=48709, quest=nil}, -- Astra, As Azshara
        {id=48710, quest=nil}, -- Dreamweaver, As N'Zoth
        {id=48704, quest=nil}, -- Glimmerdust, As Jaina
        {id=48707, quest=nil}, -- Glimmerdust, As Kil'Jaeden
        {id=48708, quest=nil}, -- Mi'Kai, As Argus
        {id=48705, quest=nil}, -- Niya, As Xavius
        {id=48706, quest=nil}  -- Senthii, As Gul'dan
    }}),
    Achievement({id=14353, criteria={
        48708, -- Argus
        48709, -- Azshara
        48706, -- Gul'dan
        48704, -- Jaina
        48707, -- Kil'jaeden
        48710, -- N'Zoth
        48705  -- Xavius
    }, lineAbove=true})
}, note=L["star_lake_note"] })

-- local STAR_QUESTS = {}
-- for i, criteria in ipairs(StarLake._rewards[1].criteria) do
--     POOL_QUESTS[#POOL_QUESTS + 1] = criteria.quest
-- end

function StarLake.getters:rewards ()
    -- for i, criteria in ipairs(self._rewards[1].criteria) do
    --     if C_QuestLog.IsQuestFlaggedCompleted(criteria.quest) then
    --         criteria.note = criteria._note..'  '..ns.status.Green(L['D'])
    --     else
    --         criteria.note = criteria._note..'  '..ns.status.Red(L['A'])
    --     end
    -- end
    return self._rewards
end

-- function PoolsRare.getters:rlabel ()
--     local count = 0
--     for i, quest in ipairs(POOL_QUESTS) do
--         if C_QuestLog.IsQuestFlaggedCompleted(quest) then
--             count = count + 1
--         end
--     end
--     local color = (count == #POOL_QUESTS) and ns.status.Green or ns.status.Gray
--     return color(tostring(count)..'/'..#POOL_QUESTS)
-- end

nodes[41254443] = StarLake({id=171743, label=L["star_lake"], quest=nil})

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

nodes[56002101] = Treasure({quest=61072, rewards={
    Achievement({id=14313, criteria=50031}),
    Pet({item=180630, id=2921}) -- Gorm Harrier
}}) -- Aerto's Body

-- nodes[] = Treasure({quest=, rewards={
--     Achievement({id=14313, criteria=50039})
-- }}) -- Cache of the Moon

nodes[36236527] = Treasure({quest=nil, rewards={
    Achievement({id=14313, criteria=50044})
}}) -- Cache of the Night

nodes[37646159] = Treasure({quest=61068, rewards={
    Achievement({id=14313, criteria=50045}),
    Transmog({item=179594, slot=L["leather"]}) -- Witherscorn Guise
}, pois={
    POI({36196520, scale=0.75})
}, note=L["darkreach_supplies"]}) -- Darkreach Supplies

nodes[41953253] = Treasure({quest=61147, rewards={
    Achievement({id=14313, criteria=50040}),
    Pet({item=180640, id=2911}) -- Amber Glitterwing
}, pois={
    POI({41413161, scale=0.5}), -- Bounding Shroom
    POI({31763247, scale=0.5}) -- Aromatic Flowers
}, note=L["desiccated_moth"]}) -- Desiccated Moth

nodes[37683688] = Treasure({quest=61070, rewards={
    Achievement({id=14313, criteria=50041}),
    Transmog({item=179510, slot=L["warglaive"]}) -- Dreamsong Warglaive
}, pois={
    POI({43592290}) -- Bounding Shroom
}, note=L["dreamsong_heart"]}) -- Dreamsong Heart

nodes[44827587] = Treasure({
    quest=61175,
    note=L["elusive_faerie_cache"],
    rewards={
        Achievement({id=14313, criteria=50043}),
        Transmog({item=179512, slot=L["1h_sword"]}) -- Dreamsong Saber
    },
    pois={
        Path({
            44827587, 44477530, 44417436, 44647334, 44877246, 45057161,
            45417087, 45837033, 46497011
        }) -- to Faerie Lamp
    }
}) -- Elusive Faerie Cache

nodes[36422506] = Treasure({quest=62259, rewards={
    Achievement({id=14313, criteria=50042}),
    Item({item=183129, quest=62259}) -- Anima-Laden Dreamcatcher
}, note=L["enchanted_dreamcatcher"]}) -- Enchanted Dreamcatcher

nodes[49715589] = Treasure({quest=61073, rewards={
    Achievement({id=14313, criteria=50035}),
    Pet({item=182673, id=3022}) -- Shimmerbough Hoarder
}, note=L["faerie_trove"]}) -- Faerie Trove

nodes[67803462] = Treasure({quest=61165, rewards={
    Achievement({id=14313, criteria=50036})
}, note=L["harmonic_chest"]}) -- Harmonic Chest

nodes[48213927] = Treasure({quest=61067, rewards={
    Achievement({id=14313, criteria=50037}),
    Toy({item=182729}) -- Hearty Dragon Plume
}, pois={
    POI({46424032, 48964102, 50084159, scale=0.5})
}, note=L["hearty_dragon_plume"]}) -- Hearty Dragon Plume

nodes[48282031] = Treasure({quest=62187, rewards={
    Achievement({id=14313, criteria=50032}),
    Item({item=182731, quest=62187}) -- Satchel of Culexwood
}}) -- Lost Satchel

nodes[31764105] = Treasure({quest=nil, rewards={
    Achievement({id=14313, criteria=50038}),
    Pet({item=180645, id=2905}) -- Dodger
}}) -- Playful Vulpin Befriended (171206)

nodes[76672974] = Treasure({quest=62186, rewards={
    Achievement({id=14313, criteria=50034}),
    Item({item=182730, quest=62186}) -- Swollen Anima Seed
}, note=L["swollen_anima_seed"]}) -- Swollen Anima Seed

nodes[52943729] = Treasure({quest=61065, rewards={
    Achievement({id=14313, criteria=50033}),
    Pet({item=180642, id=2909})
}}) -- Veilwing Egg (Ancient Cloudfeather Egg)

-------------------------------------------------------------------------------

ns.maps[map.id] = map
