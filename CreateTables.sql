CREATE TABLE `user` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID',
	`email` VARCHAR(50) NOT NULL DEFAULT '0' COMMENT '用户邮箱',
	`password` VARCHAR(50) NOT NULL DEFAULT '0' COMMENT '用户密码',
	`name` VARCHAR(50) NOT NULL DEFAULT '0' COMMENT '用户姓名',
	PRIMARY KEY (`id`)
)
COMMENT='用户表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;


CREATE TABLE `class` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '班级ID',
	`name` VARCHAR(50) NOT NULL DEFAULT '0' COMMENT '班级名称',
	`schoolid` INT UNSIGNED NULL DEFAULT '0' COMMENT '所属学校ID',
	PRIMARY KEY (`id`)
)
COMMENT='班级表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `join` (
	`userid` INT UNSIGNED NOT NULL COMMENT '用户ID',
	`classid` INT UNSIGNED NOT NULL COMMENT '班级ID',
	`jointime` DATE NULL COMMENT '加入时间',
	`state` INT NOT NULL COMMENT '权限',
	`usertype` INT NOT NULL COMMENT '用户类型',
	CONSTRAINT `FK__user` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
	CONSTRAINT `FK__class` FOREIGN KEY (`classid`) REFERENCES `class` (`id`)
)
COMMENT='用户-班级表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;



CREATE TABLE `userdata` (
	`userid` INT UNSIGNED NOT NULL COMMENT '用户ID',
	`sex` INT NULL COMMENT '用户性别',
	`imageurl` VARCHAR(50) NULL COMMENT '用户头像',
	`phone` VARCHAR(50) NULL COMMENT '用户电话',
	`address` VARCHAR(200) NULL COMMENT '用户地址',
	PRIMARY KEY (`userid`),
	CONSTRAINT `FK__user2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
)
COMMENT='用户信息表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;


CREATE TABLE `inform` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '通知ID',
	`title` VARCHAR(100) NULL COMMENT '通知标题',
	`content` TEXT NULL COMMENT '通知内容',
	`authorid` INT UNSIGNED NULL COMMENT '作者ID',
	`datetime` DATE NULL COMMENT '发布时间',
	`endtime` DATE NULL COMMENT '结束时间',
	`type` INT NULL DEFAULT '0' COMMENT '通知类型',
	`level` INT NULL DEFAULT '0' COMMENT '通知等级',
	PRIMARY KEY (`id`),
	CONSTRAINT `FK__user3` FOREIGN KEY (`authorid`) REFERENCES `user` (`id`)
)
COMMENT='通知表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;


CREATE TABLE `informview` (
	`informid` INT(10) UNSIGNED NULL DEFAULT NULL COMMENT '通知ID',
	`classid` INT(10) UNSIGNED NULL DEFAULT NULL COMMENT '班级ID',
	`state` INT(10) UNSIGNED NULL DEFAULT NULL COMMENT '状态',
	INDEX `FK__inform` (`informid`),
	INDEX `FK__class2` (`classid`),
	CONSTRAINT `FK__class2` FOREIGN KEY (`classid`) REFERENCES `class` (`id`),
	CONSTRAINT `FK__inform` FOREIGN KEY (`informid`) REFERENCES `inform` (`id`)
)
COMMENT='通知可见表'
ENGINE=InnoDB
;


CREATE TABLE `read` (
	`informid` INT(10) UNSIGNED NULL DEFAULT NULL COMMENT '通知ID',
	`userid` INT(10) UNSIGNED NULL DEFAULT NULL COMMENT '用户ID',
	`state` INT(10) UNSIGNED NULL DEFAULT '0' COMMENT '状态',
	`datetime` DATE NULL DEFAULT NULL COMMENT '修改状态时间',
	INDEX `FK__inform2` (`informid`),
	INDEX `FK__user4` (`userid`),
	CONSTRAINT `FK__inform2` FOREIGN KEY (`informid`) REFERENCES `inform` (`id`),
	CONSTRAINT `FK__user4` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
)
COMMENT='已读表'
ENGINE=InnoDB
;


CREATE TABLE `message` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '留言ID',
	`informid` INT(10) UNSIGNED NULL DEFAULT NULL COMMENT '通知ID',
	`userid` INT(10) UNSIGNED NULL DEFAULT NULL COMMENT '用户ID',
	`content` TEXT NULL COMMENT '留言内容',
	`datetime` DATE NULL DEFAULT NULL COMMENT '留言时间',
	PRIMARY KEY (`id`),
	INDEX `FK__inform3` (`informid`),
	INDEX `FK__user5` (`userid`),
	CONSTRAINT `FK__inform3` FOREIGN KEY (`informid`) REFERENCES `inform` (`id`),
	CONSTRAINT `FK__user5` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
)
COMMENT='留言表'
ENGINE=InnoDB
;

CREATE TABLE `school` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '学校ID',
	`name` VARCHAR(50) NULL DEFAULT NULL COMMENT '学校名称',
	PRIMARY KEY (`id`)
)
COMMENT='学校表'
ENGINE=InnoDB
;





