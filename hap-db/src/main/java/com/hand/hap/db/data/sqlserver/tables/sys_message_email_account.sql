/*


 Date: 06/12/2016 21:54:23 PM
*/

-- ----------------------------
--  Table structure for sys_message_email_account
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_message_email_account]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_message_email_account]
GO
CREATE TABLE [dbo].[sys_message_email_account] (
  [ACCOUNT_ID]            BIGINT IDENTITY (10001, 1) NOT NULL,
  [ACCOUNT_CODE]          NVARCHAR(50)               NULL,
  [CONFIG_ID]             BIGINT                     NULL,
  [USER_NAME]             NVARCHAR(240)              NULL,
  [PASSWORD]              NVARCHAR(240)              NULL,
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
GO


-- ----------------------------
--  Primary key structure for table sys_message_email_account
-- ----------------------------
ALTER TABLE [dbo].[sys_message_email_account]
  ADD
  CONSTRAINT [SYS_MESSAGE_EMAIL_ACCOUNT_PK] PRIMARY KEY CLUSTERED ([ACCOUNT_ID])
GO



-- ----------------------------
--  Indexes structure for table sys_message_email_account
-- ----------------------------
CREATE UNIQUE INDEX [SYS_MESSAGE_EMAIL_ACCOUNT_U1]
ON [dbo].[sys_message_email_account] ([ACCOUNT_CODE] ASC)
GO

