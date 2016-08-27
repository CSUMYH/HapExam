/*


 Date: 06/12/2016 21:53:44 PM
*/

-- ----------------------------
--  Table structure for sys_job_running_info
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_job_running_info]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_job_running_info]
GO
CREATE TABLE [dbo].[sys_job_running_info] (
  [JOB_RUNNING_INFO_ID]   BIGINT IDENTITY (10001, 1) NOT NULL,
  [JOB_NAME]              NVARCHAR(255)              NULL,
  [JOB_GROUP]             NVARCHAR(255)              NULL,
  [JOB_RESULT]            NVARCHAR(255)              NULL,
  [JOB_STATUS]            NVARCHAR(255)              NULL,
  [JOB_STATUS_MESSAGE]    NVARCHAR(255)              NULL,
  [TRIGGER_NAME]          NVARCHAR(255)              NULL,
  [TRIGGER_GROUP]         NVARCHAR(255)              NULL,
  [PREVIOUS_FIRE_TIME]    DATETIME               NULL,
  [FIRE_TIME]             DATETIME               NULL,
  [NEXT_FIRE_TIME]        DATETIME               NULL,
  [REFIRE_COUNT]          BIGINT                     NULL,
  [FIRE_INSTANCE_ID]      NVARCHAR(255)              NULL,
  [SCHEDULER_INSTANCE_ID] NVARCHAR(255)              NULL,
  [SCHEDULED_FIRE_TIME]   DATETIME               NULL,
  [EXECUTION_SUMMARY]     NVARCHAR(255)              NULL,
  [OBJECT_VERSION_NUMBER] DECIMAL(20, 0)             NULL,
  [REQUEST_ID]            BIGINT                     NULL,
  [PROGRAM_ID]            BIGINT                     NULL,
  [CREATED_BY]            BIGINT                     NULL,
  [CREATION_DATE]         DATETIME               NULL,
  [LAST_UPDATED_BY]       BIGINT                     NULL,
  [LAST_UPDATE_DATE]      DATETIME               NULL,
  [LAST_UPDATE_LOGIN]     DECIMAL(20, 0)             NULL,
  [ATTRIBUTE_CATEGORY]    VARCHAR(30)                NULL,
  [ATTRIBUTE1]            VARCHAR(255)               NULL,
  [ATTRIBUTE2]            VARCHAR(255)               NULL,
  [ATTRIBUTE3]            VARCHAR(255)               NULL,
  [ATTRIBUTE4]            VARCHAR(255)               NULL,
  [ATTRIBUTE5]            VARCHAR(255)               NULL,
  [ATTRIBUTE6]            VARCHAR(255)               NULL,
  [ATTRIBUTE7]            VARCHAR(255)               NULL,
  [ATTRIBUTE8]            VARCHAR(255)               NULL,
  [ATTRIBUTE9]            VARCHAR(255)               NULL,
  [ATTRIBUTE10]           VARCHAR(255)               NULL,
  [ATTRIBUTE11]           VARCHAR(255)               NULL,
  [ATTRIBUTE12]           VARCHAR(255)               NULL,
  [ATTRIBUTE13]           VARCHAR(255)               NULL,
  [ATTRIBUTE14]           VARCHAR(255)               NULL,
  [ATTRIBUTE15]           VARCHAR(255)               NULL
)
ON [PRIMARY]
GO


-- ----------------------------
--  Primary key structure for table sys_job_running_info
-- ----------------------------
ALTER TABLE [dbo].[sys_job_running_info]
  ADD
  CONSTRAINT [SYS_JOB_RUNNING_INFO_PK] PRIMARY KEY CLUSTERED ([JOB_RUNNING_INFO_ID])
GO


