-- Create table
CREATE TABLE sys_account_retrieve
(
  account_id            NUMBER(20),
  retrieve_type         NVARCHAR2(30),
  retrieve_date         DATE,
  object_version_number NUMBER,
  request_id            NUMBER(20),
  program_id            NUMBER(20),
  creation_date         DATE,
  created_by            NUMBER,
  last_updated_by       NUMBER,
  last_update_date      DATE,
  last_update_login     NUMBER
);
-- Add comments to the columns
COMMENT ON COLUMN sys_account_retrieve.account_id
IS '其他表做外键';
COMMENT ON COLUMN sys_account_retrieve.retrieve_date
IS '时间';

