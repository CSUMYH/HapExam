/*


 Date: 06/12/2016 21:54:06 PM
*/

-- ----------------------------
--  Table structure for sys_message
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_message]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_message]
GO
CREATE TABLE [dbo].[sys_message] (
  [MESSAGE_ID]            BIGINT IDENTITY (10001, 1) NOT NULL,
  [MESSAGE_TYPE]          NVARCHAR(10)               NULL,
  [MESSAGE_HOST]          NVARCHAR(255)              NULL,
  [MESSAGE_FROM]          NVARCHAR(255)              NULL,
  [SUBJECT]               NVARCHAR(255)              NULL,
  [CONTENT]               VARCHAR(MAX)               NULL,
  [PRIORITY_LEVEL]        NVARCHAR(25)               NULL,
  [SEND_FLAG]             NVARCHAR(1)                NULL,
  [MESSAGE_SOURCE]        NVARCHAR(255)              NULL,
  [OBJECT_VERSION_NUMBER] BIGINT                     NULL,
  [REQUEST_ID]            BIGINT                     NULL,
  [PROGRAM_ID]            BIGINT                     NULL,
  [CREATED_BY]            BIGINT                     NULL,
  [CREATION_DATE]         DATETIME               NULL,
  [LAST_UPDATED_BY]       BIGINT                     NULL,
  [LAST_UPDATE_DATE]      DATETIME               NULL,
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
  TEXTIMAGE_ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'主键', 'SCHEMA', 'dbo', 'TABLE', 'sys_message', 'COLUMN', 'MESSAGE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'内容', 'SCHEMA', 'dbo', 'TABLE', 'sys_message', 'COLUMN', 'CONTENT'
GO


-- ----------------------------
--  Primary key structure for table sys_message
-- ----------------------------
ALTER TABLE [dbo].[sys_message]
  ADD
  CONSTRAINT [SYS_MESSAGE_PK] PRIMARY KEY CLUSTERED ([MESSAGE_ID])
GO

-- ----------------------------
--  Indexes structure for table sys_message
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_MESSAGE_N1]
  ON [dbo].[sys_message] ([MESSAGE_TYPE] ASC)
GO



