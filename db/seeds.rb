# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

DiceType.create(item_type: :forms_of_government, sides: 100)
DiceType.create(item_type: :world_shaking_events, sides: 10)

# Dungeon Master's Guide: page 18
RollItem.create(item_type: :forms_of_government, range_min: 1, range_max: 8, content: { name: 'Autocracy', description: 'One hereditary ruler wields absolute power. The autocrat either is supported by a well-developed bureaucracy or military or stands as the only authority in an otherwise anarchic society. The dynastic ruler could be immortal or undead. Aundair and Karrnath, two kingdoms in the Eberron campaign setting, have autocrats with royal blood in their veins. Whereas Queen Aurala of Aundair relies on wizar.ds and spies to enforce her will, Kaius, the vampire king of Karrnath, has a formidable army of living and undead soldiers under his command.' })
RollItem.create(item_type: :forms_of_government, range_min: 9, range_max: 13, content: { name: 'Bureaucracy', description: ' Various departments compose the government, each responsible for an aspect of rule. The department heads, ministers, or secretaries answer to a figurehead autocrat or council.' })
RollItem.create(item_type: :forms_of_government, range_min: 14, range_max: 19, content: { name: 'Confederacy', description: 'Each individual city or town within the confederacy governs itself, but all contribute to a league or federation that promotes (at least in theory) the common good of all member states. Conditions and attitudes toward the central government vary from place to place within the confederacy. The Lords\' Alliance in the Forgotten Realms setting is a loose confederacy of cities, while the Mror Holds in the Eberron campaign setting is a confederacy of allied dwarf clans.' })
RollItem.create(item_type: :forms_of_government, range_min: 20, range_max: 22, content: { name: 'Democracy', description: 'Citizens or their elected representatives determine the laws in a democracy. A bureaucracy or military carries out the day-to-day work of government, with positions filled through open elections.' })
RollItem.create(item_type: :forms_of_government, range_min: 23, range_max: 27, content: { name: 'Dictatorship', description: 'One supreme ruler holds absolute authority, but his or her rule isn\'t necessarily dynastic. In other respects this resembles an autocracy. In the Greyhawk campaign setting, a half-demon named Iuz is the dictator of a conquered land that bears his name.' })
RollItem.create(item_type: :forms_of_government, range_min: 28, range_max: 42, content: { name: 'Feudalism', description: 'The typical government of Europe in the Middle Ages, a feudalistic society consists of layers of lords and vassals. The vassals provide soldiers or scutage (payment in lieu of military service) to the lords, who in turn promise protection to their vassals.' })
RollItem.create(item_type: :forms_of_government, range_min: 43, range_max: 44, content: { name: 'Gerontocracy', description: 'Elders preside over this society. In some cases, long-lived races such as elves or dragons are entrusted with the leadership of the land.' })
RollItem.create(item_type: :forms_of_government, range_min: 45, range_max: 53, content: { name: 'Hierarchy', description: 'A feudal or bureaucratic government where every member, except one, is subordinate to another member. In the Dragonlance campaign setting, the dragonarmies of Krynn form a military hierarchy, with the Dragon Highlords as leaders under the dragon queen Takhisis.' })
RollItem.create(item_type: :forms_of_government, range_min: 54, range_max: 56, content: { name: 'Magocracy', description: 'The governing body is composed of spellcasters who rule directly as oligarchs or feudal lords, or participate in a democracy or bureaucracy. Examples include the Red Wizards of Thay in the Forgotten Realms campaign setting and the sorcerer- kings of Athas in the Dark Sun campaign setting.' })
RollItem.create(item_type: :forms_of_government, range_min: 57, range_max: 58, content: { name: 'Matriarchy', description: 'This society is governed by the eldest or most important members of one gender. Drow cities are examples of theocratic matriarchies, for each is ruled by a council of drow high priestesses who answer to Lolth, the Demon Queen of Spiders.' })
RollItem.create(item_type: :forms_of_government, range_min: 59, range_max: 64, content: { name: 'Militocracy', description: 'Military leaders run the nation under martial law, using the army and other armed forces. A militocracy might be based on an elite group of soldiers, an order of dragon riders, or a league of sea princes. Solamnia, a nation ruled by knights in the Dragonlance campaign setting, falls into this category.' })
RollItem.create(item_type: :forms_of_government, range_min: 65, range_max: 74, content: { name: 'Monarchy', description: 'A single hereditary sovereign wears the crown. Unlike the autocrat, the monarch\'s powers are limited by law, and the ruler serves as the head of a democracy, feudal state, or militocracy. The kingdom of Breland, in the Eberron campaign setting, has both a parliament that makes laws and a monarch who enforces them.' })
RollItem.create(item_type: :forms_of_government, range_min: 75, range_max: 78, content: { name: 'Oligarchy', description: 'A small number of absolute rulers share power, possibly dividing the land into districts or provinces under their control, or jointly ruling together. _.\group of adventurers who take control of a nation together might form an oligarchy. The Free City of Greyhawk is an oligarchy composed of various faction leaders, with a Lord Mayor as its figurehead.' })
RollItem.create(item_type: :forms_of_government, range_min: 79, range_max: 80, content: { name: 'Patriarchy', description: 'This society is governed by the eldest or most important members of one gender. Drow cities are examples of theocratic matriarchies, for each is ruled by a council of drow high priestesses who answer to Lolth, the Demon Queen of Spiders.' })
RollItem.create(item_type: :forms_of_government, range_min: 81, range_max: 83, content: { name: 'Meritocracy', description: 'The most intelligent and educated people oversee the society, often with a bureaucracy to handle the day-to-day work of government. In the Forgotten Realms, scholarly monks preside over the fortress-library of Candlekeep, overseen by a master of lore called the Keeper.' })
RollItem.create(item_type: :forms_of_government, range_min: 84, range_max: 85, content: { name: 'Plutocracy', description: 'Society is governed by the wealthy. The elite form a ruling council, purchase representati"on at rhe court of a figurehead monarch, or rule by default because money is the true power in the realm. Many cities in the Forgotten Realms campaign setting, including Waterdeep and Baldur\'s Gate, are plutocracies.' })
RollItem.create(item_type: :forms_of_government, range_min: 86, range_max: 92, content: { name: 'Republic', description: 'Government is entrusted to representatives of an established electorate who rule on behalf of the electors. Any democracy in which only landowners or certain classes can vote could be considered a republic.' })
RollItem.create(item_type: :forms_of_government, range_min: 93, range_max: 94, content: { name: 'Satrapy', description: 'Conquerors and representatives of another government wield power, ruling the settlement or region as part of a larger empire. The satraps are bureaucrats and military officers, or unusual characters or monsters. The cities of Highport and Suderham in the Greyhawk ca mpaign setting are satrapies controlled by agents of a vicious gang of marauders known as the Slave Lords.' })
RollItem.create(item_type: :forms_of_government, range_min: 95, range_max: 95, content: { name: 'Kleptocracy', description: 'This government is composed of groups or individuals primarily seeking wealth for themselves, often at the expense of their subjects. The grasping Bandit Kingdoms in the Greyhawk campaign setting are prime examples. A kingdom run by thieves\' guilds would also fall into this category.' })
RollItem.create(item_type: :forms_of_government, range_min: 96, range_max: 100, content: { name: 'Theocracy', description: 'Rulership falls to a direct representative or a collection of agents of a deity. The centers of power in a theocracy are usually located on sacred sites. In the Eberron campaign setting, the nation of Thrane is a theocracy devoted to the Silver Flame, a divine spirit that resides in Thrane\'s capital of Flamekeep.' })

# Dungeon Master's Guide: page 27
RollItem.create(item_type: :world_shaking_events, range_min: 1, range_max: 1, content: { event: 'Rise of a leader or an era', description: 'Eras are often defined by the prominent leaders, innovators, and tyrants of the day. These people change the world and etch their signatures indelibly on the pages of history. When they rise to power, they shape the time and place where they live in monumental ways. When they fall from power or pass away, the ghost of their presence lingers. Determine the kind ofleader that influences the new or passing era. You can choose the type of leader or determine one randomly using the Leader Types table.' })
RollItem.create(item_type: :world_shaking_events, range_min: 2, range_max: 2, content: { event: 'Fall of a leader or an era', description: 'Eras are often defined by the prominent leaders, innovators, and tyrants of the day. These people change the world and etch their signatures indelibly on the pages of history. When they rise to power, they shape the time and place where they live in monumental ways. When they fall from power or pass away, the ghost of their presence lingers. Determine the kind ofleader that influences the new or passing era. You can choose the type of leader or determine one randomly using the Leader Types table.' })
RollItem.create(item_type: :world_shaking_events, range_min: 3, range_max: 3, content: { event: 'Cataclysmic disaster' })
RollItem.create(item_type: :world_shaking_events, range_min: 4, range_max: 4, content: { event: 'Assault or invasion' })
RollItem.create(item_type: :world_shaking_events, range_min: 5, range_max: 5, content: { event: 'Rebellion, revolution, overthrow' })
RollItem.create(item_type: :world_shaking_events, range_min: 6, range_max: 6, content: { event: 'Extinction or depletion' })
RollItem.create(item_type: :world_shaking_events, range_min: 7, range_max: 7, content: { event: 'New organization' })
RollItem.create(item_type: :world_shaking_events, range_min: 8, range_max: 8, content: { event: 'Discovery, expansion, invention' })
RollItem.create(item_type: :world_shaking_events, range_min: 9, range_max: 9, content: { event: 'Prediction, omen, prophecy' })
RollItem.create(item_type: :world_shaking_events, range_min: 10, range_max: 10, content: { event: 'Myth and legend' })
