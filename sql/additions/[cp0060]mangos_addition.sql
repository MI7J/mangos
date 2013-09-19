-- Auto Broadcast
DELETE FROM mangos_string WHERE entry = 1300;
INSERT INTO mangos_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(1300, '|cffffcc00[Server]: |cff00ff00%s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- Spell Disabled
DROP TABLE IF EXISTS spell_disabled;
CREATE TABLE spell_disabled (
    entry int(11) unsigned NOT NULL default 0 COMMENT 'spell entry',
    ischeat_spell tinyint(3) unsigned NOT NULL default 0 COMMENT 'mark spell as cheat',
    active tinyint(3) unsigned NOT NULL default 1 COMMENT 'enable check of this spell',
    PRIMARY KEY (entry)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Disabled Spell System';

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
-- (56342) Lock and Load
DELETE FROM spell_proc_event WHERE entry = 56342;
INSERT INTO spell_proc_event VALUES (56342, 0x00, 0x09, 0x00000018, 0x00000018, 0x00000018, 0x08000000, 0x08000000, 0x08000000, 0x00064000, 0x00064000, 0x00064000, 0x00000000, 0x00000000, 0, 0, 0);
