/*


 Date: 06/12/2016 21:54:42 PM
*/

-- ----------------------------
--  Table structure for sys_message_receiver
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_message_receiver]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_message_receiver]
GO
CREATE TABLE [dbo].[sys_message_receiver] (
  [RECEIVER_ID]           BIGINT IDENTITY (10001, 1) NOT NULL,
  [MESSAGE_ID]            BIGINT                     NULL,
  [MESSAGE_TYPE]          NVARCHAR(25)               NULL,
  [MESSAGE_ADDRESS]       NVARCHAR(255)              NULL,
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
GO
EXEC sp_addextendedproperty 'MS_Description', N'主键', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_receiver', 'COLUMN',
                            'RECEIVER_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'消息id', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_receiver', 'COLUMN',
                            'MESSAGE_ID'
GO

-- ----------------------------
--  Primary key structure for table sys_message_receiver
-- ----------------------------
ALTER TABLE [dbo].[sys_message_receiver]
  ADD
  CONSTRAINT [SYS_MESSAGE_RECEIVER_PK] PRIMARY KEY CLUSTERED ([RECEIVER_ID])
GO



-- ----------------------------
--  Indexes structure for table sys_message_receiver
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_MESSAGE_RECEIVER_N1]
ON [dbo].[sys_message_receiver] ([MESSAGE_ID] ASC)
GO

