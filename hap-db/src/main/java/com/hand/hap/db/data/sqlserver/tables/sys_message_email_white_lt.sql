/*


 Date: 06/12/2016 21:54:35 PM
*/

-- ----------------------------
--  Table structure for sys_message_email_white_lt
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_message_email_white_lt]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_message_email_white_lt]
GO
CREATE TABLE [dbo].[sys_message_email_white_lt] (
  [ID]                    BIGINT IDENTITY (10001, 1) NOT NULL,
  [ADDRESS]               VARCHAR(240)               NULL,
  [CONFIG_ID]             BIGINT                     NULL,
  [DESCRIPTION]           VARCHAR(240)               NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'主键', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_email_white_lt', 'COLUMN',
                            'ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'白名单地址', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_email_white_lt',
                            'COLUMN', 'ADDRESS'
GO
EXEC sp_addextendedproperty 'MS_Description', N'邮箱配置id', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_email_white_lt',
                            'COLUMN', 'CONFIG_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'描述', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_email_white_lt', 'COLUMN',
                            'DESCRIPTION'
GO
EXEC sp_addextendedproperty 'MS_Description', N'Record的版本号，每发生update则自增', 'SCHEMA', 'dbo', 'TABLE',
                            'sys_message_email_white_lt', 'COLUMN', 'OBJECT_VERSION_NUMBER'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部请求id', 'SCHEMA', 'dbo', 'TABLE',
                            'sys_message_email_white_lt', 'COLUMN', 'REQUEST_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部程序id', 'SCHEMA', 'dbo', 'TABLE',
                            'sys_message_email_white_lt', 'COLUMN', 'PROGRAM_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_message_email_white_lt
-- ----------------------------
ALTER TABLE [dbo].[sys_message_email_white_lt]
  ADD
  CONSTRAINT [SYS_MESSAGE_EMAIL_WHITE_LT_PK] PRIMARY KEY CLUSTERED ([ID])
GO



