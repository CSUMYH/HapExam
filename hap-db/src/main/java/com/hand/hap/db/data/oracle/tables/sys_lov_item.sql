CREATE TABLE SYS_LOV_ITEM
(
  LOV_ITEM_ID                 NUMBER                  NOT NULL,
  LOV_ID                      NUMBER                  NOT NULL,
  DISPLAY                     VARCHAR2(255)           NOT NULL,
  IS_AUTOCOMPLETE             VARCHAR2(1) DEFAULT 'N' NOT NULL,
  CONDITION_FIELD             VARCHAR2(1) DEFAULT 'N' NOT NULL,
  CONDITION_FIELD_WIDTH       NUMBER,
  CONDITION_FIELD_TYPE        VARCHAR2(30),
  CONDITION_FIELD_NAME        VARCHAR2(80),
  CONDITION_FIELD_NEWLINE     VARCHAR2(1),
  CONDITION_FIELD_SELECT_CODE VARCHAR2(80),
  CONDITION_FIELD_LOV_CODE    VARCHAR2(80),
  CONDITION_FIELD_SEQUENCE    NUMBER,
  condition_field_select_url  VARCHAR2(255),
  condition_field_select_vf   VARCHAR2(80),
  condition_field_select_tf   VARCHAR2(80),
  condition_field_textfield   VARCHAR2(80),
  autocomplete_field          VARCHAR2(1) DEFAULT 'Y' NOT NULL,
  GRID_FIELD                  VARCHAR2(1) DEFAULT 'Y' NOT NULL,
  GRID_FIELD_NAME             VARCHAR2(80),
  GRID_FIELD_SEQUENCE         NUMBER DEFAULT 1        NOT NULL,
  GRID_FIELD_WIDTH            NUMBER,
  grid_field_align            VARCHAR2(10) DEFAULT 'center',
  OBJECT_VERSION_NUMBER       NUMBER DEFAULT 1        NOT NULL,
  REQUEST_ID                  NUMBER       DEFAULT -1,
  PROGRAM_ID                  NUMBER       DEFAULT -1,
  CREATION_DATE               DATE DEFAULT sysdate    NOT NULL,
  CREATED_BY                  NUMBER DEFAULT -1       NOT NULL,
  LAST_UPDATED_BY             NUMBER DEFAULT -1       NOT NULL,
  LAST_UPDATE_DATE            DATE DEFAULT sysdate    NOT NULL,
  LAST_UPDATE_LOGIN           NUMBER,
  ATTRIBUTE_CATEGORY          VARCHAR2(30),
  ATTRIBUTE1                  VARCHAR2(240),
  ATTRIBUTE2                  VARCHAR2(240),
  ATTRIBUTE3                  VARCHAR2(240),
  ATTRIBUTE4                  VARCHAR2(240),
  ATTRIBUTE5                  VARCHAR2(240),
  ATTRIBUTE6                  VARCHAR2(240),
  ATTRIBUTE7                  VARCHAR2(240),
  ATTRIBUTE8                  VARCHAR2(240),
  ATTRIBUTE9                  VARCHAR2(240),
  ATTRIBUTE10                 VARCHAR2(240),
  ATTRIBUTE11                 VARCHAR2(240),
  ATTRIBUTE12                 VARCHAR2(240),
  ATTRIBUTE13                 VARCHAR2(240),
  ATTRIBUTE14                 VARCHAR2(240),
  ATTRIBUTE15                 VARCHAR2(240)
);
COMMENT ON COLUMN SYS_LOV_ITEM.lov_item_id IS '表ID，主键，供其他表做外键';
COMMENT ON COLUMN SYS_LOV_ITEM.lov_id IS '头表ID';
COMMENT ON COLUMN SYS_LOV_ITEM.display IS '描述字段';
COMMENT ON COLUMN SYS_LOV_ITEM.grid_field_width IS '表格列宽';
COMMENT ON COLUMN SYS_LOV_ITEM.condition_field IS '是否查询字段';
COMMENT ON COLUMN SYS_LOV_ITEM.is_autocomplete IS '是否autocomplete';
COMMENT ON COLUMN SYS_LOV_ITEM.grid_field IS '是否显示表格列';
COMMENT ON COLUMN SYS_LOV_ITEM.condition_field_width IS '查询字段宽度';
COMMENT ON COLUMN SYS_LOV_ITEM.condition_field_type IS '查询字段组件类型';
COMMENT ON COLUMN SYS_LOV_ITEM.condition_field_name IS '查询字段名';
COMMENT ON COLUMN SYS_LOV_ITEM.condition_field_newline IS '查询字段新一行';
COMMENT ON COLUMN SYS_LOV_ITEM.condition_field_select_code IS '查询字段combobox对应的快码值';
COMMENT ON COLUMN SYS_LOV_ITEM.condition_field_lov_code IS '查询字段lov对应的通用lov编码';
COMMENT ON COLUMN SYS_LOV_ITEM.condition_field_sequence IS '查询字段排序号';
COMMENT ON COLUMN SYS_LOV_ITEM.grid_field_sequence IS '表格列排序号';
COMMENT ON COLUMN SYS_LOV_ITEM.grid_field_name IS '表格列字段名';
COMMENT ON COLUMN SYS_LOV_ITEM.grid_field_align IS '表格列布局';
COMMENT ON COLUMN SYS_LOV_ITEM.autocomplete_field IS 'autocomplete显示列';
COMMENT ON COLUMN SYS_LOV_ITEM.condition_field_select_url IS '查询字段combobox对应的URL';
COMMENT ON COLUMN SYS_LOV_ITEM.condition_field_select_vf IS '查询字段combobox对应的valueField';
COMMENT ON COLUMN SYS_LOV_ITEM.condition_field_select_tf IS '查询字段combobox对应的textField';
COMMENT ON COLUMN SYS_LOV_ITEM.condition_field_textfield IS '查询字段对应的textField';

ALTER TABLE SYS_LOV_ITEM
  ADD CONSTRAINT SYS_LOV_ITEM_PK PRIMARY KEY (LOV_ITEM_ID);
CREATE INDEX SYS_LOV_ITEM_N1 ON SYS_LOV_ITEM (LOV_ID);

CREATE SEQUENCE SYS_LOV_ITEM_S START WITH 10001;
