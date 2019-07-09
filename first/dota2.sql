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
)
CREATE TABLE dota2_hero(
	hid bigint PRIMARY key AUTO_INCREMENT,
	hename varchar(20),
	hcname varchar(20),
	skill varchar(20),
	roles varchar(20),
	astyle varchar(20),
	spic varchar(100),
	bpc varchar(100)
)
INSERT INTO dota2_hero VALUES("null","earthshaker","撼地者","{[1,3,5,7],[2],[4,8,9,11,13,14],[6,12],[10,15,20,25]}","['辅助','先手','控制','高爆发']","近战","/image/heros/earthshaker_sb.png","/image/heros/earthshaker_hphover.png")