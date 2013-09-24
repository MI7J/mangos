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
