-- Spell Disabled
DROP TABLE IF EXISTS spell_disabled;
CREATE TABLE spell_disabled (
    entry int(11) unsigned NOT NULL default 0 COMMENT 'spell entry',
    ischeat_spell tinyint(3) unsigned NOT NULL default 0 COMMENT 'mark spell as cheat',
    active tinyint(3) unsigned NOT NULL default 1 COMMENT 'enable check of this spell',
    PRIMARY KEY (entry)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Disabled Spell System';


-- Auto Broadcast
DELETE FROM mangos_string WHERE entry = 1300;
INSERT INTO mangos_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(1300, '|cffffcc00[Server]: |cff00ff00%s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


-- Spell DBC
DROP TABLE IF EXISTS spell_dbc;
CREATE TABLE IF NOT EXISTS spell_dbc (
  Id int(10) unsigned NOT NULL,
  Category int(10) unsigned NOT NULL DEFAULT '0',
  Dispel tinyint(3) unsigned NOT NULL DEFAULT '0',
  Mechanic tinyint(3) unsigned NOT NULL DEFAULT '0',
  Attributes int(10) unsigned NOT NULL DEFAULT '0',
  AttributesEx int(10) unsigned NOT NULL DEFAULT '0',
  AttributesEx2 int(10) unsigned NOT NULL DEFAULT '0',
  AttributesEx3 int(10) unsigned NOT NULL DEFAULT '0',
  AttributesEx4 int(10) unsigned NOT NULL DEFAULT '0',
  AttributesEx5 int(10) unsigned NOT NULL DEFAULT '0',
  AttributesEx6 int(10) unsigned NOT NULL DEFAULT '0',
  AttributesEx7 int(10) unsigned NOT NULL DEFAULT '0',
  Stances int(10) unsigned NOT NULL DEFAULT '0',
  StancesNot int(10) unsigned NOT NULL DEFAULT '0',
  Targets int(10) unsigned NOT NULL DEFAULT '0',
  RequiresSpellFocus int(10) unsigned NOT NULL DEFAULT '0',
  CasterAuraState int(10) unsigned NOT NULL DEFAULT '0',
  TargetAuraState int(10) NOT NULL DEFAULT '0',
  CasterAuraStateNot int(10) unsigned NOT NULL DEFAULT '0',
  TargetAuraStateNot int(10) NOT NULL DEFAULT '0',
  CasterAuraSpell int(10) unsigned NOT NULL DEFAULT '0',
  TargetAuraSpell int(10) unsigned NOT NULL DEFAULT '0',
  ExcludeCasterAuraSpell int(10) unsigned NOT NULL DEFAULT '0',
  ExcludeTargetAuraSpell int(10) unsigned NOT NULL DEFAULT '0',
  CastingTimeIndex tinyint(3) unsigned NOT NULL DEFAULT '1',
  RecoveryTime int(10) unsigned NOT NULL DEFAULT '0',
  CategoryRecoveryTime int(10) unsigned NOT NULL DEFAULT '0',
  InterruptFlags int(10) unsigned NOT NULL DEFAULT '0',
  AuraInterruptFlags int(10) unsigned NOT NULL DEFAULT '0',
  ProcFlags int(10) unsigned NOT NULL DEFAULT '0',
  ProcChance tinyint(3) unsigned NOT NULL DEFAULT '0',
  ProcCharges int(10) unsigned NOT NULL DEFAULT '0',
  MaxLevel tinyint(3) unsigned NOT NULL DEFAULT '0',
  BaseLevel tinyint(3) unsigned NOT NULL DEFAULT '0',
  SpellLevel tinyint(3) unsigned NOT NULL DEFAULT '0',
  DurationIndex smallint(5) unsigned NOT NULL DEFAULT '0',
  PowerType int(10) NOT NULL DEFAULT '0',
  ManaCost int(10) NOT NULL DEFAULT '0',
  ManaCostPerLevel int(10) NOT NULL DEFAULT '0',
  ManaPerSecond int(10) NOT NULL DEFAULT '0',
  ManaPerSecondPerLevel int(10) NOT NULL DEFAULT '0',
  RangeIndex tinyint(3) unsigned NOT NULL DEFAULT '1',
  Speed int(10) NOT NULL DEFAULT '0',
  StackAmount tinyint(3) unsigned NOT NULL DEFAULT '0',
  EquippedItemClass int(11) NOT NULL DEFAULT '-1',
  EquippedItemSubClassMask int(11) NOT NULL DEFAULT '0',
  EquippedItemInventoryTypeMask int(11) NOT NULL DEFAULT '0',
  Effect1 tinyint(3) unsigned NOT NULL DEFAULT '0',
  Effect2 tinyint(3) unsigned NOT NULL DEFAULT '0',
  Effect3 tinyint(3) unsigned NOT NULL DEFAULT '0',
  EffectDieSides1 int(11) NOT NULL DEFAULT '0',
  EffectDieSides2 int(11) NOT NULL DEFAULT '0',
  EffectDieSides3 int(11) NOT NULL DEFAULT '0',
  EffectRealPointsPerLevel1 float NOT NULL DEFAULT '0',
  EffectRealPointsPerLevel2 float NOT NULL DEFAULT '0',
  EffectRealPointsPerLevel3 float NOT NULL DEFAULT '0',
  EffectBasePoints1 int(11) NOT NULL DEFAULT '0',
  EffectBasePoints2 int(11) NOT NULL DEFAULT '0',
  EffectBasePoints3 int(11) NOT NULL DEFAULT '0',
  EffectMechanic1 tinyint(3) unsigned NOT NULL DEFAULT '0',
  EffectMechanic2 tinyint(3) unsigned NOT NULL DEFAULT '0',
  EffectMechanic3 tinyint(3) unsigned NOT NULL DEFAULT '0',
  EffectImplicitTargetA1 tinyint(3) unsigned NOT NULL DEFAULT '0',
  EffectImplicitTargetA2 tinyint(3) unsigned NOT NULL DEFAULT '0',
  EffectImplicitTargetA3 tinyint(3) unsigned NOT NULL DEFAULT '0',
  EffectImplicitTargetB1 tinyint(3) unsigned NOT NULL DEFAULT '0',
  EffectImplicitTargetB2 tinyint(3) unsigned NOT NULL DEFAULT '0',
  EffectImplicitTargetB3 tinyint(3) unsigned NOT NULL DEFAULT '0',
  EffectRadiusIndex1 tinyint(3) unsigned NOT NULL DEFAULT '0',
  EffectRadiusIndex2 tinyint(3) unsigned NOT NULL DEFAULT '0',
  EffectRadiusIndex3 tinyint(3) unsigned NOT NULL DEFAULT '0',
  EffectApplyAuraName1 smallint(5) unsigned NOT NULL DEFAULT '0',
  EffectApplyAuraName2 smallint(5) unsigned NOT NULL DEFAULT '0',
  EffectApplyAuraName3 smallint(5) unsigned NOT NULL DEFAULT '0',
  EffectAmplitude1 int(11) NOT NULL DEFAULT '0',
  EffectAmplitude2 int(11) NOT NULL DEFAULT '0',
  EffectAmplitude3 int(11) NOT NULL DEFAULT '0',
  EffectMultipleValue1 float NOT NULL DEFAULT '0',
  EffectMultipleValue2 float NOT NULL DEFAULT '0',
  EffectMultipleValue3 float NOT NULL DEFAULT '0',
  EffectItemType1 int(11) NOT NULL DEFAULT '0',
  EffectItemType2 int(11) unsigned NOT NULL DEFAULT '0',
  EffectMiscValue1 int(11) NOT NULL DEFAULT '0',
  EffectMiscValue2 int(11) NOT NULL DEFAULT '0',
  EffectMiscValue3 int(11) NOT NULL DEFAULT '0',
  EffectMiscValueB1 int(11) NOT NULL DEFAULT '0',
  EffectMiscValueB2 int(11) NOT NULL DEFAULT '0',
  EffectMiscValueB3 int(11) NOT NULL DEFAULT '0',
  EffectTriggerSpell1 int(10) unsigned NOT NULL DEFAULT '0',
  EffectTriggerSpell2 int(10) unsigned NOT NULL DEFAULT '0',
  EffectTriggerSpell3 int(10) unsigned NOT NULL DEFAULT '0',
  EffectSpellClassMaskA1 int(10) unsigned NOT NULL DEFAULT '0',
  EffectSpellClassMaskA2 int(10) unsigned NOT NULL DEFAULT '0',
  EffectSpellClassMaskA3 int(10) unsigned NOT NULL DEFAULT '0',
  EffectSpellClassMaskB1 int(10) unsigned NOT NULL DEFAULT '0',
  EffectSpellClassMaskB2 int(10) unsigned NOT NULL DEFAULT '0',
  EffectSpellClassMaskB3 int(10) unsigned NOT NULL DEFAULT '0',
  EffectSpellClassMaskC1 int(10) unsigned NOT NULL DEFAULT '0',
  EffectSpellClassMaskC2 int(10) unsigned NOT NULL DEFAULT '0',
  EffectSpellClassMaskC3 int(10) unsigned NOT NULL DEFAULT '0',
  SpellIconID int(10) unsigned NOT NULL DEFAULT '0',
  ManaCostPercentage int(10) NOT NULL DEFAULT '0',
  StartRecoveryCategory int(10) NOT NULL DEFAULT '0',
  StartRecoveryTime int(10) NOT NULL DEFAULT '0',
  MaxTargetLevel tinyint(3) unsigned NOT NULL DEFAULT '0',
  SpellFamilyName tinyint(3) unsigned NOT NULL DEFAULT '0',
  SpellFamilyFlags1 int(10) unsigned NOT NULL DEFAULT '0',
  SpellFamilyFlags2 int(10) unsigned NOT NULL DEFAULT '0',
  SpellFamilyFlags3 int(10) unsigned NOT NULL DEFAULT '0',
  MaxAffectedTargets tinyint(3) unsigned NOT NULL DEFAULT '0',
  DmgClass tinyint(3) unsigned NOT NULL DEFAULT '0',
  PreventionType tinyint(3) unsigned NOT NULL DEFAULT '0',
  DmgMultiplier1 float NOT NULL DEFAULT '0',
  DmgMultiplier2 float NOT NULL DEFAULT '0',
  DmgMultiplier3 float NOT NULL DEFAULT '0',
  AreaGroupId int(11) NOT NULL DEFAULT '0',
  SchoolMask int(10) unsigned NOT NULL DEFAULT '0',
  RuneCostID int(10) NOT NULL DEFAULT '0',
  Comment text NOT NULL,
  PRIMARY KEY (Id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Custom spell.dbc entries';

INSERT IGNORE INTO spell_dbc (Id, Dispel, Mechanic, Attributes, AttributesEx, AttributesEx2, AttributesEx3, AttributesEx4, AttributesEx5, Stances, StancesNot, Targets, CastingTimeIndex, AuraInterruptFlags, ProcFlags, ProcChance, ProcCharges, MaxLevel, BaseLevel, SpellLevel, DurationIndex, RangeIndex, StackAmount, EquippedItemClass, EquippedItemSubClassMask, EquippedItemInventoryTypeMask, Effect1, Effect2, Effect3, EffectDieSides1, EffectDieSides2, EffectDieSides3, EffectRealPointsPerLevel1, EffectRealPointsPerLevel2, EffectRealPointsPerLevel3, EffectBasePoints1, EffectBasePoints2, EffectBasePoints3, EffectMechanic1, EffectMechanic2, EffectMechanic3, EffectImplicitTargetA1, EffectImplicitTargetA2, EffectImplicitTargetA3, EffectImplicitTargetB1, EffectImplicitTargetB2, EffectImplicitTargetB3, EffectRadiusIndex1, EffectRadiusIndex2, EffectRadiusIndex3, EffectApplyAuraName1, EffectApplyAuraName2, EffectApplyAuraName3, EffectAmplitude1, EffectAmplitude2, EffectAmplitude3, EffectMultipleValue1, EffectMultipleValue2, EffectMultipleValue3, EffectMiscValue1, EffectMiscValue2, EffectMiscValue3, EffectMiscValueB1, EffectMiscValueB2, EffectMiscValueB3, EffectTriggerSpell1, EffectTriggerSpell2, EffectTriggerSpell3, EffectSpellClassMaskA1, EffectSpellClassMaskA2, EffectSpellClassMaskA3, EffectSpellClassMaskB1, EffectSpellClassMaskB2, EffectSpellClassMaskB3, EffectSpellClassMaskC1, EffectSpellClassMaskC2, EffectSpellClassMaskC3, MaxTargetLevel, SpellFamilyName, SpellFamilyFlags1, SpellFamilyFlags2, SpellFamilyFlags3, MaxAffectedTargets, DmgClass, PreventionType, DmgMultiplier1, DmgMultiplier2, DmgMultiplier3, AreaGroupId, SchoolMask, Comment) VALUES
(24395, 0, 0, 536936848, 32768, 4, 0, 0, 0, 0, 0, 1, 1, 0, 0, 101, 0, 0, 40, 40, 85, 1, 0, -1, 0, 0, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 77, 77, 77, 0, 0, 0, 0, 0, 0, 1, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bestial Wrath - Immunity'),
(24396, 0, 0, 536936848, 32768, 4, 0, 0, 0, 0, 0, 1, 1, 0, 0, 101, 0, 0, 40, 40, 85, 1, 0, -1, 0, 0, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 77, 77, 77, 0, 0, 0, 0, 0, 0, 14, 13, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bestial Wrath - Immunity'),
(24397, 0, 0, 536936848, 268468224, 4, 0, 0, 0, 0, 0, 1, 1, 0, 0, 101, 0, 0, 40, 40, 85, 1, 0, -1, 0, 0, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 77, 77, 77, 0, 0, 0, 0, 0, 0, 7, 10, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bestial Wrath - Immunity'),
(26592, 0, 0, 536936848, 268468224, 4, 0, 0, 0, 0, 0, 1, 1, 0, 0, 101, 0, 0, 40, 40, 85, 1, 0, -1, 0, 0, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 77, 77, 77, 0, 0, 0, 0, 0, 0, 2, 18, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bestial Wrath - Immunity'),
(24900, 0, 0, 400, 1024, 0, 0, 2097152, 0, 1, 0, 0, 1, 0, 0, 101, 0, 0, 0, 0, 21, 1, 0, -1, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Heart of the Wild - Cat Bonus'),
(24899, 0, 0, 400, 1024, 0, 0, 2097152, 0, 144, 0, 0, 1, 0, 0, 101, 0, 0, 0, 0, 21, 1, 0, -1, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 137, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Heart of the Wild - Bear Bonus'),
(56817, 0, 0, 384, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 16, 100, 1, 0, 67, 67, 1, 0, 0, -1, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rune Strike - Aura for 56815'),
(62388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 21, 1, 0, -1, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demonic Circle: Teleport(48020) - casterAuraSpell');


-- Dalaran Arena
UPDATE gameobject_template SET faction = 114, flags = 32, size = 1.5 WHERE entry IN (192642, 192643);
DELETE FROM gameobject WHERE map = 617;
DELETE FROM gameobject WHERE guid BETWEEN 600000 AND 601000;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
-- buffs
(600000, 184663, 617, 1, 1, 1291.7, 813.424, 7.11472, 4.64562, 0, 0, 0.730314, -0.683111, 86400, 100, 1),
(600001, 184664, 617, 1, 1, 1291.7, 768.911, 7.11472, 1.55194, 0, 0, 0.700409, 0.713742, 86400, 100, 1),
-- doors
(600002, 192642, 617, 1, 1, 1350.95, 817.2, 21.4096, 3.15, 0, 0, 0.99627, 0.0862864, 86400, 100, 1),
(600003, 192643, 617, 1, 1, 1232.65, 764.913, 21.4729, 6.3, 0, 0, 0.0310211, -0.999519, 86400, 100, 1),
-- waterfall
(600004, 194395, 617, 1, 1, 1291.6, 791.05, 7.11, 3.22012, 0, 0, 0.999229, -0.0392542, 86400, 100, 1),
(600005, 191877, 617, 1, 1, 1291.6, 791.05, 7.11, 3.22012, 0, 0, 0.999229, -0.0392542, 86400, 100, 1);
DELETE FROM gameobject_battleground WHERE guid IN (SELECT guid FROM gameobject WHERE map = 617);
INSERT INTO gameobject_battleground (guid, event1, event2) VALUES
-- buffs
(600000, 253, 0),
(600001, 253, 0),
-- doors
(600002, 254, 0),
(600003, 254, 0),
-- waterfall
(600004, 250, 0),
(600005, 250, 0);
DELETE FROM battleground_events WHERE map = 617;
INSERT INTO battleground_events (map, event1, event2, description) VALUES
(617, 253, 0, 'buffs'),
(617, 254, 0, 'doors'),
(617, 250, 0, 'waterfall');
-- Fix Rotation for all Objects in Map
UPDATE gameobject SET rotation0 = 0, rotation1 = 0, rotation2 = SIN(orientation * 0.5), rotation3 = COS(orientation * 0.5) WHERE map =  617;


-- Stoneclaw Totem I-X
UPDATE creature_template SET spell1 = 55328 WHERE entry = 3579;
UPDATE creature_template SET spell1 = 55329 WHERE entry = 3911;
UPDATE creature_template SET spell1 = 55330 WHERE entry = 3912;
UPDATE creature_template SET spell1 = 55332 WHERE entry = 3913;
UPDATE creature_template SET spell1 = 55333 WHERE entry = 7398;
UPDATE creature_template SET spell1 = 55335 WHERE entry = 7399;
UPDATE creature_template SET spell1 = 55278 WHERE entry = 15478;
UPDATE creature_template SET spell1 = 58589 WHERE entry = 31120;
UPDATE creature_template SET spell1 = 58590 WHERE entry = 31121;
UPDATE creature_template SET spell1 = 58591 WHERE entry = 31122;


-- spell_bonus_data
DELETE FROM spell_bonus_data WHERE entry = 54158;


-- spell_proc_event
-- (12317) Enrage
DELETE FROM spell_proc_event WHERE entry = 12317;
-- (22812) Barkskin
DELETE FROM spell_proc_event WHERE entry = 22812;
-- Fingers of Frost talent auras proc
DELETE FROM spell_proc_event WHERE entry IN (44543, 44545);
INSERT INTO spell_proc_event VALUES
(44543, 0, 0x03, 0x021002A0, 0x021002A0, 0x021002A0, 0x1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44545, 0, 0x03, 0x021002A0, 0x021002A0, 0x021002A0, 0x1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- (48492) King of the Jungle
DELETE FROM spell_proc_event WHERE entry IN (48492, 48494, 48495);
INSERT INTO spell_proc_event VALUES (48492, 0x00, 0x07, 524288, 524288, 524288, 0x00000000, 0x00000000, 0x00000000, 2048, 2048, 2048, 16384, 0x00000000, 0, 0, 0);
-- (49194) Unholy Blight
DELETE FROM spell_proc_event WHERE entry = 49194;
INSERT INTO spell_proc_event VALUES (49194, 0x00, 0x0F, 0x00002000, 0x00002000, 0x00002000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 0, 0);
-- (51692) Waylay 
DELETE FROM spell_proc_event WHERE entry = 51692;
INSERT INTO spell_proc_event VALUES (51692, 0x00, 0x08, 0x00000204, 0x00000204, 0x00000204, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 0, 0);
-- (56342) Lock and Load
DELETE FROM spell_proc_event WHERE entry = 56342;
INSERT INTO spell_proc_event VALUES (56342, 0x00, 0x09, 0x00000018, 0x00000018, 0x00000018, 0x08000000, 0x08000000, 0x08000000, 0x00064000, 0x00064000, 0x00064000, 0x00000000, 0x00000000, 0, 0, 0);
-- (67356) Item - Druid T9 Restoration Relic (Rejuvenation)
DELETE FROM spell_proc_event WHERE entry = 67356;
INSERT INTO spell_proc_event VALUES (67356, 0x00, 0x07, 0x00000010, 0x00000010, 0x00000010, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00040000, 0x00040000, 0, 50, 0);
