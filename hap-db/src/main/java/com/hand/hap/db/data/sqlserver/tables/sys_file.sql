/*


 Date: 06/12/2016 21:53:18 PM
*/

-- ----------------------------
--  Table structure for sys_file
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_file]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_file]
GO
CREATE TABLE [dbo].[sys_file] (
  [FILE_ID]               BIGINT IDENTITY (10001, 1) NOT NULL,
  [ATTACHMENT_ID]         BIGINT                     NULL,
  [FILE_NAME]             NVARCHAR(255)              NULL,
  [FILE_PATH]             NVARCHAR(255)              NULL,
  [FILE_SIZE]             DECIMAL(20,0)             NULL,
  [FILE_TYPE]             NVARCHAR(240)              NULL,
  [UPLOAD_DATE]           DATETIME               NULL,
  [OBJECT_VERSION_NUMBER] DECIMAL(20,0)             NULL,
  [REQUEST_ID]            BIGINT                     NULL,
  [PROGRAM_ID]            BIGINT                     NULL,
  [CREATION_DATE]         DATETIME               NULL,
  [CREATED_BY]            DECIMAL(20,0)             NULL,
  [LAST_UPDATED_BY]       DECIMAL(20,0)             NULL,
  [LAST_UPDATE_DATE]      DATETIME               NULL,
  [LAST_UPDATE_LOGIN]     DECIMAL(20,0)             NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_file', 'COLUMN',
                            'FILE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'附件ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_file', 'COLUMN', 'ATTACHMENT_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'文件大小', 'SCHEMA', 'dbo', 'TABLE', 'sys_file', 'COLUMN', 'FILE_SIZE'
GO
EXEC sp_addextendedproperty 'MS_Description', N'上传时间', 'SCHEMA', 'dbo', 'TABLE', 'sys_file', 'COLUMN', 'UPLOAD_DATE'
GO
EXEC sp_addextendedproperty 'MS_Description', N'行版本号，用来处理锁', 'SCHEMA', 'dbo', 'TABLE', 'sys_file', 'COLUMN',
                            'OBJECT_VERSION_NUMBER'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部请求id', 'SCHEMA', 'dbo', 'TABLE', 'sys_file', 'COLUMN',
                            'REQUEST_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部程序id', 'SCHEMA', 'dbo', 'TABLE', 'sys_file', 'COLUMN',
                            'PROGRAM_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_file
-- ----------------------------
ALTER TABLE [dbo].[sys_file]
  ADD
  CONSTRAINT [SYS_FILE_PK] PRIMARY KEY CLUSTERED ([FILE_ID])
GO



-- ----------------------------
--  Indexes structure for table sys_file
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_FILE_N1]
ON [dbo].[sys_file] ([ATTACHMENT_ID] ASC)
GO


