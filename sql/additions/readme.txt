﻿You should install these files if you want to fully functionality

change log [custom patches]:
    cp 1 - Implementation of Auto Broadcast System
    cp 2 - Fixed old bug with removing invisibility/stealth after the plyer was detected by npc
    cp 3 - Implement reconnection to MySQL database. That function can be used only with MySQL client version 5.0.3 or higher
    cp 4 - Implementation of Spell Disabling System
    cp 5 - Increased honor amount from town bosses
    cp 6 - Not apply enchants bonuses if require skill/level. Patch povided by Wowka321
    cp 7 - Fixed cast interrupt reduction effects
    cp 8 - Fixed spell 56626 and ranks
    cp 9 - Fixed proc target for spell 38164
    cp 10 - Fixed spell 51713 Shadow Dance
    cp 11 - Fixed spell 47266 and ranks
    cp 12 - Fixed target mode 104. This fixes spells 120,31661,46968,47897,61391 and their ranks
    cp 13 - Fixed exception for declined name (if this name can't be declined)
    cp 14 - Fix: not allow to apply buff from 2825 and 32182 if present 57723 or 57724 debuff at target
    cp 15 - Fix: automatically revive player when he teleported to graveyard/homebind after fall under map
    cp 16 - Fixed spell 31821. Patch provided by laise
    cp 17 - Fixed spell 49194. Patch provided by laise
    cp 18 - Fixed spell 19505 and ranks. Patch provided by reeshack
    cp 19 - Fixed spell 49576 (Death Grip)
    cp 20 - Fixed spell 5730 and ranks. Patch provided by MrLama
    cp 21 - Fixed spell 1850 and ranks work in case non cat form. Patch provided by apendix
    cp 22 - Fixed spell 56815(Rune strike) patch from Warlord123
    cp 23 - Fixed spell 17962 work after switch to 3.3.x client version. Patch provided by Rsa
    cp 24 - Small fixed spell 17003 and ranks
    cp 25 - Fixed spell 58875. Patch provided by Insider
    cp 26 - Fixed spell 58677. Patch provided by laise
    cp 27 - Fixed spell 51523 and ranks. Patch provided by laise
    cp 28 - Improvements for pets. Patch provided by Corfen
    cp 29 - Added temporary fix for spell 47540 and ranks
    cp 30 - Fixed spell 48492 and ranks. Patch provided by Neveragain
    cp 31 - Fixed a bug with undying players
    cp 32 - Fix: remove invisibility effects at spell cast. Patch provided by Insider
    cp 33 - Make ".start" command and other stuck effects to teleport player at near graveyard instead of homebind location
    cp 34 - Fixed spells 51673, 52339, 62598, 62937, 65279, 62311, 64596 by Lutik
    cp 35 - Fixed spell 47541 (Death coil)
    cp 36 - Fixed combat limitation for spell 781 by Ceris
    cp 37 - Fixed spell 64382 working vs immunity effects. Patch provided by Insider
    cp 38 - Fix: not allow to stack buffs from spells 1459,23028,61024 and ranks. Patch provided by Insider
    cp 39 - Convert player body to ghost, except when a player ghoul
    cp 40 - Added checks for SpellHitResult
    cp 41 - Fixed spell 49018 and ranks
    cp 42 - Fixed spell 56249. Patch provided by laise
    cp 43 - Small cleanup in Spell::prepareDataForTriggerSystem(). Patch provided by pasdVn
    cp 44 - Fixed spell 56342 and ranks. Patch provided by pasdVn
    cp 45 - Fixed a bug when some auras were not removed by shapeshift. Patch provided by MrLama
    cp 46 - Add function SummonGameobject for gameobject summon. Patch provided by zergtmn
    cp 47 - Fixed crash with Unit::GetPet. Patch provided by NetSky, modified rsa
    cp 48 - Added temporary fix for spell 8178
    cp 49 - Fix: prevent replacing spell 588 and ranks buff by 26573 and ranks
    cp 50 - Fixed exploit with cooldown for spell 8177 at using spells 66842,66843,66844. Patch provided by Insider
    cp 51 - Attempt to fix some arena-related exploits. Patch provided by zergtmn
    cp 52 - Knockbak fix from PSZ
    cp 53 - Fixed stacking of spells 65684, 65686. Patch provided by Insider
    cp 54 - Added proc for spells 44543, 44545 to spell_proc_event
    cp 55 - Fixed stacking of spells 56648,57055. Patch provided by PSZ
    cp 56 - Fixed stacking of spells 52437,60503. Patch provided by Insider
    cp 57 - Fixed spell 48094. Patch provided by PSZ
    cp 58 - Fixed stacking of different effects for spell 30299 and ranks. Patch provided by Corfen
    cp 59 - Fixed invisibility for Arena Preparation. Patch provided by Insider
    cp 60 - Removed outdated data from DB. This fixes spell 12317 and ranks. Patch provided by laise
    cp 61 - Fixed spell 67356. Patch provided by laise
    cp 62 - Fixed crash with Unit::GetCombatDistance. Patch provided by zergtmn
    cp 63 - Fixed spell 51692 and ranks. Patch provided by Tequila
    cp 64 - Fixed replacing effect of spell 61840 by 20066. Patch provided by MrLama
    cp 65 - Fixed spell damage bonus for spell 54158. Patch provided by MrLama
    cp 66 - Fixed haste bonus for spell 15473. Patch provided by Tasssadar
    cp 67 - Implemented random battlegound system and other battleground fixes. Patch provided by GriffonHeart
    cp 68 - Fixed spell 66118. Patch provided by MaS0n and Insider
    cp 69 - Implemented SPELL_AURA_284. Patch provided by zergtmn
    cp 70 - Immunities for dispel type 5 and 6 should not remove causing auras but only restore visibility. Patch provided by KillerFrca
    cp 71 - Added debug logging of spelldifficulties
    cp 72 - Fixed spell 51690. Patch provided by Insider
    cp 73 - Hack-fix for exploit and crash with InstanceMap::Add. Patch provided by Insider, rsa
    cp 74 - Fixed spell 49203. Patch provided by KillerFrca
    cp 75 - Small fix for [cp 72]
    cp 76 - Fixed exploit with spell 49005. Patch provided by laise
    cp 77 - Fixed spells 51662, 48432 and ranks
    cp 78 - Fixed spell 47977. Patch provided by Insider
    cp 79 - Implemented Dalaran Sewers (Arena). Patch provided by Spp, Insider, rsa
    cp 80 - Added special table to DB for storage non-existed in DBC spells. Patch provided by QAston and Wowka321
    cp 81 - Fixed spell Demonic Circle by Insider
    cp 82 - Fix: creatures and totems shouldn't be able to crit with spells. Patch provided by PSZ, rsa
    cp 83 - Fixed spell 56819. Patch provided by microbius51
    cp 84 - DK ghoul fixed.
    cp 85 - New group loot system (from Wowka321) part 1
    cp 86 - Fixed debuff applying at using spell 633 and ranks. Patch provided by Insider
    cp 87 - Fixed spell (Dancing Rune Weapon) 49028. Patch provided by Feanordev
    cp 88 - Fix: don't allow to summon gameobjects at transport. Patch provided by Insider
    cp 89 - Implemented Ring of Valor (Arena). Patch provided by Spp and Insider
    cp 90 - Added helper functions to select units
    cp 91 - Fixed spell 50117 and ranks. Patch provided by kero99
    cp 92 - Fix: don't allow to use some teleport spells at transport. Patch provided by Insider
    cp 93 - Fixed health amount of creature summoned by spell 16190. Patch provided by Insider
    cp 94 - Fix crush in ThreatManager (from Wowka321)
    cp 95 - ACHIEVEMENT_FLAG_HIDDEN implement (from Wowka321)
    cp 96 - Removed wrong flag used in dbc for spell 27827. Patch provided by Insider
    cp 97 - Fixed spell 31850 and ranks. Patch provided by n0n4m3
    cp 98 - Fixed exploit with spell 53563. Patch provided by johonson
    cp 99 - Fixed spells 49208, 49467, 54639 and ranks. Patch provided by Laise
    cp 100 - Fix Spells with same Icons (from Hunderkuchen)
    cp 101 - Fix removing debuf 70541, 73779, 73780, 73781 at 90% health. original patch by Wowka321, modified by rsa
    cp 102 - Really stop moving on fear/confused remove. Patch provided by Tasssadar
    cp 103 - Implement PROC_FLAG_ON_DEATH. This allow to proc some spells at caster's death
    cp 104 - Remove aura 72293 if not in 631 map.
    cp 105 - Fixed spell 72350 (from Wowka321)
    cp 106 - Lich King spells correct (based on Wowka321 commits)
    cp 107 - Fixed a bug with resurrection spells used by spirit healers at BG
    cp 108 - Initialize variables (by Wall)
    cp 109 - Fixed stacking of spells 8921, 33745 and ranks. Patch provided by Tasssadar
    cp 110 - More addition to DK Ghoul, and restore work many of spells
    cp 111 - Mirror Image spell small addition
    cp 112 - Implemented old (tbc 1.x.x) PVP title system
    cp 113 - Set mover based on client response. Patch provided by zergtmn, correct by rsa
    cp 114 - Fix: apply aura 74411 at PvP maps. Patch provided by przemratajczak
    cp 115 - Fix: interrupt non melee spells at logout. Patch provided by zergtmn
    cp 116 - DK ghoul fixed. part 2
    cp 117 - Better resilience handling vs critical hits. Patch provided by reeshack
    cp 118 - Fix spell 69076 (from Wowka321 with rsa changes).
    cp 119 - Cast spells only in 631 map (from Wowka321).
    cp 120 - Small addition to mirror image & DK ghoul pet.
    cp 121 - Security level based GM visibility ierarchy by rsa
    cp 122 - Fix spell 71772 (from Wowka321)
    cp 123 - Implemented Snakes trap (from Wowka321) & small addition to prev. commit
    cp 124 - Some very old fixes.
    cp 125 - Marrowgar Bone storm correct 
    cp 126 - fix action bars after spec switch 
    cp 127 - Fix Icecrown healers trinket target selection
    cp 128 - Spell proc collection from Selector added
    cp 129 - multi_mounts (from Laise) implement.
