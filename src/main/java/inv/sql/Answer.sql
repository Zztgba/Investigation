-- auto Generated on 2017-11-22 08:12:19 
-- DROP TABLE IF EXISTS `answer`; 
CREATE TABLE `answer`(
    `aid` BIGINT (15) NOT NULL AUTO_INCREMENT COMMENT 'aid',
    `select` VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'select',
    `answernum` BIGINT (15) NOT NULL DEFAULT -1 COMMENT 'answernum',
    PRIMARY KEY (`aid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '`answer`';
