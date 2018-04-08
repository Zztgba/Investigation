-- auto Generated on 2017-11-22 08:19:45 
-- DROP TABLE IF EXISTS `question`; 
CREATE TABLE `question`(
    `qid` BIGINT (15) NOT NULL AUTO_INCREMENT COMMENT 'qid',
    `question` VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'question',
    PRIMARY KEY (`qid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '`question`';
