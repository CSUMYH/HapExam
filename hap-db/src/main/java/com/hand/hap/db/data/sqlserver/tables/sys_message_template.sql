/*


 Date: 06/12/2016 21:54:50 PM
*/

-- ----------------------------
--  Table structure for sys_message_template
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_message_template]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_message_template]
GO
CREATE TABLE [dbo].[sys_message_template] (
  [TEMPLATE_ID]           BIGINT IDENTITY (10001, 1) NOT NULL,
  [SUBJECT]               VARCHAR(MAX)               NULL,
  [CONTENT]               VARCHAR(MAX)               NULL,
  [ACCOUNT_ID]            BIGINT                     NULL,
  [TEMPLATE_CODE]         NVARCHAR(50)               NULL,
  [TEMPLATE_TYPE]         NVARCHAR(50)               NULL,
  [PRIORITY_LEVEL]        NVARCHAR(50)               NULL,
  [DESCRIPTION]           NVARCHAR(240)              NULL,
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
  TEXTIMAGE_ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'主键', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_template', 'COLUMN',
                            'TEMPLATE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'模板标题', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_template', 'COLUMN',
                            'SUBJECT'
GO
EXEC sp_addextendedproperty 'MS_Description', N'模板内容', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_template', 'COLUMN',
                            'CONTENT'
GO
EXEC sp_addextendedproperty 'MS_Description', N'账号id', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_template', 'COLUMN',
                            'ACCOUNT_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_message_template
-- ----------------------------
ALTER TABLE [dbo].[sys_message_template]
  ADD
  CONSTRAINT [SYS_MESSAGE_TEMPLATE_PK] PRIMARY KEY CLUSTERED ([TEMPLATE_ID])
GO



-- ----------------------------
--  Indexes structure for table sys_message_template
-- ----------------------------
CREATE UNIQUE INDEX [SYS_MESSAGE_TEMPLATE_U1]
ON [dbo].[sys_message_template] ([TEMPLATE_CODE] ASC)
GO

