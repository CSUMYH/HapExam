/*


 Date: 06/12/2016 21:54:56 PM
*/

-- ----------------------------
--  Table structure for sys_message_transaction
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_message_transaction]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_message_transaction]
GO
CREATE TABLE [dbo].[sys_message_transaction] (
  [TRANSACTION_ID]        BIGINT IDENTITY (10001, 1) NOT NULL,
  [MESSAGE_ID]            BIGINT                     NULL,
  [TRANSACTION_STATUS]    NVARCHAR(25)               NULL,
  [TRANSACTION_MESSAGE]   VARCHAR(MAX)               NULL,
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
  TEXTIMAGE_ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'主键', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN',
                            'TRANSACTION_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'消息id', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN',
                            'MESSAGE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'返回信息', 'SCHEMA', 'dbo', 'TABLE', 'sys_message_transaction', 'COLUMN',
                            'TRANSACTION_MESSAGE'
GO



-- ----------------------------
--  Primary key structure for table sys_message_transaction
-- ----------------------------
ALTER TABLE [dbo].[sys_message_transaction]
  ADD
  CONSTRAINT [SYS_MESSAGE_TRANSACTION_PK] PRIMARY KEY CLUSTERED ([TRANSACTION_ID])
GO



-- ----------------------------
--  Indexes structure for table sys_message_transaction
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_MESSAGE_TRANSACTION_N1]
ON [dbo].[sys_message_transaction] ([MESSAGE_ID] ASC)
GO

CREATE NONCLUSTERED INDEX [SYS_MESSAGE_TRANSACTION_N2]
ON [dbo].[sys_message_transaction] ([TRANSACTION_STATUS] ASC)
GO

