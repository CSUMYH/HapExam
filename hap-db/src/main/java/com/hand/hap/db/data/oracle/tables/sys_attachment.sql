-- Create table
CREATE TABLE sys_attachment
(
  attachment_id         NUMBER(20) NOT NULL,
  category_id           NUMBER(20),
  name                  NVARCHAR2(40),
  source_type           NVARCHAR2(30),
  source_key            NVARCHAR2(30),
  status                NVARCHAR2(1),
  start_active_date     DATE,
  end_active_date       DATE,
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
-- Add comments to the columns
COMMENT ON COLUMN sys_attachment.attachment_id
IS '表ID，主键，供其他表做外键';
COMMENT ON COLUMN sys_attachment.category_id
IS '分类ID';
COMMENT ON COLUMN sys_attachment.start_active_date
IS '开始生效日期';
COMMENT ON COLUMN sys_attachment.end_active_date
IS '失效时间';
COMMENT ON COLUMN sys_attachment.object_version_number
IS '行版本号，用来处理锁';
COMMENT ON COLUMN sys_attachment.request_id
IS '对Record最后一次操作的系统内部请求id';
COMMENT ON COLUMN sys_attachment.program_id
IS '对Record最后一次操作的系统内部程序id';
-- Create/Recreate indexes
CREATE INDEX SYS_ATTACHMENT_N1 ON sys_attachment (CATEGORY_ID);
CREATE INDEX SYS_ATTACHMENT_N2 ON sys_attachment (SOURCE_TYPE, SOURCE_KEY);
-- Create/Recreate primary, unique and foreign key constraints
ALTER TABLE sys_attachment
  ADD PRIMARY KEY (ATTACHMENT_ID);


CREATE SEQUENCE sys_attachment_s START WITH 10001;

