SET NAMES UTF8;
DROP DATABASE IF EXISTS dota2;
CREATE DATABASE dota2 CHARSET=UTF8;
use dota2;
CREATE TABLE dota2_user(
	uid bigint PRIMARY KEY AUTO_INCREMENT,
	email varchar(20),
	password varchar(20),
	true_name varchar(20),
	id_card   bigint,
	phone  bigint
);
CREATE TABLE dota2_hero(
	hid bigint PRIMARY key AUTO_INCREMENT,
	hename varchar(20),
	hcname varchar(20),
	hattr varchar(10),
	skill varchar(20),
	roles varchar(50),
	astyle varchar(20),
	spic varchar(100),
	bpic varchar(100)
);
INSERT INTO dota2_hero VALUES("null","earthshaker","撼地者","力量","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","辅助 - 先手 - 控制 - 爆发","近战","image/heros/earthshaker_sb.png","image/heros/earthshaker_hphover.png");
INSERT INTO dota2_hero VALUES("null","sven","斯温","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 控制 - 先手 - 耐久 - 爆发","近战","image/heros/sven_sb.png","image/heros/sven_hphover.png");
INSERT INTO dota2_hero VALUES("null","tiny","小小","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 爆发 - 推进 - 先手 - 耐久 - 控制","近战","image/heros/tiny_sb.png","image/heros/tiny_hphover.png");
INSERT INTO dota2_hero VALUES("null","kunkka","昆卡","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 控制 - 先手 - 耐久 - 爆发","近战","image/heros/kunkka_sb.png","image/heros/kunkka_hphover.png");
INSERT INTO dota2_hero VALUES("null","beastmaster","兽王","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","先手 - 控制 - 耐久 - 爆发","近战","image/heros/beastmaster_sb.png","image/heros/beastmaster_hphover.png");
INSERT INTO dota2_hero VALUES("null","beastmaster","龙骑士","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 推进 - 耐久 - 控制 - 先手 - 爆发","近战","image/heros/dragon_knight_sb.png","image/heros/dragon_knight_hphover.png");
INSERT INTO dota2_hero VALUES("null","rattletrap","发条技师","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","先手 - 控制 - 耐久 - 爆发","近战","image/heros/rattletrap_sb.png","image/heros/rattletrap_hphover.png");
INSERT INTO dota2_hero VALUES("null","omniknight","全能骑士","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","辅助 - 耐久 - 爆发","近战","image/heros/omniknight_sb.png","image/heros/omniknight_hphover.png");
INSERT INTO dota2_hero VALUES("null","huskar","哈斯卡","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 耐久 - 先手","近战","image/heros/huskar_sb.png","image/heros/huskar_hphover.png");
INSERT INTO dota2_hero VALUES("null","rattletrap","炼金术士","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 辅助 - 耐久 - 控制 - 先手 - 爆发","近战","image/heros/alchemist_sb.png","image/heros/alchemist_hphover.png");
INSERT INTO dota2_hero VALUES("null","brewmaster","酒仙","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 先手 - 耐久 - 控制 - 爆发","近战","image/heros/brewmaster_sb.png","image/heros/brewmaster_hphover.png");
INSERT INTO dota2_hero VALUES("null","rattletrap","树精卫士","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","辅助 - 先手 - 耐久 - 控制 - 逃生","近战","image/heros/treant_sb.png","image/heros/treant_hphover.png");
INSERT INTO dota2_hero VALUES("null","wisp","艾欧","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","辅助 - 逃生 - 爆发","近战","image/heros/wisp_sb.png","image/heros/wisp_hphover.png");
INSERT INTO dota2_hero VALUES("null","centaur","半人马战行者","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","耐久 - 先手 - 控制 - 爆发 - 逃生","近战","image/heros/centaur_sb.png","image/heros/centaur_hphover.png");
INSERT INTO dota2_hero VALUES("null","shredder","伐木机","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","爆发 - 耐久 - 逃生","近战","image/heros/shredder_sb.png","image/heros/shredder_hphover.png");
INSERT INTO dota2_hero VALUES("null","bristleback","钢背兽","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 耐久 - 先手 - 爆发","近战","image/heros/bristleback_sb.png","image/heros/bristleback_hphover.png");
INSERT INTO dota2_hero VALUES("null","tusk","巨牙海民","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","先手 - 控制 - 爆发","近战","image/heros/tusk_sb.png","image/heros/tusk_hphover.png");
INSERT INTO dota2_hero VALUES("null","elder_titan","上古巨神","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","先手 - 控制 - 爆发 - 耐久","近战","image/heros/elder_titan_sb.png","image/heros/elder_titan_hphover.png");
INSERT INTO dota2_hero VALUES("null","legion_commander","上古巨神","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 控制 - 先手 - 耐久 - 爆发","近战","image/heros/legion_commander_sb.png","image/heros/legion_commander_hphover.png");
INSERT INTO dota2_hero VALUES("null","earth_spirit","大地之灵","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","爆发 - 逃生 - 控制 - 先手 - 耐久","近战","image/heros/earth_spirit_sb.png","image/heros/earth_spirit_hphover.png");
INSERT INTO dota2_hero VALUES("null","phoenix","凤凰","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","辅助 - 爆发 - 先手 - 逃生 - 控制","远程","image/heros/phoenix_sb.png","image/heros/phoenix_hphover.png");
INSERT INTO dota2_hero VALUES("null","Mars","玛尔斯","力量","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 先手 - 控制 - 耐久","近战","image/heros/Mars_sb.png","image/heros/Mars_hphover.png");
INSERT INTO dota2_hero VALUES("null","antimage","敌法师","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 逃生 - 爆发","近战","image/heros/antimage_sb.png","image/heros/antimage_hphover.png");
INSERT INTO dota2_hero VALUES("null","drow_ranger","卓尔游侠","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 控制 - 推进","远程","image/heros/drow_ranger_sb.png","image/heros/drow_ranger_hphover.png");
INSERT INTO dota2_hero VALUES("null","drow_ranger","主宰","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 推进 - 逃生","近战","image/heros/juggernaut_sb.png","image/heros/juggernaut_hphover.png");
INSERT INTO dota2_hero VALUES("null","mirana","米拉娜","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 辅助 - 逃生 - 爆发 - 控制","远程","image/heros/mirana_sb.png","image/heros/mirana_hphover.png");
INSERT INTO dota2_hero VALUES("null","morphling","变体精灵","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 逃生 - 耐久 - 爆发 - 控制","远程","image/heros/morphling_sb.png","image/heros/morphling_hphover.png");
INSERT INTO dota2_hero VALUES("null","phantom_lancer","幻影长矛手","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 逃生 - 推进 - 爆发","近战","image/heros/phantom_lancer_sb.png","image/heros/phantom_lancer_hphover.png");
INSERT INTO dota2_hero VALUES("null","vengefulspirit","复仇之魂","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","辅助 - 先手 - 控制 - 爆发 - 逃生","远程","image/heros/vengefulspirit_sb.png","image/heros/vengefulspirit_hphover.png");
INSERT INTO dota2_hero VALUES("null","riki","力丸","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 逃生 - 控制","近战","image/heros/riki_sb.png","image/heros/riki_hphover.png");
INSERT INTO dota2_hero VALUES("null","sniper","狙击手","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 爆发","远程","image/heros/sniper_sb.png","image/heros/sniper_hphover.png");
INSERT INTO dota2_hero VALUES("null","templarr_assassin","圣堂刺客","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 逃生","远程","image/heros/templar_assassin_sb.png","image/heros/templar_assassin_hphover.png");
INSERT INTO dota2_hero VALUES("null","luna","露娜","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 爆发 - 推进","远程","image/heros/luna_sb.png","image/heros/luna_hphover.png");
INSERT INTO dota2_hero VALUES("null","bounty_hunter","赏金猎人","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","逃生 - 爆发","近战","image/heros/bounty_hunter_sb.png","image/heros/bounty_hunter_hphover.png");
INSERT INTO dota2_hero VALUES("null","ursa","熊战士","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 打野 - 耐久 - 控制","近战","image/heros/ursa_sb.png","image/heros/ursa_hphover.png");
INSERT INTO dota2_hero VALUES("null","gyrocopter","矮人直升机","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 爆发 - 控制","远程","image/heros/gyrocopter_sb.png","image/heros/gyrocopter_hphover.png");
INSERT INTO dota2_hero VALUES("null","lone_druid","德鲁伊","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 推进 - 打野 - 耐久","远程","image/heros/lone_druid_sb.png","image/heros/lone_druid_hphover.png");
INSERT INTO dota2_hero VALUES("null","naga_siren","娜迦海妖","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 辅助 - 推进 - 控制 - 先手 - 逃生","近战","image/heros/naga_siren_sb.png","image/heros/naga_siren_hphover.png");
INSERT INTO dota2_hero VALUES("null","troll_warlord","巨魔战将","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 辅助 - 推进 - 控制 - 先手 - 逃生","远程","image/heros/troll_warlord_sb.png","image/heros/troll_warlord_hphover.png");
INSERT INTO dota2_hero VALUES("null","ember_spirit","灰烬之灵","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 逃生 - 爆发 - 控制 - 先手","近战","image/heros/ember_spirit_sb.png","image/heros/ember_spirit_hphover.png");
INSERT INTO dota2_hero VALUES("null","monkey_king","齐天大圣","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 逃生 - 控制 - 先手","近战","image/heros/monkey_king_sb.png","image/heros/monkey_king_hphover.png");
INSERT INTO dota2_hero VALUES("null","pangolier","石鳞剑士","敏捷","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 爆发 - 控制 - 耐久 - 逃生 - 先手","近战","image/heros/pangolier_sb.png","image/heros/pangolier_hphover.png");
INSERT INTO dota2_hero VALUES("null","crystal_maiden","水晶室女","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","辅助 - 控制 - 爆发 - 打野","远程","image/heros/crystal_maiden_sb.png","image/heros/crystal_maiden_hphover.png");
INSERT INTO dota2_hero VALUES("null","puck","帕克","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","先手 - 控制 - 逃生 - 爆发","远程","image/heros/puck_sb.png","image/heros/puck_hphover.png");
INSERT INTO dota2_hero VALUES("null","storm_spirit","风暴之灵","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 逃生 - 爆发 - 先手 - 控制","远程","image/heros/storm_spirit_sb.png","image/heros/storm_spirit_hphover.png");
INSERT INTO dota2_hero VALUES("null","windrunner","风行者","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 辅助 - 控制 - 逃生 - 爆发","远程","image/heros/windrunner_sb.png","image/heros/windrunner_hphover.png");
INSERT INTO dota2_hero VALUES("null","zuus","宙斯","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","爆发","远程","image/heros/zuus_sb.png","image/heros/zuus_hphover.png");
INSERT INTO dota2_hero VALUES("null","lina","莉娜","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","辅助 - 核心 - 爆发 - 控制","远程","image/heros/lina_sb.png","image/heros/lina_hphover.png");
INSERT INTO dota2_hero VALUES("null","shadow_shaman","暗影萨满","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","辅助 - 推进 - 控制 - 爆发 - 先手","远程","image/heros/shadow_shaman_sb.png","image/heros/shadow_shaman_hphover.png");
INSERT INTO dota2_hero VALUES("null","tinker","修补匠","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 爆发 - 推进","远程","image/heros/tinker_sb.png","image/heros/tinker_hphover.png");
INSERT INTO dota2_hero VALUES("null","furion","先知","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 打野 - 推进 - 逃生 - 爆发","远程","image/heros/furion_sb.png","image/heros/furion_hphover.png");
INSERT INTO dota2_hero VALUES("null","enchantress","魅惑魔女","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","辅助 - 打野 - 推进 - 耐久 - 控制","远程","image/heros/enchantress_sb.png","image/heros/enchantress_hphover.png");
INSERT INTO dota2_hero VALUES("null","jakiro","杰洛奇","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","辅助 - 爆发 - 推进 - 控制","远程","image/heros/jakiro_sb.png","image/heros/jakiro_hphover.png");
INSERT INTO dota2_hero VALUES("null","chen","陈","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","辅助 - 打野 - 推进","远程","image/heros/chen_sb.png","image/heros/chen_hphover.png");
INSERT INTO dota2_hero VALUES("null","silencer","沉默术士","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","核心 - 辅助 - 控制 - 先手 - 爆发","远程","image/heros/silencer_sb.png","image/heros/silencer_hphover.png");
INSERT INTO dota2_hero VALUES("null","ogre_magi","食人魔魔法师","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","辅助 - 爆发 - 控制 - 耐久 - 先手","近战","image/heros/ogre_magi_sb.png","image/heros/ogre_magi_hphover.png");
INSERT INTO dota2_hero VALUES("null","rubick","拉比克","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","辅助 - 控制 - 爆发","远程","image/heros/rubick_sb.png","image/heros/rubick_hphover.png");
INSERT INTO dota2_hero VALUES("null","disruptor","干扰者","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","辅助 - 控制 - 爆发 - 先手","远程","image/heros/disruptor_sb.png","image/heros/disruptor_hphover.png");
INSERT INTO dota2_hero VALUES("null","keeper_of_the_light","光之守卫","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","辅助 - 爆发 - 控制 - 打野","远程","image/heros/keeper_of_the_light_sb.png","image/heros/keeper_of_the_light_hphover.png");
INSERT INTO dota2_hero VALUES("null","skywrath_mage","天怒法师","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","辅助 - 爆发 - 控制","远程","image/heros/skywrath_mage_sb.png","image/heros/skywrath_mage_hphover.png");
INSERT INTO dota2_hero VALUES("null","oracle","神谕者","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","辅助 - 爆发 - 控制 - 逃生","远程","image/heros/oracle_sb.png","image/heros/oracle_hphover.png");
INSERT INTO dota2_hero VALUES("null","techies","工程师","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","爆发 - 控制","远程","image/heros/techies_sb.png","image/heros/techies_hphover.png");
INSERT INTO dota2_hero VALUES("null","dark_willow","邪影芳灵","智力","{[1,13,14,16],[4,5,7,8],[2,3,9,11],[6,12,18],[10,15,20,25]}","辅助 - 爆发 - 控制 - 逃生","远程","image/heros/dark_willow_sb.png","image/heros/dark_willow_hphover.png");
INSERT INTO dota2_hero VALUES("null","axe","斧王","力量","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","先手 - 耐久 - 控制 - 打野","近战","image/heros/axe_sb.png","image/heros/axe_hphover.png");
INSERT INTO dota2_hero VALUES("null","pudge","帕吉","力量","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","控制 - 先手 - 耐久 - 爆发","近战","image/heros/pudge_sb.png","image/heros/pudge_hphover.png");
INSERT INTO dota2_hero VALUES("null","sand_king","沙王","力量","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","先手 - 控制 - 辅助 - 爆发 - 逃生 - 打野","近战","image/heros/sand_king_sb.png","image/heros/sand_king_hphover.png");
INSERT INTO dota2_hero VALUES("null","slardar","斯拉达","力量","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 耐久 - 先手 - 控制 - 逃生","近战","image/heros/slardar_sb.png","image/heros/slardar_hphover.png");
INSERT INTO dota2_hero VALUES("null","tidehunter","潮汐猎人","力量","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","先手 - 耐久 - 控制 - 爆发","近战","image/heros/tidehunter_sb.png","image/heros/tidehunter_hphover.png");
INSERT INTO dota2_hero VALUES("null","wraith_king","冥魂大帝","力量","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 辅助 - 耐久 - 控制 - 先手","近战","image/heros/wraith_king_sb.png","image/heros/wraith_king_hphover.png");
INSERT INTO dota2_hero VALUES("null","life_stealer","噬魂鬼","力量","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 耐久 - 打野 - 逃生 - 控制","近战","image/heros/life_stealer_sb.png","image/heros/life_stealer_hphover.png");
INSERT INTO dota2_hero VALUES("null","night_stalker","暗影恶魔","力量","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 先手 - 耐久 - 控制 - 爆发","近战","image/heros/night_stalker_sb.png","image/heros/night_stalker_hphover.png");
INSERT INTO dota2_hero VALUES("null","doom_bringer","末日使者","力量","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 控制 - 先手 - 耐久 - 爆发","近战","image/heros/doom_bringer_sb.png","image/heros/doom_bringer_hphover.png");
INSERT INTO dota2_hero VALUES("null","spirit_breaker","裂魂人","力量","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 先手 - 控制 - 耐久 - 逃生","近战","image/heros/spirit_breaker_sb.png","image/heros/spirit_breaker_hphover.png");
INSERT INTO dota2_hero VALUES("null","lycan","狼人","力量","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 推进 - 打野 - 耐久 - 逃生","近战","image/heros/lycan_sb.png","image/heros/lycan_hphover.png");
INSERT INTO dota2_hero VALUES("null","chaos_knight","混沌骑士","力量","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 控制 - 耐久 - 推进 - 先手","近战","image/heros/chaos_knight_sb.png","image/heros/chaos_knight_hphover.png");
INSERT INTO dota2_hero VALUES("null","undying","不朽尸王","力量","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","辅助 - 耐久 - 控制 - 爆发","近战","image/heros/undying_sb.png","image/heros/undying_hphover.png");
INSERT INTO dota2_hero VALUES("null","magnataur","马格纳斯","力量","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","先手 - 控制 - 爆发 - 逃生","近战","image/heros/magnataur_sb.png","image/heros/magnataur_hphover.png");
INSERT INTO dota2_hero VALUES("null","abaddon","亚巴顿","力量","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","辅助 - 核心 - 耐久","近战","image/heros/abaddon_sb.png","image/heros/abaddon_hphover.png");
INSERT INTO dota2_hero VALUES("null","abyssal_underlord","孽主","力量","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","辅助 - 爆发 - 控制 - 耐久 - 逃生","近战","image/heros/abyssal_underlord_sb.png","image/heros/abyssal_underlord_hphover.png");
INSERT INTO dota2_hero VALUES("null","bloodseeker","血魔","敏捷","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 控制 - 打野 - 爆发 - 先手","近战","image/heros/bloodseeker_sb.png","image/heros/bloodseeker_hphover.png");
INSERT INTO dota2_hero VALUES("null","nevermore","影魔","敏捷","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 爆发","远程","image/heros/nevermore_sb.png","image/heros/nevermore_hphover.png");
INSERT INTO dota2_hero VALUES("null","razor","剃刀","敏捷","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 耐久 - 爆发 - 推进","远程","image/heros/razor_sb.png","image/heros/razor_hphover.png");
INSERT INTO dota2_hero VALUES("null","venomancer","剧毒术士","敏捷","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","辅助 - 爆发 - 先手 - 推进 - 控制","远程","image/heros/venomancer_sb.png","image/heros/venomancer_hphover.png");
INSERT INTO dota2_hero VALUES("null","faceless_void","虚空假面","敏捷","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 先手 - 控制 - 逃生 - 耐久","近战","image/heros/faceless_void_sb.png","image/heros/faceless_void_hphover.png");
INSERT INTO dota2_hero VALUES("null","phantom_assassin","幻影刺客","敏捷","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 逃生","近战","image/heros/phantom_assassin_sb.png","image/heros/phantom_assassin_hphover.png");
INSERT INTO dota2_hero VALUES("null","viper","冥界亚龙","敏捷","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 耐久 - 先手 - 控制","远程","image/heros/viper_sb.png","image/heros/viper_hphover.png");
INSERT INTO dota2_hero VALUES("null","clinkz","克林克兹","敏捷","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 逃生 - 推进","远程","image/heros/clinkz_sb.png","image/heros/clinkz_hphover.png");
INSERT INTO dota2_hero VALUES("null","broodmother","育母蜘蛛","敏捷","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 推进 - 逃生 - 爆发","远程","image/heros/broodmother_sb.png","image/heros/broodmother_hphover.png");
INSERT INTO dota2_hero VALUES("null","weaver","编织者","敏捷","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 逃生","远程","image/heros/weaver_sb.png","image/heros/weaver_hphover.png");
INSERT INTO dota2_hero VALUES("null","spectre","幽鬼","敏捷","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 耐久 - 逃生","近战","image/heros/spectre_sb.png","image/heros/spectre_hphover.png");
INSERT INTO dota2_hero VALUES("null","meepo","米波","敏捷","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 逃生 - 爆发 - 控制 - 先手 - 推进","近战","image/heros/meepo_sb.png","image/heros/meepo_hphover.png");
INSERT INTO dota2_hero VALUES("null","nyx_assassin","司夜刺客","敏捷","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","控制 - 爆发 - 先手 - 逃生","近战","image/heros/nyx_assassin_sb.png","image/heros/nyx_assassin_hphover.png");
INSERT INTO dota2_hero VALUES("null","slark","斯拉克","敏捷","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 逃生 - 控制 - 爆发","近战","image/heros/slark_sb.png","image/heros/slark_hphover.png");
INSERT INTO dota2_hero VALUES("null","medusa","美杜莎","敏捷","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 控制 - 耐久","远程","image/heros/medusa_sb.png","image/heros/medusa_hphover.png");
INSERT INTO dota2_hero VALUES("null","terrorblade","恐怖利刃","敏捷","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 推进 - 爆发","近战","image/heros/terrorblade_sb.png","image/heros/terrorblade_hphover.png");
INSERT INTO dota2_hero VALUES("null","arc_warden","天穹守望者","敏捷","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 逃生 - 爆发","远程","image/heros/arc_warden_sb.png","image/heros/arc_warden_hphover.png");
INSERT INTO dota2_hero VALUES("null","bane","祸乱之源","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","辅助 - 控制 - 爆发 - 耐久","远程","image/heros/bane_sb.png","image/heros/bane_hphover.png");
INSERT INTO dota2_hero VALUES("null","lich","巫妖","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","辅助 - 爆发","远程","image/heros/lich_sb.png","image/heros/lich_hphover.png");
INSERT INTO dota2_hero VALUES("null","lion","莱恩","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","辅助 - 控制 - 爆发 - 先手","远程","image/heros/lion_sb.png","image/heros/lion_hphover.png");
INSERT INTO dota2_hero VALUES("null","witch_doctor","巫医","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","辅助 - 爆发 - 控制","远程","image/heros/witch_doctor_sb.png","image/heros/witch_doctor_hphover.png");
INSERT INTO dota2_hero VALUES("null","enigma","谜团","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","控制 - 打野 - 先手 - 推进","远程","image/heros/enigma_sb.png","image/heros/enigma_hphover.png");
INSERT INTO dota2_hero VALUES("null","necrolyte","瘟疫法师","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 爆发 - 耐久 - 控制","远程","image/heros/necrolyte_sb.png","image/heros/necrolyte_hphover.png");
INSERT INTO dota2_hero VALUES("null","warlock","术士","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","辅助 - 先手 - 控制","远程","image/heros/warlock_sb.png","image/heros/warlock_hphover.png");
INSERT INTO dota2_hero VALUES("null","queenofpain","痛苦女王","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 爆发 - 逃生","远程","image/heros/queenofpain_sb.png","image/heros/queenofpain_hphover.png");
INSERT INTO dota2_hero VALUES("null","death_prophet","死亡先知","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 推进 - 爆发 - 控制","远程","image/heros/death_prophet_sb.png","image/heros/death_prophet_hphover.png");
INSERT INTO dota2_hero VALUES("null","pugna","帕格纳","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","爆发 - 推进","远程","image/heros/pugna_sb.png","image/heros/pugna_hphover.png");
INSERT INTO dota2_hero VALUES("null","dazzle","戴泽","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","辅助 - 爆发 - 控制","远程","image/heros/dazzle_sb.png","image/heros/dazzle_hphover.png");
INSERT INTO dota2_hero VALUES("null","leshrac","拉席克","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 辅助 - 爆发 - 推进 - 控制","远程","image/heros/leshrac_sb.png","image/heros/leshrac_hphover.png");
INSERT INTO dota2_hero VALUES("null","dark_seer","黑暗贤者","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","先手 - 打野 - 逃生 - 控制","近战","image/heros/dark_seer_sb.png","image/heros/dark_seer_hphover.png");
INSERT INTO dota2_hero VALUES("null","batrider","蝙蝠骑士","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","先手 - 打野 - 控制 - 逃生","远程","image/heros/batrider_sb.png","image/heros/batrider_hphover.png");
INSERT INTO dota2_hero VALUES("null","ancient_apparition","远古冰魄","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","辅助 - 控制 - 爆发","远程","image/heros/ancient_apparition_sb.png","image/heros/ancient_apparition_hphover.png");
INSERT INTO dota2_hero VALUES("null","invoker","祈求者","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 爆发 - 控制 - 逃生 - 推进","远程","image/heros/invoker_sb.png","image/heros/invoker_hphover.png");
INSERT INTO dota2_hero VALUES("null","obsidian_destroyer","殁境神蚀者","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","核心 - 爆发 - 控制","远程","image/heros/obsidian_destroyer_sb.png","image/heros/obsidian_destroyer_hphover.png");
INSERT INTO dota2_hero VALUES("null","shadow_demon","暗影恶魔","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","辅助 - 控制 - 先手 - 爆发","远程","image/heros/shadow_demon_sb.png","image/heros/shadow_demon_hphover.png");
INSERT INTO dota2_hero VALUES("null","visage","维萨吉","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","辅助 - 爆发 - 耐久 - 控制 - 推进","远程","image/heros/visage_sb.png","image/heros/visage_hphover.png");
INSERT INTO dota2_hero VALUES("null","winter_wyvern","寒冬飞龙","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","辅助 - 控制 - 爆发","远程","image/heros/winter_wyvern_sb.png","image/heros/winter_wyvern_hphover.png");
INSERT INTO dota2_hero VALUES("null","grimstroke","天涯墨客","智力","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12,18],[10,15,20,25]}","辅助 - 爆发 - 控制 - 逃生","远程","image/heros/grimstroke_sb.png","image/heros/grimstroke_hphover.png");
