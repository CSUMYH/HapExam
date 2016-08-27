-- Create table
CREATE TABLE SYS_MESSAGE_TEMPLATE
(
  template_id           NUMBER(20),
  subject               CLOB,
  content               CLOB,
  account_id            NUMBER(20),
  template_code         NVARCHAR2(50),
  template_type         NVARCHAR2(50),
  priority_level        NVARCHAR2(50),
  description           NVARCHAR2(240),
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

ALTER TABLE SYS_MESSAGE_TEMPLATE
  ADD CONSTRAINT
  SYS_MESSAGE_TEMPLATE_PK PRIMARY KEY (template_id);

CREATE UNIQUE INDEX SYS_MESSAGE_TEMPLATE_U1 ON SYS_MESSAGE_TEMPLATE (template_code);

-- Add comments to the columns
COMMENT ON COLUMN sys_message_template.template_id
IS '主键';
COMMENT ON COLUMN sys_message_template.subject
IS '模板标题';
COMMENT ON COLUMN sys_message_template.content
IS '模板内容';
COMMENT ON COLUMN sys_message_template.account_id
IS '账号id';

CREATE SEQUENCE SYS_MESSAGE_TEMPLATE_S START WITH 10001;

