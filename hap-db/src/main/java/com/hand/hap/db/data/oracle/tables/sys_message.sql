-- Create table
CREATE TABLE SYS_MESSAGE
(
  message_id            NUMBER(20)              NOT NULL,
  message_type          VARCHAR2(10)            NOT NULL,
  message_host          VARCHAR2(255),
  message_from          VARCHAR2(255),
  subject               VARCHAR2(255),
  content               CLOB                    NOT NULL,
  priority_level        VARCHAR2(25),
  send_flag             VARCHAR2(1) DEFAULT 'N' NOT NULL,
  message_source        VARCHAR2(255),
  object_version_number NUMBER(20) DEFAULT 1    NOT NULL,
  request_id            NUMBER(20) DEFAULT -1   NOT NULL,
  program_id            NUMBER(20) DEFAULT -1   NOT NULL,
  created_by            NUMBER(20) DEFAULT -1   NOT NULL,
  creation_date         DATE DEFAULT sysdate    NOT NULL,
  last_updated_by       NUMBER(20) DEFAULT -1   NOT NULL,
  last_update_date      DATE DEFAULT sysdate    NOT NULL,
  attribute1            VARCHAR2(255),
  attribute2            VARCHAR2(255),
  attribute3            VARCHAR2(255),
  attribute4            VARCHAR2(255),
  attribute5            VARCHAR2(255),
  attribute6            VARCHAR2(255),
  attribute7            VARCHAR2(255),
  attribute8            VARCHAR2(255),
  attribute9            VARCHAR2(255),
  attribute10           VARCHAR2(255),
  attribute11           VARCHAR2(255),
  attribute12           VARCHAR2(255),
  attribute13           VARCHAR2(255),
  attribute14           VARCHAR2(255),
  attribute15           VARCHAR2(255)
);
-- Add comments to the table
COMMENT ON TABLE SYS_MESSAGE IS '消息表';
-- Add comments to the columns
COMMENT ON COLUMN SYS_MESSAGE.message_id IS '主键';
COMMENT ON COLUMN SYS_MESSAGE.message_type IS '信息类型,email/sms';
COMMENT ON COLUMN SYS_MESSAGE.message_host IS '消息服务器';
COMMENT ON COLUMN SYS_MESSAGE.message_from IS '消息发出人';
COMMENT ON COLUMN SYS_MESSAGE.subject IS '标题';
COMMENT ON COLUMN SYS_MESSAGE.content IS '内容';
COMMENT ON COLUMN SYS_MESSAGE.priority_level IS '优先级';
COMMENT ON COLUMN SYS_MESSAGE.send_flag IS '发送标记';
COMMENT ON COLUMN SYS_MESSAGE.message_source IS '消息来源';
-- Create/Recreate indexes
CREATE INDEX SYS_MESSAGE_N1 ON SYS_MESSAGE (MESSAGE_TYPE);
;
-- Create/Recreate primary, unique and foreign key constraints
ALTER TABLE SYS_MESSAGE
  ADD CONSTRAINT SYS_MESSAGE_PK PRIMARY KEY (MESSAGE_ID);

CREATE SEQUENCE SYS_MESSAGE_S START WITH 10001;
