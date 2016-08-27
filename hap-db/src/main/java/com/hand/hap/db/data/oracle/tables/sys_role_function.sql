CREATE TABLE SYS_ROLE_FUNCTION
(
  SRF_ID                NUMBER               NOT NULL,
  ROLE_ID               NUMBER               NOT NULL,
  FUNCTION_ID           NUMBER               NOT NULL,
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
COMMENT ON TABLE SYS_ROLE_FUNCTION IS '角色功能表';
COMMENT ON COLUMN SYS_ROLE_FUNCTION.SRF_ID IS 'ID';
COMMENT ON COLUMN SYS_ROLE_FUNCTION.ROLE_ID IS '角色ID';
COMMENT ON COLUMN SYS_ROLE_FUNCTION.FUNCTION_ID IS '功能ID';

ALTER TABLE SYS_ROLE_FUNCTION
  ADD CONSTRAINT SYS_ROLE_FUNCTION_PK PRIMARY KEY (SRF_ID);
CREATE UNIQUE INDEX SYS_ROLE_FUNCTION_U1 ON SYS_ROLE_FUNCTION (ROLE_ID, FUNCTION_ID);

CREATE SEQUENCE SYS_ROLE_FUNCTION_S START WITH 10001;
