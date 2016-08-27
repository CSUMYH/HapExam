/*


 Date: 06/12/2016 21:56:09 PM
*/

-- ----------------------------
--  Table structure for sys_user
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_user]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_user]
GO
CREATE TABLE [dbo].[sys_user] (
  [USER_ID]               BIGINT IDENTITY (10001, 1) NOT NULL,
  [USER_TYPE]             NVARCHAR(30)               NULL,
  [USER_NAME]             NVARCHAR(40)               NOT NULL,
  [PASSWORD_ENCRYPTED]    VARCHAR(80)                NULL,
  [EMAIL]                 NVARCHAR(150)              NULL,
  [PHONE]                 NVARCHAR(40)               NULL,
  [START_ACTIVE_DATE]     DATETIME               NULL,
  [END_ACTIVE_DATE]       DATETIME               NULL,
  [STATUS]                NVARCHAR(30)               NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_user', 'COLUMN',
                            'USER_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'有效期从', 'SCHEMA', 'dbo', 'TABLE', 'sys_user', 'COLUMN',
                            'START_ACTIVE_DATE'
GO
EXEC sp_addextendedproperty 'MS_Description', N'有效期至', 'SCHEMA', 'dbo', 'TABLE', 'sys_user', 'COLUMN', 'END_ACTIVE_DATE'
GO


-- ----------------------------
--  Primary key structure for table sys_user
-- ----------------------------
ALTER TABLE [dbo].[sys_user]
  ADD
  CONSTRAINT [SYS_USER_PK] PRIMARY KEY CLUSTERED ([USER_ID])
GO

CREATE UNIQUE INDEX [SYS_USER_U1]
  ON [dbo].[sys_user] ([USER_NAME] ASC)
GO



