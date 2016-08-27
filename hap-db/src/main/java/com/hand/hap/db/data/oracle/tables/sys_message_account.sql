-- Create table
CREATE TABLE SYS_MESSAGE_ACCOUNT
(
  account_id            NUMBER(20)           NOT NULL,
  account_type          VARCHAR2(50)         NOT NULL,
  account_code          VARCHAR2(50)         NOT NULL,
  user_name             VARCHAR2(240)        NOT NULL,
  password              VARCHAR2(240)        NOT NULL,
  description           VARCHAR2(240),
  object_version_number NUMBER DEFAULT 1     NOT NULL,
  request_id            NUMBER DEFAULT -1    NOT NULL,
  program_id            NUMBER DEFAULT -1    NOT NULL,
  creation_date         DATE DEFAULT sysdate NOT NULL,
  created_by            NUMBER DEFAULT -1    NOT NULL,
  last_updated_by       NUMBER DEFAULT -1    NOT NULL,
  last_update_date      DATE DEFAULT sysdate NOT NULL,
  last_update_login     NUMBER,
  attribute_category    VARCHAR2(30),
  attribute1            VARCHAR2(240),
  attribute2            VARCHAR2(240),
  attribute3            VARCHAR2(240),
  attribute4            VARCHAR2(240),
  attribute5            VARCHAR2(240),
  attribute6            VARCHAR2(240),
  attribute7            VARCHAR2(240),
  attribute8            VARCHAR2(240),
  attribute9            VARCHAR2(240),
  attribute10           VARCHAR2(240),
  attribute11           VARCHAR2(240),
  attribute12           VARCHAR2(240),
  attribute13           VARCHAR2(240),
  attribute14           VARCHAR2(240),
  attribute15           VARCHAR2(240)
);
-- Add comments to the table
COMMENT ON TABLE SYS_MESSAGE_ACCOUNT IS '邮件账号表';
-- Add comments to the columns
COMMENT ON COLUMN SYS_MESSAGE_ACCOUNT.account_id IS '主键';
COMMENT ON COLUMN SYS_MESSAGE_ACCOUNT.account_type IS '账号类型';
COMMENT ON COLUMN SYS_MESSAGE_ACCOUNT.account_code IS '编号';
COMMENT ON COLUMN SYS_MESSAGE_ACCOUNT.user_name IS '用户名';
COMMENT ON COLUMN SYS_MESSAGE_ACCOUNT.password IS '密码';
COMMENT ON COLUMN SYS_MESSAGE_ACCOUNT.description IS '描述';
-- Create/Recreate primary, unique and foreign key constraints
ALTER TABLE SYS_MESSAGE_ACCOUNT
  ADD CONSTRAINT SYS_MESSAGE_ACCOUNT_PK PRIMARY KEY (ACCOUNT_ID);

CREATE SEQUENCE SYS_MESSAGE_ACCOUNT_S START WITH 10001;
