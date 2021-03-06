CREATE TABLE SYS_FUNCTION_B
(
  FUNCTION_ID           NUMBER                  NOT NULL,
  MODULE_CODE           VARCHAR2(30),
  FUNCTION_ICON         VARCHAR2(100),
  FUNCTION_CODE         VARCHAR2(30)            NOT NULL,
  FUNCTION_NAME         VARCHAR2(150),
  FUNCTION_DESCRIPTION  VARCHAR2(240),
  RESOURCE_ID           NUMBER,
  TYPE                  VARCHAR2(30),
  PARENT_FUNCTION_ID    NUMBER,
  ENABLED_FLAG          VARCHAR2(1) DEFAULT 'Y' NOT NULL,
  FUNCTION_SEQUENCE     NUMBER DEFAULT 1        NOT NULL,
  OBJECT_VERSION_NUMBER NUMBER DEFAULT 1,
  REQUEST_ID            NUMBER DEFAULT -1,
  PROGRAM_ID            NUMBER DEFAULT -1,
  CREATION_DATE         DATE DEFAULT sysdate    NOT NULL,
  CREATED_BY            NUMBER DEFAULT -1       NOT NULL,
  LAST_UPDATED_BY       NUMBER DEFAULT -1       NOT NULL,
  LAST_UPDATE_DATE      DATE DEFAULT sysdate    NOT NULL,
  LAST_UPDATE_LOGIN     NUMBER,
  ATTRIBUTE_CATEGORY    VARCHAR2(30),
  ATTRIBUTE1            VARCHAR2(240),
  ATTRIBUTE2            VARCHAR2(240),
  ATTRIBUTE3            VARCHAR2(240),
  ATTRIBUTE4            VARCHAR2(240),
  ATTRIBUTE5            VARCHAR2(240),
  ATTRIBUTE6            VARCHAR2(240),
  ATTRIBUTE7            VARCHAR2(240),
  ATTRIBUTE8            VARCHAR2(240),
  ATTRIBUTE9            VARCHAR2(240),
  ATTRIBUTE10           VARCHAR2(240),
  ATTRIBUTE11           VARCHAR2(240),
  ATTRIBUTE12           VARCHAR2(240),
  ATTRIBUTE13           VARCHAR2(240),
  ATTRIBUTE14           VARCHAR2(240),
  ATTRIBUTE15           VARCHAR2(240)
);
COMMENT ON TABLE SYS_FUNCTION_B IS '功能表';
COMMENT ON COLUMN SYS_FUNCTION_B.FUNCTION_ID IS '表ID，主键，供其他表做外键';
COMMENT ON COLUMN SYS_FUNCTION_B.MODULE_CODE IS '模块编码';
COMMENT ON COLUMN SYS_FUNCTION_B.FUNCTION_ICON IS '功能图标';
COMMENT ON COLUMN SYS_FUNCTION_B.FUNCTION_CODE IS '功能编码';
COMMENT ON COLUMN SYS_FUNCTION_B.FUNCTION_NAME IS '功能名称';
COMMENT ON COLUMN SYS_FUNCTION_B.FUNCTION_DESCRIPTION IS '描述';
COMMENT ON COLUMN SYS_FUNCTION_B.RESOURCE_ID IS '功能入口';
COMMENT ON COLUMN SYS_FUNCTION_B.TYPE IS '功能类型';
COMMENT ON COLUMN SYS_FUNCTION_B.PARENT_FUNCTION_ID IS '父功能';
COMMENT ON COLUMN SYS_FUNCTION_B.ENABLED_FLAG IS '是否启用';
COMMENT ON COLUMN SYS_FUNCTION_B.FUNCTION_SEQUENCE IS '排序号';

ALTER TABLE SYS_FUNCTION_B
  ADD CONSTRAINT SYS_FUNCTION_B_PK PRIMARY KEY (FUNCTION_ID);
CREATE UNIQUE INDEX SYS_FUNCTION_B_U1 ON SYS_FUNCTION_B (FUNCTION_CODE);
CREATE INDEX SYS_FUNCTION_B_N1 ON SYS_FUNCTION_B (PARENT_FUNCTION_ID);

CREATE SEQUENCE SYS_FUNCTION_B_S START WITH 10001;


CREATE TABLE SYS_FUNCTION_TL
(
  FUNCTION_ID           NUMBER               NOT NULL,
  LANG                  VARCHAR2(10)         NOT NULL,
  FUNCTION_NAME         VARCHAR2(150),
  FUNCTION_DESCRIPTION  VARCHAR2(240),
  OBJECT_VERSION_NUMBER NUMBER DEFAULT 1,
  REQUEST_ID            NUMBER DEFAULT -1,
  PROGRAM_ID            NUMBER DEFAULT -1,
  CREATION_DATE         DATE DEFAULT sysdate NOT NULL,
  CREATED_BY            NUMBER DEFAULT -1    NOT NULL,
  LAST_UPDATED_BY       NUMBER DEFAULT -1    NOT NULL,
  LAST_UPDATE_DATE      DATE DEFAULT sysdate NOT NULL,
  LAST_UPDATE_LOGIN     NUMBER,
  ATTRIBUTE_CATEGORY    VARCHAR2(30),
  ATTRIBUTE1            VARCHAR2(240),
  ATTRIBUTE2            VARCHAR2(240),
  ATTRIBUTE3            VARCHAR2(240),
  ATTRIBUTE4            VARCHAR2(240),
  ATTRIBUTE5            VARCHAR2(240),
  ATTRIBUTE6            VARCHAR2(240),
  ATTRIBUTE7            VARCHAR2(240),
  ATTRIBUTE8            VARCHAR2(240),
  ATTRIBUTE9            VARCHAR2(240),
  ATTRIBUTE10           VARCHAR2(240),
  ATTRIBUTE11           VARCHAR2(240),
  ATTRIBUTE12           VARCHAR2(240),
  ATTRIBUTE13           VARCHAR2(240),
  ATTRIBUTE14           VARCHAR2(240),
  ATTRIBUTE15           VARCHAR2(240)
);
COMMENT ON TABLE SYS_FUNCTION_TL IS '功能表（多语言）';
COMMENT ON COLUMN SYS_FUNCTION_TL.FUNCTION_ID IS '功能ID';
COMMENT ON COLUMN SYS_FUNCTION_TL.LANG IS '语言';
COMMENT ON COLUMN SYS_FUNCTION_TL.FUNCTION_NAME IS '功能名';
COMMENT ON COLUMN SYS_FUNCTION_TL.FUNCTION_DESCRIPTION IS '功能描述';

ALTER TABLE SYS_FUNCTION_TL
  ADD CONSTRAINT SYS_FUNCTION_TL_PK PRIMARY KEY (FUNCTION_ID, LANG);
