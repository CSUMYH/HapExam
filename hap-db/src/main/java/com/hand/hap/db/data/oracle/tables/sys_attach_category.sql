-- Create table
CREATE TABLE sys_attach_category_b
(
  category_id           NUMBER(20) NOT NULL,
  category_name         NVARCHAR2(40),
  leaf_flag             NVARCHAR2(1),
  description           NVARCHAR2(240),
  status                NVARCHAR2(1),
  parent_category_id    NUMBER(20),
  path                  VARCHAR2(200 CHAR),
  source_type           NVARCHAR2(30),
  allowed_file_type     NVARCHAR2(30),
  allowed_file_size     NUMBER,
  category_path         NVARCHAR2(255),
  is_unique             NVARCHAR2(1),
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
COMMENT ON COLUMN sys_attach_category_b.path
IS '层级路径';
-- Create/Recreate primary, unique and foreign key constraints
ALTER TABLE sys_attach_category_b
  ADD PRIMARY KEY (CATEGORY_ID);


CREATE SEQUENCE SYS_ATTACH_CATEGORY_B_S START WITH 10001;

-- Create table
CREATE TABLE sys_attach_category_tl
(
  category_id           NUMBER(20)    NOT NULL,
  category_name         NVARCHAR2(40),
  description           NVARCHAR2(240),
  lang                  NVARCHAR2(10) NOT NULL,
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
COMMENT ON COLUMN sys_attach_category_tl.category_id
IS '表ID，主键，供其他表做外键';
COMMENT ON COLUMN sys_attach_category_tl.object_version_number
IS '行版本号，用来处理锁';
COMMENT ON COLUMN sys_attach_category_tl.request_id
IS '对Record最后一次操作的系统内部请求id';
COMMENT ON COLUMN sys_attach_category_tl.program_id
IS '对Record最后一次操作的系统内部程序id';
-- Create/Recreate primary, unique and foreign key constraints
ALTER TABLE sys_attach_category_tl
  ADD PRIMARY KEY (CATEGORY_ID, LANG);


