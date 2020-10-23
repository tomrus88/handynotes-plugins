local ADDON_NAME, _ = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "ruRU", false, true)
if not L then return end

-------------------------------------------------------------------------------
----------------------------------- DRUSTVAR ----------------------------------
-------------------------------------------------------------------------------

L["merchants_chest_note"] = "Kill the nearby {npc:137468} that is holding a keyring to acquire {item:163710}"
L["the_caterer_note"] = "Use the Ruined Wedding Cake to activate."
L["wicker_pup_note"] = [[
Combine the items from all four chests to create a {npc:143189}.

• Bespelled: {item:163790}
• Enchanted: {item:163796}
• Ensorcelled: {item:163791}
• Hexed: {item:163789}
]]

-------------------------------------------------------------------------------
----------------------------------- MECHAGON ----------------------------------
-------------------------------------------------------------------------------

L["avenger_note"] = "Убить КПХ-Быстроног/МГ можно только тогда, когда Карлс Пропеллерз появляется в Ржавом Болту."
L["beastbot_note"] = "Создайте блок питания гориллобота у Паскаль-К0Р0Л6, для активации."
L["cogstar_note"] = "Убивайте мобов Улучшенный часовой в любом месте локации, пока он не телепортируется, чтобы усилить их."
L["crazed_trogg_note"] = "Используйте поливайбота с краской, наполненный краской флакон или ботов во Дворе Бондо, чтобы покрыть себя цветом, который он кричит."
L["deepwater_note"] = "Создайте приманку сотни фатомов у Паскаль-К0Р0Л6 для призыва."
L["doppel_gang"] = "Банда двойников"
L["doppel_note"] = 'Вместе с двумя игроками используйте Клапан регулировки давления который дается в награду за задание "Строительная горячка".'
L["drill_rig"] = "Требуется буровая установка "
L["foul_manifest_note"] = "Активируйте Автоматический выключатель по координатам 67.56 55.53, затем соедините 3 пилона на озере."
L["furor_note"] = 'Во время задания "Помощь Нордрассила" нажимайте на маленькие голубые грибы, пока он не появится.'
L["killsaw_note"] = "Появляется в случайном месте в вырубаемом лесу, вероятно, в ответ на убийство Циркулярных лесопилов. Не появляется в дни, когда Торговая компания находится в лесу, а Циркуляры недоступны."
L["leachbeast_note"] = "Используйте Экзотермический испарительный змеевик, чтобы активировать Устройство для изменения погоды."
L["nullifier_note"] = 'Взломайте "Уязвимый узел нейтрализатора", используя перфокарту "Взломщик цепи удаленного действия" или Разбитый транспортный узел. Первый выпадает из Короля-над-свалкой, а второй - из миньонов, атакующих буровые установки ДЫР-ДЖ41 и ДЫР-ДЖ99.'
L["scrapclaw_note"] = "У берега в воде."
L["sparkqueen_note"] = 'Появляется только тогда, когда доступно задание "Жуки – множество их!".'
L["rusty_note"] = "Создайте Персональная машина времени у Паскаль-К0Р0Л6, чтобы войти в альтернативное будущее. Появляется только тогда, когда в Ржавом Болту нет Хроми."
L["vaultbot_note"] = "Необходимо доевсти его до Болтена Искропрыжика по координатам 63.23 38.78 во Дворе Бондо или открыть его Ключом от сейфобота которым можно создать у Паскаль-К0Р0Л6."

L["iron_chest"] = "Сейф братства Стальных Волн"
L["mech_chest"] = "Механизированный сундук"
L["msup_chest"] = "Механизированный сундук с припасами"
L["rust_chest"] = "Старый ржавый сундук"
L["iron_chest_note"] = "Открыть ключом от сейфа братства Стальных Волн, выпадающим из мобов в Западных скалах."
L["msup_chest_note"] = "Открыть ключом от механизированного сундука с припасами, выпадающим из мобов в Западных скалах."
L["rust_chest_note"] = "Открыть старым ржавым ключом, выпадающим из мобов в Западных скалах."

L["rec_rig"] = "Очистительная установка"
L["rec_rig_note"] = "Чтобы активировать сложный режим, используйте оружие Суперколлайдера, чтобы превратить всех Облученных Элементалей в Нестабильных Облученных Элементалей. Питомцы доступны на обеих сложностях."

L["grease_bot"] = "Смазочный бот"
L["grease_bot_note"] = "При нажатии повышает скорость передвижения на 10%, а скорость – на 5%."
L["shock_bot"] = "Шоковый бот"
L["shock_bot_note"] = "При нажатии атаки с некоторой вероятностью наносят дополнительный урон от сил природы, который воздействует на находящихся поблизости противников."
L["welding_bot"] = "Сварочный робот"
L["welding_bot_note"] = "При нажатии повышает максимальный запас здоровья и эффективность получаемого исцеления на 10%."

L["options_icons_mech_buffs"] = "Баффы Ботов"
L["options_icons_mech_buffs_desc"] = "Отображение местоположения смазочных, шоковых и сварочных ботов на карте внутри подземелья."
L["options_icons_mech_chest"] = "Механизированный сундук"
L["options_icons_mech_chest_desc"] = "Отображение мест расположения механизированных сундуков. Есть 10 уникальных сундуков, которые можно добывать один раз в день, и каждый сундук имеет 4-5 мест появления. Места сгруппированы по цвету."
L["options_icons_locked_chest"] = "Закрытые сундуки"
L["options_icons_locked_chest_desc"] = "Отображение местоположения запертых сундуков в Западных скалах"
L["options_icons_recrig"] = "Очистительная установка"
L["options_icons_recrig_desc"] = "Показать местоположение Очистительной установки и ее награды."

-------------------------------------------------------------------------------
----------------------------------- NAZJATAR ----------------------------------
-------------------------------------------------------------------------------

L["naz_intro_note"] = "Завершите вводную цепочку заданий, чтобы разблокировать редких монстров, сокровища и локальные задания в Назжатаре."

L["alga_note"] = "ВНИМАНИЕ: Маскирует четырех прислужников!"
L["allseer_note"] = "Появляется в нижнем Каль'метире."
L["anemonar_note"] = "Убейте Огромного летающего ската возле него, чтобы активировать."
L["avarius_note"] = "Используйте Кирка для соляника, чтобы собрать и поместить цветные кристаллы на пьедесталы. Вы можете не обладать Горным Делом!"
L["banescale_note"] = "Небольшой шанс появления сразу после убийства Донной Охотницы."
L["elderunu_note"] = "Появляется в верхнем Каль'метире."
L["gakula_note"] = "Отгонять Головастиков из племени Кровавого Плавника, пока он не появится."
L["glimmershell_note"] = "Небольшой шанс появиться на месте Большого тусклопанцирного рака."
L["kelpwillow_note"] = "Подведите Ильного слизеня с помощью Радужного кристалла, для активации."
L["lasher_note"] = "Посадите Прорастающее семя в почву и кормите их светлячками."
L["matriarch_note"] = "Делится таймером возрождения с двумя другими Матриархами."
L["needle_note"] = "Обычно появляется в районе врат Королевы."
L["oronu_note"] = "Вызовите Утонувшего птенца, для активации."
L["rockweed_note"] = "Убивайте Потерявшихся водорослевиков и Бродячих водорослевиков по всей локации, пока он не появится. Рекомендуется рейдовая группа, так как это может занять долгое время."
L["sandcastle_note"] = "Используйте Камень ясновидения, чтобы находить сундуки в любом месте локации, пока он не появится."
L["tidelord_note"] = "Убейте трех заклинательниц Азш'ари и вызванного Неудержимого яростью волн, пока не будет вызван Повелитель приливов."
L["tidemistress_note"] = "Нажмите на Непотревоженные образецы, пока она не появится."
L["urduu_note"] = "Убейте Рогатого рифохода перед ним, чтобы активировать."
L["voice_deeps_notes"] = "Используйте Сброшенный панцирь, чтобы разбить камни."
L["vorkoth_note"] = "Бросте Приманка для его вызова."
L["area_spawn"] = "Появляется в окрестностях."
L["cora_spawn"] = "Появляется в Коралловом Лесу."
L["cave_spawn"] = "Появляется в пещере."
L["east_spawn"] = "Появляется в случайном месте в восточной половине локации."
L["ucav_spawn"] = "Появляется в подводной пещере."
L["zone_spawn"] = "Появляется по всей локации."

L["supply_chest"] = "Сундук с военными припасами"
L["assassin_looted"] = " полутан с эффектом Убийцы."

L["arcane_chest"] = "Чародейский сундук"
L["glowing_chest"] = "Светящийся чародейский сундук"
L["arcane_chest_01"] = "Под водорослями."
L["arcane_chest_02"] = "Внутри здания наверху."
L["arcane_chest_03"] = "На втором уровне."
L["arcane_chest_04"] = "В воде над водопадом."
L["arcane_chest_05"] = "В руинах."
L["arcane_chest_06"] = "" -- in the open
L["arcane_chest_07"] = "В глубине пещеры. Вход на Склон занш'иров на востоке."
L["arcane_chest_08"] = "Спрятан под морской звездой."
L["arcane_chest_09"] = "В пещере позади Жемчужнопанцирного ползуна."
L["arcane_chest_10"] = "Под Расплавленным панцирем."
L["arcane_chest_11"] = "На вершине холма."
L["arcane_chest_12"] = "На вершине водопада."
L["arcane_chest_13"] = "На вершине утеса, за деревом."
L["arcane_chest_14"] = "Внутри Храма Элун'алор."
L["arcane_chest_15"] = "В правой части здания."
L["arcane_chest_16"] = "В подводной пещере. Вход с юга."
L["arcane_chest_17"] = "На вершине водопада."
L["arcane_chest_18"] = "В пещере чуть ниже дороги."
L["arcane_chest_19"] = "На вершине каменной арки. Используйте планер."
L["arcane_chest_20"] = "На вершине горы."
L["glowing_chest_1"] = "В глубине подводной пещеры. Нужно защищать пилон."
L["glowing_chest_2"] = "Развяжите линии."
L["glowing_chest_3"] = "В глубине пещеры. Нужно защищать пилон."
L["glowing_chest_4"] = "Используйте 3 красных руны."
L["glowing_chest_5"] = "В пещере. Нужно защитить пилон."
L["glowing_chest_6"] = "Развяжите линии."
L["glowing_chest_7"] = "Используйте 4 голобых руны."
L["glowing_chest_8"] = "На вершине крыши. Нужно защищать пилон."

L["slimy_cocoon"] = "Склизкий кокон"
L["ravenous_slime_note"] = "Приманите к слизню питомца, используя Радужный кристалл. Повторите пять дней, пока не появится яйцо с питомцем внутри. Кокон не исчезнет до следующего еженедельного сброса."
L["slimy_cocoon_note"] = "Питомец готов к сбору из кокона! Если это он не появляется для вас, яйцо вступает в перезарядку в вашей фазе. Изменить фазу или проверить позже."

L["cat_figurine"] = "Кристаллические Статуэтки Кошек"
L["cat_figurine_01"] = "В подводной пещере. Статуэтка находится на полу. Вход на востоке."
L["cat_figurine_02"] = "В пещере под близлежащим водопадом. Статуэтка под морской звездой на стене."
L["cat_figurine_03"] = "В подводной пещере. Статуэтка спрятана под сломанными ракушками."
L["cat_figurine_04"] = "В подводной пещере. Статуэтка на полу."
L["cat_figurine_05"] = "В маленькой пещере. Статуэтка спрятана за растением на полу."
L["cat_figurine_06"] = "В подводной пещере, заполненной враждебными рифоходами. Статуэтка на стене. Вход с севера."
L["cat_figurine_07"] = "В маленькой пещере. Статуэтка на стене в одном из кораллов."
L["cat_figurine_08"] = "В маленькой пещере. Уворачивайся от кругов на земле. Статуэтка на высоком камне в конце пещеры."
L["cat_figurine_09"] = "В подводной пещере. Статуэтка на каменной арке у потолка."
L["cat_figurine_10"] = "В пещере чуть ниже дороги. Статуэтка между тремя бочками."

L["mardivas_lab"] = "Лаборатория Мардиваса"
L["no_reagent"] = "Без реагентов"
L["swater"] = "Маленькая Вода"
L["gwater"] = "Большая Вода"
L["sfire"] = "Маленький Огонь"
L["gfire"] = "Большой Огонь"
L["searth"] = "Маленькая Земля"
L["gearth"] = "Большая Земля"
L["murloco"] = "Мурлоко"
L["tentacle_taco"] = "Продает "..ITEM_QUALITY_COLORS[4].hex.."[Тако голодного глашатая из щупалец]|r если вы носите бентосный Плащ азш'ари - призывательницы бурь."

L["options_icons_treasures_nazj"] = "Сокровища"
L["options_icons_treasures_nazj_desc"] = "Отобразить расположение сундуков для достижения Охота за сокровищами."
L["options_icons_slimes_nazj"] = "Прожорливый слизнюк"
L["options_icons_slimes_nazj_desc"] = "Отображение мест расположения четырех прожорлевых слизней, которые дают питомцев после кормления."
L["options_icons_cats_nazj"] = "Фигурки кошек"
L["options_icons_cats_nazj_desc"] = "Отображение мест расположения фигурок кристаллических кошек для достижения Найдены статуэтки кошек."
L["options_icons_misc_nazj"] = "Разное"
L["options_icons_misc_nazj_desc"] = "Показать местоположение пещеры Мурлоко и Лаборатории Мардиваса."

L["blindlight_cave"] = "Вход в пещеру к Темносвету."
L["caverndark_cave"] = "Вход в пещеру к Ужасу из пещерной тьмы."
L["chasmhaunt_cave"] = "Вход в пещеру к Ужасу морских расселин."
L["shassera_cave"] = "Вход в пещеру к Шассире."

-------------------------------------------------------------------------------
------------------------------------ NAZMIR -----------------------------------
-------------------------------------------------------------------------------

L["captain_mukala_note"] = "Attempt to loot the Cursed Chest to summon the captain."
L["enraged_water_note"] = "Examine the {npc:134295} to summon the elemental."
L["lucille_note"] = "Talk to {npc:134297} to summon the rare."
L["offering_to_bwonsamdi_note"] = "Run up the nearby tree and jump into the broken structure."
L["shambling_ambusher_note"] = "Attempt to loot the {npc:124473} to activate the rare."
L["zaamar_note"] = "Inside the Necropolis Catacombs, entrance to the south."

-------------------------------------------------------------------------------
------------------------------- STORMSONG VALLEY ------------------------------
-------------------------------------------------------------------------------

L["in_basement"] = "In the basement."
L["jakala_note"] = "Talk to {npc:140925}."
L["nestmother_acada_note"] = "Click on Acada's Nest to spawn the rare."
L["sabertron_note"] = "Kill {npc:139334} to activate one of the {npc:139328}s."

L["discarded_lunchbox_note"] = "In the building on top of the bookshelf."
L["hidden_scholars_chest_note"] = "On the roof of the building."
L["honey_vat"] =  "Honey Vat"
L["smugglers_stash_note"] = "In the water under the platform."
L["sunken_strongbox_note"] = "In the water under the ship."
L["venture_co_supply_chest_note"] = "Climb up the ladder on the ship."
L["weathered_treasure_chest_note"] = "The cave is hidden behind a cluster of trees."

L["curious_grain_sack"] = "Curious Grain Sack"
L["small_treasure_chest"] = "Small Treasure Chest"
L["small_treasure_51927"] = "In the building under the stairs."
L["small_treasure_51940"] = "In the building."

L["these_hills_sing_note"] = "Open {item:160485} here. Buy then from {npc:138096} (Horde) or {npc:138221} (Alliance) or loot one from the \"Discarded Lunchbox\" treasure in Brennadam."

L["ancient_tidesage_scroll"] = "Ancient Tidesage Scroll"

-------------------------------------------------------------------------------
------------------------------- TIRAGARDE SOUND -------------------------------
-------------------------------------------------------------------------------

L["honey_slitherer_note"] = "Talk to {npc:137176} to summon the rare."
L["tempestria_note"] = "Inspect the Suspicious Pile of Meat to summon the rare."
L["twin_hearted_note"] = "Disturb the Ritual Effigy to activate the construct."
L["wintersail_note"] = "Destroy the Smuggler's Cache to summon the captain."

L["hay_covered_chest_note"] = "Ride the {npc:130350} down the road to {npc:131453} to spawn the treasure."
L["pirate_treasure_note"] = [[
Requires the corresponding treasure map.

The maps drop from any pirate mobs in Kul Tiras. Freehold (open world) is a good place to farm pirates.
]]

local damp_note =  "\n\nRead all five scrolls to gain access to the treasure."

L["damp_scroll"] = "A Damp Scroll"
L["damp_scroll_note_1"] = "Entrance in Stormsong Monastery."..damp_note
L["damp_scroll_note_2"] = "On the floor in a basement behind a {npc:136343}."..damp_note
L["damp_scroll_note_3"] = "On the floor upstairs next to a {npc:136343}."..damp_note
L["damp_scroll_note_4"] = "On the floor in a basement next to a {npc:136343}."..damp_note
L["damp_scroll_note_5"] = "In a corner under the boardwalk."..damp_note
L["ominous_altar"] = "Ominous Altar"
L["ominous_altar_note"] = "Talk to the Ominous Altar to be teleported to the treasure."
L["secret_of_the_depths_note"] = "Read all five Damp Scrolls, then talk to the Ominous Altar to teleport to the treasure."

-------------------------------------------------------------------------------
------------------------------------ ULDUM ------------------------------------
-------------------------------------------------------------------------------

L["uldum_intro_note"] = "Завершите начальную цепочку заданий, чтобы разблокировать редких монстров, сокровища и задания вторжений в Ульдуме."

L["aqir_flayer"] = "Разделяет появление с Акир-рабочий и Акир-жнец."
L["aqir_titanus"] = "Разделяет появление с Акир-гигант."
L["aqir_warcaster"] = "Разделяет появление с Акир - заклинатель Бездны."
L["atekhramun"] = "Давите Ядошкурых скорпиончиков, пока он не появится."
L["chamber_of_the_moon"] = "Под Залом Луны."
L["chamber_of_the_stars"] = "Под Залом Звезд."
L["chamber_of_the_sun"] = "Внутри Зала Солнца."
L["dunewalker"] = "Нажмите на Сущность Солнца на платформе выше, чтобы освободить его."
L["friendly_alpaca"] = "Скормите Альпаке побеги Герсали семь раз, чтобы получить ее как средство передвижения. Появляется в течение 10 минут в одном месте, затем долгое возрождение."
L["gaze_of_nzoth"] = "Разделяет появление с Нечистыми наблюдателями."
L["gersahl_note"] = "Кормите дружелюбную альпаку семь раз для получения средства передвижения. Не требует травничества."
L["gersahl"] = "Побеги Герсали"
L["hmiasma"] = "Накормите его, пока он не активируется."
L["kanebti"] = "Найдите Украшенную камнями фигурку скарабея, которая делит свое появление с Могильными скарабеями, для вызова редкого монстра."
L["left_eye"] = "Левая половина игрушки Всевидящие глаза."
L["neferset_rare"] = "Этот редкий монстр имеют три одинаковые точки появления в Неферсете. После завершения Ритуала Призыва появится случайный набор из трех монстров."
L["platform"] = "Появляется на вершине воздушной платформы."
L["single_chest"] = "Этот сундук появляется только в одном месте! Если его там нет, подождите немного, и он появится."
L["tomb_widow"] = "Когда присутствуют белые коконы, убейте невидимых пауков, чтобы призвать."
L["uatka"] = "Вместе с двумя другими игроками, нажмите на каждое загадочное устройство. Требуется Амулет Светозарных который можно получить из Реликвий Аматета."
L["wastewander"] = "Разделяет появление с Порабощенный Скиталец Пустыни."

L["amathet_cache"] = "Тайник Аматетов"
L["black_empire_cache"] = "Тайник Темной Империи"
L["black_empire_coffer"] = "Сундук Тайной Империи"
L["infested_cache"] = "Зараженный Тайник"
L["infested_strongbox"] = "Зараженный Сундук"
L["amathet_reliquary"] = "Реликвия Аматетов"

L["cursed_relic"] = "Требуется Проклятая Реликвия"
L["tolvir_relic"] = "Требуется Реликвия Тол'виров"

L["options_icons_assault_events"] = "События Нападения"
L["options_icons_assault_events_desc"] = "Показать места возможных событий нападения."
L["options_icons_coffers"] = "Запертые Сундуки"
L["options_icons_coffers_desc"] = "Отображение местоположения запертых сундуков (можно открыть один раз за нападение)."

L["ambush_settlers"] = "Защищайте Дервиша до окончания атак монстров."
L["burrowing_terrors"] = "Прыгай на Закапывающихся Скарабеев, чтобы раздавить их."
L["call_of_void"] = "Очистить ритуальный пилон."
L["combust_cocoon"] = "Бросайте самодельные зажигательные бомбы в коконы на потолке."
L["dormant_destroyer"] = "Нажмите на Проводники Бездны."
L["executor_nzoth"] = "Убейте Палача Н'Зота, затем уничтожьте Маяк Палача."
L["hardened_hive"] = "Возьмите Огнемет Скитальцев Пустыни и сожгите все кладки с яйцами."
L["in_flames"] = "Захватите ведра с водой и потушите огонь."
L["monstrous_summon"] = "Убейте всех Предвестников глубин, чтобы остановить призыв."
L["obsidian_extract"] = "Уничтож все Сформированные Бездной Обсидианы."
L["purging_flames"] = "Подберите тела и бросьте их в огонь."
L["pyre_amalgamated"] = "Активируйте костер, затем убейте все слияния, пока не появятся Слияние Плоти."
L["ritual_ascension"] = "Убейте всех Светозарных-ритуалистов."
L["solar_collector"] = "Включите все пять ячеек со всех сторон Солнечного Коллектора. Нажатие на кристалл силы также переключает все кристаллы, касающиеся этой ячейки.\n\nЕсли все ячейки пусты, самая короткая последовательность левая-> правая-> средняя-> левая-> правая."
L["summoning_ritual"] = "Убейте послушников и закройте портал призыва."
L["titanus_egg"] = "Уничтожьте Колоссальное яйцо, затем победите Молодого акира-колосса."
L["unearthed_keeper"] = "Уничтожить Раскопанного Хранителя."
L["virnall_front"] = "Отбивайте атаки монстров, пока не появится Менептах Вестник войны."
L["voidflame_ritual"] = "Погасить все тронутые бездной свечи."

L["beacon_of_sun_king"] = "Поверните все три статуи внутрь."
L["engine_of_ascen"] = "Перекройте статуями аматетов лучи."
L["lightblade_training"] = "Убивайте инструкторов и учеников, пока не появится Камес, Клинок Рассвета."
L["raiding_fleet"] = "Сожги все лодки, используя Бросок Факела."
L["slave_camp"] = "Откройте все близлежащие клетки."
L["unsealed_tomb"] = "Защити Геру от волн монстров."

-------------------------------------------------------------------------------
------------------------------------ VALE -------------------------------------
-------------------------------------------------------------------------------

L["vale_intro_note"] = "Завершите начальную цепочку заданий, чтобы разблокировать редких монстров, сокровища и задания вторжений в Вечноцветущем доле."

L["big_blossom_mine"] = "Внутри Рудника Пышного Цветения. Вход на северо-востоке."
L["guolai"] = "Внутри залов Го-Лай."
L["guolai_left"] = "Внутри залов Го-Лай (левый проход)."
L["guolai_center"] = "Внутри залов Го-Лай (центральный проход)."
L["guolai_right"] = "Внутри залов Го-Лай (правый проход)."
L["pools_of_power"] = "Внутри Источника Силы. Вход в Золотой пагоде."
L["right_eye"] = "Правая половина игрушки Всевидящие глаза."
L["tisiphon"] = "Нажмите на счастливую удочку Даниэлы."

L["ambered_cache"] = "Покрытый янтарем тайник"
L["ambered_coffer"] = "Покрытый янатрем сундук"
L["mantid_relic"] = "Требуется Реликвия Богомолов"
L["mogu_plunder"] = "Добыча Могу"
L["mogu_strongbox"] = "Сундук Могу"
L["mogu_relic"] = "Требуется Реликвия Могу"

L["abyssal_ritual"] = "Убейте Утонувших приверженцев и затем Чудовище из глубин."
L["bound_guardian"] = "Убейте трех Глубинных подчинителей, чтобы освободить Чистую Каплю."
L["colored_flames"] = "Отнесите разноцветные факелы в соответствующие руны."
L["construction_ritual"] = "Толкните статую тигра в луч."
L["consuming_maw"] = "Нажимайте на наросты и щупальца, пока вас не выкинет из пасти."
L["corruption_tear"] = "Возьмите Маяк Титанов и закройте Прорыв Порчи, не позволяя крутящимся глазам ударить вас."
L["electric_empower"] = "Убейте Призывателей из клана Цзань-Тень, а затем Менека Преображенного."
L["empowered_demo"] = "Закройте все Реликварий Духов."
L["empowered_wagon"] = "Подберите боеприпасы Шадо-Пан и поместите их под повозку."
L["feeding_grounds"] = "Уничтожить сосуды с янтарной смолой и камеры заключения."
L["font_corruption"] = "Вращайте статуи могу, пока оба луча не достигнут задней части, затем включите консоль."
L["goldbough_guardian"] = "Защитите Вождя Золотую Ветвь от волн монстров."
L["infested_statue"] = "Уберите все дергающиеся глаза со статуи."
L["kunchong_incubator"] = "Уничтожить все генераторы поля."
L["mantid_hatch"] = "Подберите огнемет Шадо-Пан и уничтожьте инкубаторы для личинок."
L["mending_monstro"] = "Уничтожьте все кристаллы Исцеляющего янтаря."
L["mystery_sacro"] = "Уничтожьте все Подозрительные Надгробия, затем убейте Кричащую душу."
L["noodle_cart"] = "Защити Чинь, пока он ремонтирует свою тележку."
L["protect_stout"] = "Защитите пещеру от волн монстров."
L["pulse_mound"] = "Убей окружающих монстров, затем Живой Нарост."
L["ravager_hive"] = "Уничтожьте все ульи на дереве."
L["ritual_wakening"] = "Убейте Клакси-пробудителей."
L["serpent_binding"] = "Убейте Поработителей из клана Цзань-Тень, а затем Хаофэна."
L["stormchosen_arena"] = "Уберите всех могу на арене, затем убейте генерала клана."
L["swarm_caller"] = "Уничтожить Призыватель Роя."
L["vault_of_souls"] = "Откройте хранилище и уничтожьте все статуи."
L["void_conduit"] = "Нажмите на Проводник Бездны, а затем давите Зоркое Око."
L["war_banner"] = "Сожгите боевое знамя и убивайте волны монстров, пока не появится командир."
L["weighted_artifact"] = "Возьмите Подозрительно Тяжелую Вазу и вернитесь через лабиринт к выходу. После этого нажмите на Утяжеленную реликвию Могу."

-------------------------------------------------------------------------------
----------------------------------- VISIONS -----------------------------------
-------------------------------------------------------------------------------

L["colored_potion"] = "Цветное зелье"
L["colored_potion_note"] = [[
Зелье рядом с трупом %s всегда указывает цвет зелья с отрицательным эффектом, не пейте такие зелья.

В зависимости от цвета этого флакона, можно определить, какие другие зелья будут давать +100 здравомыслия (|cFFFF0000bad|r => |cFF00FF00good|r):

Черный => Зеленый
Синий => Фиолетовый
Зеленый => Красный
Фиолетовый => Черный
Красный => Синий
]]

L["bear_spirit"] = "Дух медведя"
L["bear_spirit_note"] = "Убейте Рассерженного духа медвежьей шкуры и все волны монстров, чтобы получить бафф на 10% скорости."
L["buffs_change"] = "Доступные баффы меняются каждую неделю. Если здание закрыто или NPC/объект отсутствует, этого баффа не будет на этой неделе."
L["clear_sight"] = "Требуется Ясное зрение ранга %d."
L["craggle"] = "Положите игрушку на землю (например, игрушечную железную дорогу), чтобы отвлечь его, пока его боты продолжают путь. Как только они разойдутся достаточно далеко то убейте ботов, а затем Крэггла Головодерга."
L["empowered"] = "Усиление"
L["empowered_note"] = "Пройдите через лабиринт из мин и встаньте на Экспериментальную усиливающую мину, чтобы получить бафф на 10% урона."
L["enriched"] = "Богатство"
L["enriched_note"] = "Убейте Заброшенный банк гильдии, чтобы получить бафф на 10% критического удара."
L["ethereal_essence"] = "Эфириальная сущность"
L["ethereal_essence_note"] = "Убейте Исказителя пространства Душара для получения баффа на 10% критического удара."
L["ethereal_note"] = "Соберите оранжевые кристаллы, спрятанные в видении, и верните их этому NPC для получения дополнительных Зараженных реликвии.\n\n|cFF00FF00Не забудьте добыть сундук!|r"
L["heroes_bulwark"] = "Доспехи героя"
L["heroes_bulwark_note"] = "Убейте Гамона в таверне, чтобы получить бафф на 10% здоровья."
L["horrific_visions"] = "Жуткие Видения"
L["inside_building"] = "Внутри здания."
L["mailbox"] = "Почтовый Ящик"
L["mail_muncher"] = "При открытии Почтового Ящика может появится Письмоед."
L["morgan_pestle"] = "Морган Пест"
L["odd_crystal"] = "Odd Crystal"
L["requited_bulwark"] = "Благостный щит"
L["requited_bulwark_note"] = "Убейте Огюста Мулена чтобы получить получить бафф на 7% универсальности."
L["shave_kit"] = "Набор для бритья Кудрешлем"
L["shave_kit_note"] = "Внутри парикмахерской."
L["smiths_strength"] = "Сила кузнеца"
L["smiths_strength_note"] = "Убейте Нароса в хижине кузнеца, чтобы получить бафф на 10% урона."
L["spirit_of_wind"] = "Дух ветра"
L["spirit_of_wind_note"] = "Убейте Бвембe и получите бафф на 10% скорости и скорости передвижения."
L["void_skull"] = "Меченный Бездной череп"
L["void_skull_note"] = "Нажмите на череп на земле, чтобы получить игрушку."
L["yelmak"] = "Йелмак"

L["c_alley_corner"] = "В углу в переулке."
L["c_bar_upper"] = "В баре на втором этаже."
L["c_behind_bank_counter"] = "В банке за стойкой в подсобке."
L["c_behind_boss"] = "В здании для беженцев за спиной босса."
L["c_behind_boxes"] = "В углу за какими-то коробками."
L["c_behind_cart"] = "За разрушенной телегой."
L["c_behind_house_counter"] = "В доме за прилавком."
L["c_behind_mailbox"] = "За почтовым ящиком."
L["c_behind_pillar"] = "Скрытый за колонной позади здания посольства."
L["c_behind_rexxar"] = "Скрытый справа за зданием Рексара."
L["c_behind_stables"] = "За конюшней у Шоу."
L["c_by_pillar_boxes"] = "У стены между колонной и какими-то ящиками."
L["c_center_building"] = "На нижнем этаже центрального здания."
L["c_forge_corner"] = "В углу у кузницы."
L["c_hidden_boxes"] = "Спрятан за какими-то ящиками позади здания Тралла."
L["c_inside_auction"] = "Внутри аукционного дома справа."
L["c_inside_big_tent"] = "Слева внутри большой палатки."
L["c_inside_cacti"] = "Внутри кактусовой грядки за углом."
L["c_inside_hut"] = "Внутри первой хижины справа."
L["c_inside_leatherwork"] = "Внутри мастерской кожевника."
L["c_inside_orphanage"] = "Внутри детского дома."
L["c_inside_transmog"] = "Внутри хижины трансмога."
L["c_left_cathedral"] = "Скрытый слева от входа в собор."
L["c_left_inquisitor"] = "Позади инквизитора слева от лестницы."
L["c_on_small_hill"] = "На вершине небольшого холма."
L["c_top_building"] = "На самом верхнем этаже здания."
L["c_underneath_bridge"] = "Под мостом."
L["c_walkway_corner"] = "На верхней дорожке в углу."
L["c_walkway_platform"] = "На платформе над верхней дорожкой."

L["options_icons_visions_buffs"] = "Баффы"
L["options_icons_visions_buffs_desc"] = "Показать места событий, которые дают баффы на урон, на час."
L["options_icons_visions_chest"] = "Сундуки"
L["options_icons_visions_chest_desc"] = "Показать возможные места сундуков внутри жутких видений."
L["options_icons_visions_crystals"] = "Странные Кристаллы"
L["options_icons_visions_crystals_desc"] = "Показывать расположение Странных Кристаллов внутри жутких видений."
L["options_icons_visions_mail"] = "Почтовый Ящик"
L["options_icons_visions_mail_desc"] = "Показывать расположение почтовых ящиков для получения Письмоеда."
L["options_icons_visions_misc"] = "Разное"
L["options_icons_visions_misc_desc"] = "Показать награды на карте внутри жутких видений."

-------------------------------------------------------------------------------
----------------------------------- VOLDUN ------------------------------------
-------------------------------------------------------------------------------

L["bloodwing_bonepicker_note"] = "Collect the {npc:136390} at the summit to summon the vulture."
L["nezara_note"] = "Cut the ropes attached to all four {npc:128952}s to release the rare."
L["vathikur_note"] = "Kill the {npc:126894}s to summon the rare."
L["zunashi_note"] = "Entrance to the north in the mouth of a large skull."

L["ashvane_spoils_note"] = "Ride the {npc:132662} down the hill to spawn the treasure at the bottom."
L["excavators_greed_note"] = "Inside a collapsed tunnel."
L["grayals_offering_note"] = "After completing {quest:50702}, enter Atul'Aman and click the Ancient Altar to spawn the treasure."
L["kimbul_offerings_note"] = "On the hill above the Temple of Kimbul."
L["sandsunken_note"] = "Click the Abandoned Bobber to pull the treasure out of the sand."

L["elusive_alpaca"] = "Скормите Салат из приморской зелени, альпаке, чтобы выучить ее как маунта. Появляется в течение 10 минут в одном месте, затем долгое возрождение."

-------------------------------------------------------------------------------
---------------------------------- WARFRONTS ----------------------------------
-------------------------------------------------------------------------------

L["boulderfist_outpost"] = "Inside Boulderfist Outpost (a large cave). Entrance to the northeast."
L["burning_goliath_note"] = "When defeated, a {npc:141663} will spawn near {npc:141668}."
L["cresting_goliath_note"] = "When defeated, a {npc:141658} will spawn near {npc:141668}."
L["rumbling_goliath_note"] = "When defeated, a {npc:141659} will spawn near {npc:141668}."
L["thundering_goliath_note"] = "When defeated, a {npc:141648} will spawn near {npc:141668}."
L["echo_of_myzrael_note"] = "Once all four elemental goliaths are defeated, {npc:141668} will appear."
L["frightened_kodo_note"] = "Despawns after a few minutes. Guaranteed to spawn after a server restart."

-------------------------------------------------------------------------------
----------------------------------- ZULDAZAR ----------------------------------
-------------------------------------------------------------------------------

L["murderbeak_note"] = "Toss the chum into the sea, then kill {npc:134780}s until {npc:134782} spawns."
L["vukuba_note"] = "Investigate the {npc:134049}, then kill waves of {npc:134047}s until {npc:134048} spawns."

L["cache_of_secrets_note"] = "Held by an {npc:137234} in a cave behind a waterfall."
L["da_white_shark_note"] = "Stand near {npc:133208} until she becomes hostile."
L["dazars_forgotten_chest_note"] = "Path begins near {npc:134738}."
L["gift_of_the_brokenhearted_note"] = "Place the incense to spawn the chest."
L["offerings_of_the_chosen_note"] = "On the second level of Zanchul."
L["riches_of_tornowa_note"] = "On the side of a cliff."
L["spoils_of_pandaria_note"] = "On the lowest deck of the ship."
L["tiny_voodoo_mask_note"] = "Sitting on the hut above {npc:141617}."
L["warlords_cache_note"] = "On top at the helm of the ship."

L["kuafon_note"] = [[
Loot a {item:157782} from any Pterrordax in Zandalar to begin the quest line. Some quests will take multiple days to complete.

The best mobs to farm are {npc:126618} in Zanchul or {npc:122113}s at Skyrender Eyrie south of Tal'gurub.
]]
L["torcali_note"] = "Complete quests at Warbeast Kraal until {quest:47261} becomes available. Some quests will take multiple days to complete."

L["totem_of_paku_note"] = "Speak to {npc:137510} north of the Great Seal to select Pa'ku as your loa in Zuldazar."
L["options_icons_paku_totems"] = "Totems of Pa'ku"
L["options_icons_paku_totems_desc"] = "Display travel paths for Totems of Pa'ku in Dazar'alor"
