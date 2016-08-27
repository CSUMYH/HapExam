-- Create table
CREATE TABLE SYS_RESOURCE_ITEM_B
(
  resource_item_id      NUMBER               NOT NULL,
  owner_resource_id     NUMBER               NOT NULL,
  target_resource_id    NUMBER,
  item_id               VARCHAR2(50)         NOT NULL,
  item_name             VARCHAR2(50),
  description           VARCHAR2(240),
  item_type             VARCHAR2(10),
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
COMMENT ON TABLE SYS_RESOURCE_ITEM_B IS '功能控件表';
-- Add comments to the columns
COMMENT ON COLUMN SYS_RESOURCE_ITEM_B.resource_item_id IS '表ID，主键，供其他表做外键';
COMMENT ON COLUMN SYS_RESOURCE_ITEM_B.owner_resource_id IS '功能资源ID';
COMMENT ON COLUMN SYS_RESOURCE_ITEM_B.target_resource_id IS '目标资源ID';
COMMENT ON COLUMN SYS_RESOURCE_ITEM_B.item_id IS 'HTML中控件ID';
COMMENT ON COLUMN SYS_RESOURCE_ITEM_B.item_name IS '控件名称';
COMMENT ON COLUMN SYS_RESOURCE_ITEM_B.description IS '描述';
COMMENT ON COLUMN SYS_RESOURCE_ITEM_B.item_type IS '控件类型';
COMMENT ON COLUMN SYS_RESOURCE_ITEM_B.object_version_number IS '行版本号，用来处理锁';
COMMENT ON COLUMN SYS_RESOURCE_ITEM_B.request_id IS '对Record最后一次操作的系统内部请求id';
COMMENT ON COLUMN SYS_RESOURCE_ITEM_B.program_id IS '对Record最后一次操作的系统内部程序id';
-- Create/Recreate indexes
CREATE INDEX SYS_RESOURCE_ITEM_B_N1 ON SYS_RESOURCE_ITEM_B (OWNER_RESOURCE_ID);
CREATE UNIQUE INDEX SYS_RESOURCE_ITEM_B_U1 ON SYS_RESOURCE_ITEM_B (ITEM_ID, OWNER_RESOURCE_ID);
-- Create/Recreate primary, unique and foreign key constraints
ALTER TABLE SYS_RESOURCE_ITEM_B
  ADD CONSTRAINT SYS_RESOURCE_ITEM_B_PK PRIMARY KEY (RESOURCE_ITEM_ID);

-- Create sequence
CREATE SEQUENCE SYS_RESOURCE_ITEM_B_S START WITH 10001;

-- Create TL table
CREATE TABLE SYS_RESOURCE_ITEM_TL
(
  resource_item_id      NUMBER               NOT NULL,
  lang                  VARCHAR2(10)         NOT NULL,
  item_name             VARCHAR2(150),
  description           VARCHAR2(240),
  object_version_number NUMBER DEFAULT 1     NOT NULL,
  request_id            NUMBER DEFAULT -1,
  program_id            NUMBER DEFAULT -1,
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
COMMENT ON TABLE SYS_RESOURCE_ITEM_TL IS '功能控件表(多语言)';
-- Add comments to the columns
COMMENT ON COLUMN SYS_RESOURCE_ITEM_TL.resource_item_id IS '表ID，主键，供其他表做外键';
COMMENT ON COLUMN SYS_RESOURCE_ITEM_TL.lang IS '语言';
COMMENT ON COLUMN SYS_RESOURCE_ITEM_TL.item_name IS '控件名称';
COMMENT ON COLUMN SYS_RESOURCE_ITEM_TL.description IS '描述';
-- Create/Recreate primary, unique and foreign key constraints
ALTER TABLE SYS_RESOURCE_ITEM_TL
  ADD CONSTRAINT SYS_RESOURCE_ITEM_TL_PK PRIMARY KEY (RESOURCE_ITEM_ID, LANG);
