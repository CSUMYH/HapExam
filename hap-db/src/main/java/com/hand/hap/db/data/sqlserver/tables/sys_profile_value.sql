/*


 Date: 06/12/2016 21:55:14 PM
*/

-- ----------------------------
--  Table structure for sys_profile_value
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_profile_value]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_profile_value]
GO
CREATE TABLE [dbo].[sys_profile_value] (
  [PROFILE_VALUE_ID]      BIGINT IDENTITY (10001, 1) NOT NULL,
  [PROFILE_ID]            NVARCHAR(32)               NULL,
  [LEVEL_ID]              NVARCHAR(32)               NULL,
  [LEVEL_VALUE]           NVARCHAR(40)               NULL,
  [PROFILE_VALUE]         NVARCHAR(80)               NULL,
  [OBJECT_VERSION_NUMBER] DECIMAL(20, 0)             NULL,
  [REQUEST_ID]            BIGINT                     NULL,
  [PROGRAM_ID]            BIGINT                     NULL,
  [CREATION_DATE]         DATETIME               NULL,
  [CREATED_BY]            DECIMAL(20, 0)             NULL,
  [LAST_UPDATED_BY]       DECIMAL(20, 0)             NULL,
  [LAST_UPDATE_DATE]      DATETIME               NULL,
  [LAST_UPDATE_LOGIN]     DECIMAL(20, 0)             NULL,
  [ATTRIBUTE_CATEGORY]    VARCHAR(30)                NULL,
  [ATTRIBUTE1]            VARCHAR(240)               NULL,
  [ATTRIBUTE2]            VARCHAR(240)               NULL,
  [ATTRIBUTE3]            VARCHAR(240)               NULL,
  [ATTRIBUTE4]            VARCHAR(240)               NULL,
  [ATTRIBUTE5]            VARCHAR(240)               NULL,
  [ATTRIBUTE6]            VARCHAR(240)               NULL,
  [ATTRIBUTE7]            VARCHAR(240)               NULL,
  [ATTRIBUTE8]            VARCHAR(240)               NULL,
  [ATTRIBUTE9]            VARCHAR(240)               NULL,
  [ATTRIBUTE10]           VARCHAR(240)               NULL,
  [ATTRIBUTE11]           VARCHAR(240)               NULL,
  [ATTRIBUTE12]           VARCHAR(240)               NULL,
  [ATTRIBUTE13]           VARCHAR(240)               NULL,
  [ATTRIBUTE14]           VARCHAR(240)               NULL,
  [ATTRIBUTE15]           VARCHAR(240)               NULL
)
ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_profile_value',
                            'COLUMN', 'PROFILE_VALUE_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_profile_value
-- ----------------------------
ALTER TABLE [dbo].[sys_profile_value]
  ADD
  CONSTRAINT [SYS_PROFILE_VALUE_PK] PRIMARY KEY CLUSTERED ([PROFILE_VALUE_ID])
GO






