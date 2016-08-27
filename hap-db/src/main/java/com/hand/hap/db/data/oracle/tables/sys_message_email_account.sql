-- Create table
CREATE TABLE SYS_MESSAGE_EMAIL_ACCOUNT
(
  account_id            NUMBER(20),
  account_code          NVARCHAR2(50),
  config_id             NUMBER(20),
  user_name             NVARCHAR2(240),
  password              NVARCHAR2(240),
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

ALTER TABLE SYS_MESSAGE_EMAIL_ACCOUNT
  ADD CONSTRAINT
  SYS_MESSAGE_EMAIL_ACCOUNT_PK PRIMARY KEY (account_id);

CREATE UNIQUE INDEX SYS_MESSAGE_EMAIL_ACCOUNT_U1 ON SYS_MESSAGE_EMAIL_ACCOUNT (account_code);


CREATE SEQUENCE sys_message_email_account_s START WITH 10001;

