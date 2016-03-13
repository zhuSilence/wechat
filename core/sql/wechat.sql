/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/3/12 17:02:31                           */
/*==============================================================*/


DROP TABLE IF EXISTS address;

DROP TABLE IF EXISTS goods;

DROP TABLE IF EXISTS goods_details;

DROP TABLE IF EXISTS order_details;

DROP TABLE IF EXISTS order_table;

DROP TABLE IF EXISTS series;

DROP TABLE IF EXISTS USER;

/*==============================================================*/
/* Table: address                                               */
/*==============================================================*/
CREATE TABLE address
(
   address_id           INT NOT NULL AUTO_INCREMENT,
   province             VARCHAR(20),
   city                 VARCHAR(20),
   AREA                 varch`user``series``order_table``goods_details``address``user`ar(20),
   address              VARCHAR(200),
   NAME                 VARCHAR(20),
   phone                VARCHAR(20),
   post                 CHAR(6),
   default_add          INT,
   PRIMARY KEY (address_id)
);

/*==============================================================*/
/* Table: goods                                                 */
/*==============================================================*/
CREATE TABLE goods
(
   goods_id             INT NOT NULL AUTO_INCREMENT COMMENT '商品的id主键',
   goods_name           VARCHAR(20),
   goods_type           INT,
   goods_price          FLOAT(10),
   goods_desc           VARCHAR(200),
   goods_color          VARCHAR(20),
   goods_size           VARCHAR(10),
   goods_pictures       INT,
   PRIMARY KEY (goods_id)
);

/*==============================================================*/
/* Table: goods_details                                         */
/*==============================================================*/
CREATE TABLE goods_details
(
   goods_details_id     INT NOT NULL AUTO_INCREMENT,
   goods_id             INT,
   big_url              VARCHAR(200),
   mil_url              VARCHAR(200),
   small_url            VARCHAR(200),
   PRIMARY KEY (goods_details_id)
);

/*==============================================================*/
/* Table: order_details                                         */
/*==============================================================*/
CREATE TABLE order_details
(
   order_details_id     INT NOT NULL AUTO_INCREMENT,
   goods_id             INT COMMENT '外键，商品的id，获取商品的数据',
   buy_numbers          INT COMMENT '统一商品购买的总数量',
   buy_price            FLOAT(10) COMMENT '同一商品购买花费',
   order_id             INT,
   PRIMARY KEY (order_details_id)
);

/*==============================================================*/
/* Table: order_table                                           */
/*==============================================================*/
CREATE TABLE order_table
(
   order_id             INT NOT NULL AUTO_INCREMENT,
   order_number         CHAR(15) COMMENT '随时间自动生成的订单流水号',
   address_id           INT COMMENT '外键，常用收货地址的id',
   order_statue         INT COMMENT '0 待付款
            1 待收货
            2  待发货
            3 已完成',
   order_details        INT COMMENT '订单详情列表',
   order_money          FLOAT(10) COMMENT '订单总费用',
   freight              FLOAT(10),
   remark               VARCHAR(200),
   PRIMARY KEY (order_id)
);

/*==============================================================*/
/* Table: series                                                */
/*==============================================================*/
CREATE TABLE series
(
   goods_type           INT NOT NULL AUTO_INCREMENT,
   NAME                 VARCHAR(20),
   PRIMARY KEY (goods_type)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
CREATE TABLE USER
(
   user_id              INT NOT NULL AUTO_INCREMENT,
   username             VARCHAR(20),
   salt                 CHAR(20),
   phone                VARCHAR(20),
   email                VARCHAR(30),
   PRIMARY KEY (user_id)
);

ALTER TABLE goods ADD CONSTRAINT FK_Reference_5 FOREIGN KEY (goods_type)
      REFERENCES series (goods_type) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE goods_details ADD CONSTRAINT FK_Reference_2 FOREIGN KEY (goods_id)
      REFERENCES goods (goods_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE order_details ADD CONSTRAINT FK_Reference_3 FOREIGN KEY (goods_id)
      REFERENCES goods (goods_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE order_details ADD CONSTRAINT FK_Reference_4 FOREIGN KEY (order_id)
      REFERENCES order_table (order_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE order_table ADD CONSTRAINT FK_Reference_1 FOREIGN KEY (address_id)
      REFERENCES address (address_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

