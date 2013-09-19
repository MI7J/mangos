-- Autobroadcast
DROP TABLE IF EXISTS autobroadcast;
CREATE TABLE IF NOT EXISTS autobroadcast (
  id int(11) NOT NULL auto_increment,
  text longtext NOT NULL,
  next int(11) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- Random Battleground system
DROP TABLE IF EXISTS character_battleground_random;
CREATE TABLE character_battleground_random (
    guid int(11) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY  (guid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE saved_variables
    ADD COLUMN NextRandomBGResetTime bigint(40) unsigned NOT NULL default 0 AFTER NextWeeklyQuestResetTime;