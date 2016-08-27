-- Create table
CREATE TABLE SYS_MESSAGE_RECEIVER
(
  receiver_id           NUMBER(20),
  message_id            NUMBER(20),
  message_type          NVARCHAR2(25),
  message_address       NVARCHAR2(255),
  object_version_number NUMBER(20),
  request_id            NUMBER(20),
  program_id            NUMBER(20),
  created_by            NUMBER(20),
  creation_date         DATE,
  last_updated_by       NUMBER(20),
  last_update_date      DATE,
  attribute1            VARCHAR2(255 CHAR),
  attribute2            VARCHAR2(255 CHAR),
  attribute3            VARCHAR2(255 CHAR),
  attribute4            VARCHAR2(255 CHAR),
  attribute5            VARCHAR2(255 CHAR),
  attribute6            VARCHAR2(255 CHAR),
  attribute7            VARCHAR2(255 CHAR),
  attribute8            VARCHAR2(255 CHAR),
  attribute9            VARCHAR2(255 CHAR),
  attribute10           VARCHAR2(255 CHAR),
  attribute11           VARCHAR2(255 CHAR),
  attribute12           VARCHAR2(255 CHAR),
  attribute13           VARCHAR2(255 CHAR),
  attribute14           VARCHAR2(255 CHAR),
  attribute15           VARCHAR2(255 CHAR)
);

ALTER TABLE SYS_MESSAGE_RECEIVER
  ADD CONSTRAINT
  SYS_MESSAGE_RECEIVER_PK PRIMARY KEY (receiver_id);

CREATE INDEX SYS_MESSAGE_RECEIVER_N1 ON SYS_MESSAGE_RECEIVER (message_id);

-- Add comments to the columns
COMMENT ON COLUMN sys_message_receiver.receiver_id
IS '主键';
COMMENT ON COLUMN sys_message_receiver.message_id
IS '消息id';

CREATE SEQUENCE sys_message_receiver_s START WITH 10001;


