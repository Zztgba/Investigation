-- auto Generated on 2017-11-22 08:20:18 
-- DROP TABLE IF EXISTS `visitor`; 
CREATE TABLE `visitor`(
    `vid` BIGINT (15) NOT NULL AUTO_INCREMENT COMMENT 'vid',
    `paperid` BIGINT (15) NOT NULL DEFAULT -1 COMMENT 'paperid',
    PRIMARY KEY (`vid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '`visitor`';
