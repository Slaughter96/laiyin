create database `laiyin`;

use laiyin;

drop table if exists `product` ;
CREATE TABLE `product` (
	`id` varchar(50) NOT NULL,
    `img` varchar(50) ,
    `update` timestamp default CURRENT_TIMESTAMP,
    `type` varchar(50),
    PRIMARY KEY(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品管理';
 
 
use laiyin;
insert into `product` (`id`,`img`,`type`) VALUES ('SCM3501','img/img2.jpg','qiegeji');
insert into `product` (`id`,`img`,`type`) VALUES ('SCM3504','img/img2.jpg','qiegeji');
insert into `product` (`id`,`img`,`type`) VALUES ('SCM3505','img/img2.jpg','qiegeji');
select * from product;


GRANT ALL PRIVILEGES ON laiyin.product TO ‘root’@’localhost’ IDENTIFIED BY 'liangbin' WITH GRANT OPTION;
show variables where Variable_name="port";

grant all on laiyin.* to ‘root’@'%';


