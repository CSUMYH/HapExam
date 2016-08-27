-- Create table
CREATE TABLE SYS_MESSAGE_EMAIL_CONFIG
(
  config_id             NUMBER(20),
  config_code           NVARCHAR2(50),
  host                  NVARCHAR2(50),
  port                  NVARCHAR2(10),
  try_times             NUMBER,
  description           NVARCHAR2(240),
  use_white_list        NVARCHAR2(1),
  user_name             NVARCHAR2(240),
  password              NVARCHAR2(240),
  enable                NVARCHAR2(1),
  object_version_number NUMBER,
  request_id            NUMBER(20),
  program_id            NUMBER(20),
  creation_date         DATE,
  created_by            NUMBER,
  last_updated_by       NUMBER,
  last_update_date      DATE,
  last_update_login     NUMBER,
  attribute_category    VARCHAR2(30 CHAR),
  attribute1            VARCHAR2(240 CHAR),
  attribute2            VARCHAR2(240 CHAR),
  attribute3            VARCHAR2(240 CHAR),
  attribute4            VARCHAR2(240 CHAR),
  attribute5            VARCHAR2(240 CHAR),
  attribute6            VARCHAR2(240 CHAR),
  attribute7            VARCHAR2(240 CHAR),
  attribute8            VARCHAR2(240 CHAR),
  attribute9            VARCHAR2(240 CHAR),
  attribute10           VARCHAR2(240 CHAR),
  attribute11           VARCHAR2(240 CHAR),
  attribute12           VARCHAR2(240 CHAR),
  attribute13           VARCHAR2(240 CHAR),
  attribute14           VARCHAR2(240 CHAR),
  attribute15           VARCHAR2(240 CHAR)
);

ALTER TABLE SYS_MESSAGE_EMAIL_CONFIG
  ADD CONSTRAINT
  SYS_MESSAGE_EMAIL_CONFIG_PK PRIMARY KEY (config_id);

CREATE UNIQUE INDEX SYS_MESSAGE_EMAIL_CONFIG_U1 ON SYS_MESSAGE_EMAIL_CONFIG (CONFIG_CODE);

-- Add comments to the columns
COMMENT ON COLUMN sys_message_email_config.config_id
IS '主键';
COMMENT ON COLUMN sys_message_email_config.try_times
IS '重试次数';
COMMENT ON COLUMN sys_message_email_config.object_version_number
IS 'Record的版本号，每发生update则自增';
COMMENT ON COLUMN sys_message_email_config.request_id
IS '对Record最后一次操作的系统内部请求id';
COMMENT ON COLUMN sys_message_email_config.program_id
IS '对Record最后一次操作的系统内部程序id';

CREATE SEQUENCE SYS_MESSAGE_EMAIL_CONFIG_S START WITH 10001;

