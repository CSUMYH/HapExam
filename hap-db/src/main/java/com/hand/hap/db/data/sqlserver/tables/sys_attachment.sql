/*


 Date: 06/12/2016 21:52:46 PM
*/

-- ----------------------------
--  Table structure for sys_attachment
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_attachment]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_attachment]
GO
CREATE TABLE [dbo].[sys_attachment] (
  [ATTACHMENT_ID]         BIGINT IDENTITY (10001, 1) NOT NULL,
  [CATEGORY_ID]           BIGINT                     NULL,
  [NAME]                  NVARCHAR(40)               NULL,
  [SOURCE_TYPE]           NVARCHAR(30)               NULL,
  [SOURCE_KEY]            NVARCHAR(30)               NULL,
  [STATUS]                NVARCHAR(1)                NULL,
  [START_ACTIVE_DATE]     DATETIME               NULL,
  [END_ACTIVE_DATE]       DATETIME               NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_attachment', 'COLUMN',
                            'ATTACHMENT_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'分类ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_attachment', 'COLUMN',
                            'CATEGORY_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'开始生效日期', 'SCHEMA', 'dbo', 'TABLE', 'sys_attachment', 'COLUMN',
                            'START_ACTIVE_DATE'
GO
EXEC sp_addextendedproperty 'MS_Description', N'失效时间', 'SCHEMA', 'dbo', 'TABLE', 'sys_attachment', 'COLUMN',
                            'END_ACTIVE_DATE'
GO
EXEC sp_addextendedproperty 'MS_Description', N'行版本号，用来处理锁', 'SCHEMA', 'dbo', 'TABLE', 'sys_attachment', 'COLUMN',
                            'OBJECT_VERSION_NUMBER'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部请求id', 'SCHEMA', 'dbo', 'TABLE', 'sys_attachment',
                            'COLUMN', 'REQUEST_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部程序id', 'SCHEMA', 'dbo', 'TABLE', 'sys_attachment',
                            'COLUMN', 'PROGRAM_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_attachment
-- ----------------------------
ALTER TABLE [dbo].[sys_attachment]
  ADD
  CONSTRAINT [SYS_ATTACHMENT_PK] PRIMARY KEY CLUSTERED ([ATTACHMENT_ID])
GO



-- ----------------------------
--  Indexes structure for table sys_attachment
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_ATTACHMENT_N1]
  ON [dbo].[sys_attachment] ([CATEGORY_ID] ASC)
GO
CREATE NONCLUSTERED INDEX [SYS_ATTACHMENT_N2]
  ON [dbo].[sys_attachment] ([SOURCE_TYPE] ASC, [SOURCE_KEY] ASC)
GO

