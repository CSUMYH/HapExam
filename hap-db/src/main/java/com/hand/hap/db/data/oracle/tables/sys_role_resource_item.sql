-- Create table
CREATE TABLE SYS_ROLE_RESOURCE_ITEM
(
  rsi_id                NUMBER(20)           NOT NULL,
  role_id               NUMBER               NOT NULL,
  resource_item_id      NUMBER               NOT NULL,
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
COMMENT ON TABLE SYS_ROLE_RESOURCE_ITEM IS '角色功能控件表，用于对控件控制';
-- Add comments to the columns
COMMENT ON COLUMN SYS_ROLE_RESOURCE_ITEM.rsi_id IS '表ID，主键，供其他表做外键';
COMMENT ON COLUMN SYS_ROLE_RESOURCE_ITEM.role_id IS '角色ID';
COMMENT ON COLUMN SYS_ROLE_RESOURCE_ITEM.resource_item_id IS '功能控件ID';
-- Create/Recreate indexes
CREATE INDEX SYS_ROLE_RESOURCE_ITEM_N1 ON SYS_ROLE_RESOURCE_ITEM (ROLE_ID);
CREATE UNIQUE INDEX SYS_ROLE_RESOURCE_ITEM_U1 ON SYS_ROLE_RESOURCE_ITEM (ROLE_ID, RESOURCE_ITEM_ID);
-- Create/Recreate primary, unique and foreign key constraints
ALTER TABLE SYS_ROLE_RESOURCE_ITEM
  ADD CONSTRAINT SYS_ROLE_RESOURCE_ITEM_PK PRIMARY KEY (RSI_ID);

-- Create sequence
CREATE SEQUENCE SYS_ROLE_RESOURCE_ITEM_S START WITH 10001;
