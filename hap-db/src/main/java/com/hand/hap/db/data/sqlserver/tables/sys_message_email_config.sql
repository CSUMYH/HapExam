/*


 Date: 06/12/2016 21:54:30 PM
*/

-- ----------------------------
--  Table structure for sys_message_email_config
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_message_email_config]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_message_email_config]
GO
CREATE TABLE [dbo].[sys_message_email_config] (
  [CONFIG_ID]             BIGINT IDENTITY (10001, 1) NOT NULL,
  [CONFIG_CODE]           NVARCHAR(50)               NULL,
  [HOST]                  NVARCHAR(50)               NULL,
  [PORT]                  NVARCHAR(10)               NULL,
  [TRY_TIMES]             DECIMAL(20, 0)             NULL,
  [DESCRIPTION]           NVARCHAR(240)              NULL,
  [USE_WHITE_LIST]        NVARCHAR(1)                NULL,
  [USER_NAME]             NVARCHAR(240)              NULL,
  [PASSWORD]              NVARCHAR(240)              NULL,
  [ENABLE]                NVARCHAR(1)                NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'主键', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_email_config', 'COLUMN',
                            'CONFIG_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'重试次数', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_email_config', 'COLUMN',
                            'TRY_TIMES'
GO
EXEC sp_addextendedproperty 'MS_Description', N'Record的版本号，每发生update则自增', 'SCHEMA', 'dbo', 'TABLE',
                            'sys_message_email_config', 'COLUMN', 'OBJECT_VERSION_NUMBER'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部请求id', 'SCHEMA', 'dbo', 'TABLE',
                            'sys_message_email_config', 'COLUMN', 'REQUEST_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部程序id', 'SCHEMA', 'dbo', 'TABLE',
                            'sys_message_email_config', 'COLUMN', 'PROGRAM_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_message_email_config
-- ----------------------------
ALTER TABLE [dbo].[sys_message_email_config]
  ADD
  CONSTRAINT [SYS_MESSAGE_EMAIL_CONFIG_PK] PRIMARY KEY CLUSTERED ([CONFIG_ID])
GO



-- ----------------------------
--  Indexes structure for table sys_message_email_config
-- ----------------------------
CREATE UNIQUE INDEX [SYS_MESSAGE_EMAIL_CONFIG_CODE]
ON [dbo].[sys_message_email_config] ([CONFIG_CODE] ASC)
GO

