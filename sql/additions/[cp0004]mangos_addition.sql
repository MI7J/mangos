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