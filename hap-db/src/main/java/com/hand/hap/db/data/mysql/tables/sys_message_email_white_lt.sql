DROP TABLE IF EXISTS SYS_MESSAGE_EMAIL_WHITE_LT;
CREATE TABLE `SYS_MESSAGE_EMAIL_WHITE_LT` (
  `ID`                    BIGINT         AUTO_INCREMENT
  COMMENT '主键',
  `ADDRESS`               VARCHAR(240) COMMENT '白名单地址',
  `CONFIG_ID`             BIGINT COMMENT '邮箱配置id',
  `DESCRIPTION`           VARCHAR(240) COMMENT '描述',
  `OBJECT_VERSION_NUMBER` DECIMAL(20, 0) DEFAULT 1
  COMMENT 'Record的版本号，每发生update则自增',
  `REQUEST_ID`            BIGINT         DEFAULT -1
  COMMENT '对Record最后一次操作的系统内部请求id',
  `PROGRAM_ID`            BIGINT         DEFAULT -1
  COMMENT '对Record最后一次操作的系统内部程序id',
  `CREATION_DATE`         DATETIME       DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY`            DECIMAL(20, 0) DEFAULT -1,
  `LAST_UPDATED_BY`       DECIMAL(20, 0) DEFAULT -1,
  `LAST_UPDATE_DATE`      DATETIME       DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATE_LOGIN`     DECIMAL(20, 0),
  `ATTRIBUTE_CATEGORY`    VARCHAR(30),
  `ATTRIBUTE1`            VARCHAR(240),
  `ATTRIBUTE2`            VARCHAR(240),
  `ATTRIBUTE3`            VARCHAR(240),
  `ATTRIBUTE4`            VARCHAR(240),
  `ATTRIBUTE5`            VARCHAR(240),
  `ATTRIBUTE6`            VARCHAR(240),
  `ATTRIBUTE7`            VARCHAR(240),
  `ATTRIBUTE8`            VARCHAR(240),
  `ATTRIBUTE9`            VARCHAR(240),
  `ATTRIBUTE10`           VARCHAR(240),
  `ATTRIBUTE11`           VARCHAR(240),
  `ATTRIBUTE12`           VARCHAR(240),
  `ATTRIBUTE13`           VARCHAR(240),
  `ATTRIBUTE14`           VARCHAR(240),
  `ATTRIBUTE15`           VARCHAR(240),
  PRIMARY KEY (`ID`)
)
  COMMENT = '邮件账号表';
ALTER TABLE `SYS_MESSAGE_EMAIL_WHITE_LT`
  CHANGE `DESCRIPTION` `DESCRIPTION` VARCHAR(240) BINARY;
ALTER TABLE `SYS_MESSAGE_EMAIL_WHITE_LT`
  CHANGE `ADDRESS` `ADDRESS` VARCHAR(240) BINARY;


