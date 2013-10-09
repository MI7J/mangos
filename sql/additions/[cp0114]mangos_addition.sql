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


-- Dalaran Severs Arena
UPDATE gameobject_template SET faction = 114, flags = 32, size = 1.5 WHERE entry IN (192642, 192643);
DELETE FROM gameobject WHERE map = 617;
DELETE FROM gameobject WHERE guid BETWEEN 600000 AND 600999;
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


-- The Ring of Valor Arena
UPDATE gameobject_template SET faction = 114, flags = 32 WHERE entry IN (192704, 192705, 192388, 192387, 192393, 192394, 192389, 192390);
DELETE FROM gameobject WHERE map = 618;
DELETE FROM gameobject WHERE guid BETWEEN 601000 AND 601999;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
-- buffs
(601000, 184663, 618, 1, 1, 735.551819, -284.794678, 28.276682, 0.034906, 0, 0, 0, 0, -120, 100, 1 ),
(601001, 184664, 618, 1, 1, 791.224487, -284.794464, 28.276682, 2.600535, 0, 0, 0, 0, -120, 100, 1 ),
-- elevators
(601002, 194582, 618, 1, 1, 763.536377, -294.535767, 0.505383, 3.141593, 0, 0, 0, 0, 120, 100, 1 ),
(601003, 194586, 618, 1, 1, 763.506348, -273.873352, 0.505383, 0, 0, 0, 0, 0, 120, 100, 1 ),
-- fire
(601004, 192704, 618, 1, 1, 743.543457, -283.799469, 28.286655, 0, 0, 0, 0, 0, 120, 100, 1 ),
(601005, 192705, 618, 1, 1, 782.971802, -283.799469, 28.286655, 0, 0, 0, 0, 0, 120, 100, 1 ),
(601006, 192388, 618, 1, 1, 743.711060, -284.099609, 27.542587, 3.141593, 0, 0, 0, 0, 120, 100, 1 ),
(601007, 192387, 618, 1, 1, 783.221252, -284.133362, 27.535686, 0, 0, 0, 0, 0, 120, 100, 1 ),
-- gears
(601008, 192393, 618, 1, 1, 763.664551, -261.872986, 26.686588, 0, 0, 0, 0, 0, 120, 100, 1 ),
(601009, 192394, 618, 1, 1, 763.578979, -306.146149, 26.665222, 3.141593, 0, 0, 0, 0, 120, 100, 1 ),
-- pillars
(601010, 194583, 618, 1, 1, 763.632385, -306.162384, 25.909504, 3.141593, 0, 0, 0, 0, 120, 100, 1 ),
(601011, 194584, 618, 1, 1, 723.644287, -284.493256, 24.648525, 3.141593, 0, 0, 0, 0, 120, 100, 1 ),
(601012, 194585, 618, 1, 1, 763.611145, -261.856750, 25.909504, 0, 0, 0, 0, 0, 120, 100, 1 ),
(601013, 194587, 618, 1, 1, 802.211609, -284.493256, 24.648525, 0, 0, 0, 0, 0, 120, 100, 1 ),
-- pulley
(601014, 192389, 618, 1, 1, 700.722290, -283.990662, 39.517582, 3.141593, 0, 0, 0, 0, 120, 100, 1 ),
(601015, 192390, 618, 1, 1, 826.303833, -283.996429, 39.517582, 0, 0, 0, 0, 0, 120, 100, 1 );
DELETE FROM gameobject_battleground WHERE guid IN (SELECT guid FROM gameobject WHERE map=618);
INSERT INTO gameobject_battleground
(guid, event1, event2) VALUES
-- buffs
(601000, 253, 0),
(601001, 253, 0),
-- elevators
(601002, 254, 0),
(601003, 254, 0);
DELETE FROM battleground_events WHERE map = 618;
INSERT INTO battleground_events (map, event1, event2, description) VALUES
(618, 253, 0, 'buffs'),
(618, 254, 0, 'doors');


-- Stats of pets
-- DK ghoul
DELETE FROM spell_pet_auras WHERE aura = 54566;
INSERT INTO spell_pet_auras VALUES
(48965, 1, 26125, 54566),
(49572, 1, 26125, 54566),
(49571, 1, 26125, 54566);
DELETE FROM pet_levelstats WHERE creature_entry = 26125;
INSERT INTO pet_levelstats VALUES
(26125, 1, 48, 80, 10, 20, 16, 13, 20, 8),
(26125, 2, 105, 106, 67, 22, 17, 14, 21, 9),
(26125, 3, 162, 132, 124, 24, 18, 15, 22, 10),
(26125, 4, 219, 158, 181, 26, 19, 16, 23, 11),
(26125, 5, 276, 184, 238, 28, 20, 17, 24, 12),
(26125, 6, 333, 210, 295, 30, 21, 18, 25, 13),
(26125, 7, 390, 236, 352, 32, 22, 19, 26, 14),
(26125, 8, 447, 262, 409, 34, 23, 20, 27, 15),
(26125, 9, 504, 288, 466, 36, 24, 21, 28, 16),
(26125, 10, 561, 314, 523, 38, 25, 22, 29, 17),
(26125, 11, 618, 340, 580, 40, 26, 23, 30, 18),
(26125, 12, 675, 366, 637, 42, 27, 24, 31, 19),
(26125, 13, 732, 392, 694, 44, 28, 25, 32, 20),
(26125, 14, 789, 418, 751, 46, 29, 26, 33, 21),
(26125, 15, 846, 444, 808, 48, 30, 27, 34, 22),
(26125, 16, 903, 470, 865, 50, 31, 28, 35, 23),
(26125, 17, 960, 496, 922, 52, 32, 29, 36, 24),
(26125, 18, 1017, 522, 979, 54, 33, 30, 37, 25),
(26125, 19, 1074, 548, 1036, 56, 34, 31, 38, 26),
(26125, 20, 1131, 574, 1093, 58, 35, 32, 39, 27),
(26125, 21, 1188, 600, 1150, 60, 36, 33, 40, 28),
(26125, 22, 1245, 626, 1207, 62, 37, 34, 41, 29),
(26125, 23, 1302, 652, 1264, 64, 38, 35, 42, 30),
(26125, 24, 1359, 678, 1321, 66, 39, 36, 43, 31),
(26125, 25, 1416, 704, 1378, 68, 40, 37, 44, 32),
(26125, 26, 1473, 730, 1435, 70, 41, 38, 45, 33),
(26125, 27, 1530, 756, 1492, 72, 42, 39, 46, 34),
(26125, 28, 1587, 782, 1549, 74, 43, 40, 47, 35),
(26125, 29, 1644, 808, 1606, 76, 44, 41, 48, 36),
(26125, 30, 1701, 834, 1663, 78, 45, 42, 49, 37),
(26125, 31, 1758, 860, 1720, 80, 46, 43, 50, 38),
(26125, 32, 1815, 886, 1777, 82, 47, 44, 51, 39),
(26125, 33, 1872, 912, 1834, 84, 48, 45, 52, 40),
(26125, 34, 1929, 938, 1891, 86, 49, 46, 53, 41),
(26125, 35, 1986, 964, 1948, 88, 50, 47, 54, 42),
(26125, 36, 2043, 990, 2005, 90, 51, 48, 55, 43),
(26125, 37, 2100, 1016, 2062, 92, 52, 49, 56, 44),
(26125, 38, 2157, 1042, 2119, 94, 53, 50, 57, 45),
(26125, 39, 2214, 1068, 2176, 96, 54, 51, 58, 46),
(26125, 40, 2271, 1094, 2233, 98, 55, 52, 59, 47),
(26125, 41, 2328, 1120, 2290, 100, 56, 53, 60, 48),
(26125, 42, 2385, 1146, 2347, 102, 57, 54, 61, 49),
(26125, 43, 2442, 1172, 2404, 104, 58, 55, 62, 50),
(26125, 44, 2499, 1198, 2461, 106, 59, 56, 63, 51),
(26125, 45, 2556, 1224, 2518, 108, 60, 57, 64, 52),
(26125, 46, 2613, 1250, 2575, 110, 61, 58, 65, 53),
(26125, 47, 2670, 1276, 2632, 112, 62, 59, 66, 54),
(26125, 48, 2727, 1302, 2689, 114, 63, 60, 67, 55),
(26125, 49, 2784, 1328, 2746, 116, 64, 61, 68, 56),
(26125, 50, 2841, 1354, 2803, 118, 65, 62, 69, 57),
(26125, 51, 2898, 1380, 2860, 120, 66, 63, 70, 58),
(26125, 52, 2955, 1406, 2917, 122, 67, 64, 71, 59),
(26125, 53, 3012, 1432, 2974, 124, 68, 65, 72, 60),
(26125, 54, 3069, 1458, 3031, 126, 69, 66, 73, 61),
(26125, 55, 3126, 1484, 3088, 128, 70, 67, 74, 62),
(26125, 56, 3183, 1510, 3145, 130, 71, 68, 75, 63),
(26125, 57, 3240, 1536, 3202, 132, 72, 69, 76, 64),
(26125, 58, 3297, 1562, 3259, 134, 73, 70, 77, 65),
(26125, 59, 3354, 1588, 3316, 136, 74, 71, 78, 66),
(26125, 60, 3411, 1614, 3373, 138, 75, 72, 79, 67),
(26125, 61, 3468, 1640, 3430, 140, 76, 73, 80, 68),
(26125, 62, 3525, 1666, 3487, 142, 77, 74, 81, 69),
(26125, 63, 3582, 1692, 3544, 144, 78, 75, 82, 70),
(26125, 64, 3639, 1718, 3601, 146, 79, 76, 83, 71),
(26125, 65, 3696, 1744, 3658, 148, 80, 77, 84, 72),
(26125, 66, 3753, 1770, 3715, 150, 81, 78, 85, 73),
(26125, 67, 3810, 1796, 3772, 152, 82, 79, 86, 74),
(26125, 68, 3867, 1822, 3829, 154, 83, 80, 87, 75),
(26125, 69, 3924, 1848, 3886, 156, 84, 81, 88, 76),
(26125, 70, 3981, 1874, 3943, 158, 85, 82, 89, 77),
(26125, 71, 4038, 1900, 4000, 160, 86, 83, 90, 78),
(26125, 72, 4095, 1926, 4057, 162, 87, 84, 91, 79),
(26125, 73, 4152, 1952, 4114, 164, 88, 85, 92, 80),
(26125, 74, 4209, 1978, 4171, 166, 89, 86, 93, 81),
(26125, 75, 4266, 2004, 4228, 168, 90, 87, 94, 82),
(26125, 76, 4323, 2030, 4285, 170, 91, 88, 95, 83),
(26125, 77, 4380, 2056, 4342, 172, 92, 89, 96, 84),
(26125, 78, 4437, 2082, 4399, 174, 93, 90, 97, 85),
(26125, 79, 4494, 2108, 4456, 176, 94, 91, 98, 86),
(26125, 80, 4551, 2134, 4513, 178, 95, 92, 99, 87);


-- Stoneclaw Totem I-X
UPDATE creature_template_spells SET spell1 = 55328 WHERE entry = 3579;
UPDATE creature_template_spells SET spell1 = 55329 WHERE entry = 3911;
UPDATE creature_template_spells SET spell1 = 55330 WHERE entry = 3912;
UPDATE creature_template_spells SET spell1 = 55332 WHERE entry = 3913;
UPDATE creature_template_spells SET spell1 = 55333 WHERE entry = 7398;
UPDATE creature_template_spells SET spell1 = 55335 WHERE entry = 7399;
UPDATE creature_template_spells SET spell1 = 55278 WHERE entry = 15478;
UPDATE creature_template_spells SET spell1 = 58589 WHERE entry = 31120;
UPDATE creature_template_spells SET spell1 = 58590 WHERE entry = 31121;
UPDATE creature_template_spells SET spell1 = 58591 WHERE entry = 31122;


-- spell_bonus_data
DELETE FROM spell_bonus_data WHERE entry = 54158;


-- apply aura 74411 at PvP maps
DELETE FROM spell_area WHERE spell IN (74411);
INSERT INTO spell_area VALUES 
-- Eye of The Storm (map 566)
(74411, 3820, 0, 0, 0, 0, 0, 2, 1), -- Eye of the storm (general)
(74411, 3869, 0, 0, 0, 0, 0, 2, 1), -- Mage Tower
(74411, 3870, 0, 0, 0, 0, 0, 2, 1), -- BE Tower
(74411, 3871, 0, 0, 0, 0, 0, 2, 1), -- Draenei Ruins
(74411, 3872, 0, 0, 0, 0, 0, 2, 1), -- Fel Reaver Ruins
-- Arathi Basin (map 529)
(74411, 3358, 0, 0, 0, 0, 0, 2, 1), -- Arathi Basin (general)
(74411, 3317, 0, 0, 0, 0, 0, 2, 1), -- Trollbane Hall
(74411, 3418, 0, 0, 0, 0, 0, 2, 1), -- Defilers Den
(74411, 3420, 0, 0, 0, 0, 0, 2, 1), -- Farm
(74411, 3421, 0, 0, 0, 0, 0, 2, 1), -- Blacksmith
(74411, 3422, 0, 0, 0, 0, 0, 2, 1), -- Lumber Mill
(74411, 3424, 0, 0, 0, 0, 0, 2, 1), -- Stables
(74411, 3423, 0, 0, 0, 0, 0, 2, 1), -- Gold Mine
-- Warsong Gulch (map 489)
(74411, 3277, 0, 0, 0, 0, 0, 2, 1), -- Warsong Gulch (general)
(74411, 3320, 0, 0, 0, 0, 0, 2, 1), -- Warsong Luber Mill
(74411, 3321, 0, 0, 0, 0, 0, 2, 1), -- Silverwing Hold
(74411, 4571, 0, 0, 0, 0, 0, 2, 1), -- Silverwing Flag Room
(74411, 4572, 0, 0, 0, 0, 0, 2, 1), -- Warsong Flag Room
-- Alterac Valley (map 30)
(74411, 2597, 0, 0, 0, 0, 0, 2, 1), -- Alterac Valley (general)
(74411, 2957, 0, 0, 0, 0, 0, 2, 1), -- Irondeep Mine
(74411, 2958, 0, 0, 0, 0, 0, 2, 1), -- Stonehearth Outpost
(74411, 2959, 0, 0, 0, 0, 0, 2, 1), -- Dun Baldar
(74411, 2960, 0, 0, 0, 0, 0, 2, 1), -- Icewing Pass
(74411, 2961, 0, 0, 0, 0, 0, 2, 1), -- Frostwolf Willage
(74411, 2962, 0, 0, 0, 0, 0, 2, 1), -- Tower Point
(74411, 2963, 0, 0, 0, 0, 0, 2, 1), -- Coldtooth Mine
(74411, 2964, 0, 0, 0, 0, 0, 2, 1), -- Winterax Hold
(74411, 2977, 0, 0, 0, 0, 0, 2, 1), -- Iceblood Garrison
(74411, 2978, 0, 0, 0, 0, 0, 2, 1), -- Frostwolf Keep
(74411, 3017, 0, 0, 0, 0, 0, 2, 1), -- Frost Dagger Pass
(74411, 3057, 0, 0, 0, 0, 0, 2, 1), -- Field of Strife
(74411, 3058, 0, 0, 0, 0, 0, 2, 1), -- Icewing Cavern
(74411, 3297, 0, 0, 0, 0, 0, 2, 1), -- Frostwolf Graveyard
(74411, 3298, 0, 0, 0, 0, 0, 2, 1), -- Frostwolf Pass
(74411, 3299, 0, 0, 0, 0, 0, 2, 1), -- Dun Baldar Pass
(74411, 3300, 0, 0, 0, 0, 0, 2, 1), -- Iceblood Graveyard
(74411, 3301, 0, 0, 0, 0, 0, 2, 1), -- Snowfall Graveyard
(74411, 3302, 0, 0, 0, 0, 0, 2, 1), -- Stonehearth Graveyard
(74411, 3303, 0, 0, 0, 0, 0, 2, 1), -- Stormpike Graveyard
(74411, 3304, 0, 0, 0, 0, 0, 2, 1), -- Icewing Bunker
(74411, 3305, 0, 0, 0, 0, 0, 2, 1), -- Stonhearth Bunker
(74411, 3306, 0, 0, 0, 0, 0, 2, 1), -- Wildpaw Ridge
(74411, 3318, 0, 0, 0, 0, 0, 2, 1), -- Rock of Durotan
(74411, 3337, 0, 0, 0, 0, 0, 2, 1), -- Wildpaw Cavern
(74411, 3338, 0, 0, 0, 0, 0, 2, 1), -- The Vieled Cleft
(74411, 4407, 0, 0, 0, 0, 0, 2, 1), -- Hall of the Frostwolf
(74411, 4408, 0, 0, 0, 0, 0, 2, 1), -- Hall of the Stormpike
-- Stand of the Ancients (map 607)
(74411, 4384, 0, 0, 0, 0, 0, 2, 1), -- Strand of the Ancients (general)
(74411, 4604, 0, 0, 0, 0, 0, 2, 1), -- Gate of the Red Sun
(74411, 4605, 0, 0, 0, 0, 0, 2, 1), -- Gate of the Blue Sapphire
(74411, 4606, 0, 0, 0, 0, 0, 2, 1), -- Gate of the Green Emerald
(74411, 4607, 0, 0, 0, 0, 0, 2, 1), -- Gate of the Purple Amethyst
(74411, 4608, 0, 0, 0, 0, 0, 2, 1), -- Gate of the Yellow Moon
(74411, 4609, 0, 0, 0, 0, 0, 2, 1), -- Courtyard of the Ancients
(74411, 4610, 0, 0, 0, 0, 0, 2, 1), -- Landing Beach
-- Isle of Conquest (map 628)
(74411, 4710, 0, 0, 0, 0, 0, 2, 1), -- Isle of Conquest (general)
(74411, 4741, 0, 0, 0, 0, 0, 2, 1), -- Isle of Conquest - No Man's Land
(74411, 4747, 0, 0, 0, 0, 0, 2, 1), -- Workshop
(74411, 4748, 0, 0, 0, 0, 0, 2, 1), -- Quarry
(74411, 4749, 0, 0, 0, 0, 0, 2, 1), -- Docks
(74411, 4750, 0, 0, 0, 0, 0, 2, 1), -- Hangar
(74411, 4751, 0, 0, 0, 0, 0, 2, 1), -- Refinery
(74411, 4752, 0, 0, 0, 0, 0, 2, 1), -- Horde Keep
(74411, 4753, 0, 0, 0, 0, 0, 2, 1); -- Alliance Keep

DELETE FROM spell_area WHERE spell IN (74410);
INSERT INTO spell_area VALUES 
(74410, 4406, 0, 0, 0, 0, 0, 2, 1), -- Ring of Valor (map 618)
(74410, 3968, 0, 0, 0, 0, 0, 2, 1), -- Ruins of Loraeron (map 572)
(74410, 3638, 0, 0, 0, 0, 0, 2, 1), -- Ring of Trials (map 572)
(74410, 3698, 0, 0, 0, 0, 0, 2, 1), -- Nagrand Arena (map 559)
(74410, 3702, 0, 0, 0, 0, 0, 2, 1), -- BEM Arena (map 562)
(74410, 4378, 0, 0, 0, 0, 0, 2, 1); -- Dalaran Arena (map 617);


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
-- (49467) Death Rune Mastery
DELETE FROM spell_proc_event WHERE entry IN (49208, 49467, 54639);
INSERT INTO spell_proc_event VALUES
(49467, 0x00, 0x0F, 0x00000010, 0x00020000, 0x00000000, 0x00010010, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 0, 0),
(49208, 0x00, 0x0F, 0x00400000, 0x00010000, 0x00000000, 0x00010010, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 0, 0),
(54639, 0x00, 0x0F, 0x00400000, 0x00010000, 0x00000000, 0x00010010, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 0, 0);
-- (51692) Waylay 
DELETE FROM spell_proc_event WHERE entry = 51692;
INSERT INTO spell_proc_event VALUES (51692, 0x00, 0x08, 0x00000204, 0x00000204, 0x00000204, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0, 0, 0);
-- (56342) Lock and Load
DELETE FROM spell_proc_event WHERE entry = 56342;
INSERT INTO spell_proc_event VALUES (56342, 0x00, 0x09, 0x00000018, 0x00000018, 0x00000018, 0x08000000, 0x08000000, 0x08000000, 0x00064000, 0x00064000, 0x00064000, 0x00000000, 0x00000000, 0, 0, 0);
-- (67356) Item - Druid T9 Restoration Relic (Rejuvenation)
DELETE FROM spell_proc_event WHERE entry = 67356;
INSERT INTO spell_proc_event VALUES (67356, 0x00, 0x07, 0x00000010, 0x00000010, 0x00000010, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00040000, 0x00040000, 0, 50, 0);
