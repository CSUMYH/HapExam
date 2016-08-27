-- Create table
CREATE TABLE SYS_JOB_RUNNING_INFO
(
  job_running_info_id   NUMBER(20)              NOT NULL,
  job_name              VARCHAR2(255),
  job_group             VARCHAR2(255),
  job_result            VARCHAR2(255),
  job_status            VARCHAR2(255),
  job_status_message    VARCHAR2(4000),
  trigger_name          VARCHAR2(255),
  trigger_group         VARCHAR2(255),
  previous_fire_time    DATE,
  fire_time             DATE,
  next_fire_time        DATE,
  refire_count          NUMBER(20) DEFAULT 0,
  fire_instance_id      VARCHAR2(255),
  scheduler_instance_id VARCHAR2(255),
  scheduled_fire_time   DATE,
  execution_summary     VARCHAR2(4000),
  OBJECT_VERSION_NUMBER NUMBER DEFAULT 1        NOT NULL,
  REQUEST_ID            NUMBER     DEFAULT -1,
  PROGRAM_ID            NUMBER     DEFAULT -1,
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
-- Create/Recreate primary, unique and foreign key constraints
ALTER TABLE SYS_JOB_RUNNING_INFO
  ADD CONSTRAINT SYS_JOB_RUNING_INFO_PK PRIMARY KEY (JOB_RUNNING_INFO_ID);

-- Create sequence
CREATE SEQUENCE SYS_JOB_RUNNING_INFO_S START WITH 10001;
