-- Create table
CREATE TABLE sys_file
(
  file_id               NUMBER(20),
  attachment_id         NUMBER(20),
  file_name             NVARCHAR2(255),
  file_path             NVARCHAR2(255),
  file_size             NUMBER,
  file_type             NVARCHAR2(240),
  upload_date           DATE,
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

ALTER TABLE sys_file
  ADD CONSTRAINT sys_file_PK PRIMARY KEY (FILE_ID);

-- Add comments to the columns
COMMENT ON COLUMN sys_file.file_id
IS '表ID，主键，供其他表做外键';
COMMENT ON COLUMN sys_file.attachment_id
IS '附件ID';
COMMENT ON COLUMN sys_file.file_size
IS '文件大小';
COMMENT ON COLUMN sys_file.upload_date
IS '上传时间';
COMMENT ON COLUMN sys_file.object_version_number
IS '行版本号，用来处理锁';
COMMENT ON COLUMN sys_file.request_id
IS '对Record最后一次操作的系统内部请求id';
COMMENT ON COLUMN sys_file.program_id
IS '对Record最后一次操作的系统内部程序id';


CREATE SEQUENCE sys_file_s START WITH 10001;

