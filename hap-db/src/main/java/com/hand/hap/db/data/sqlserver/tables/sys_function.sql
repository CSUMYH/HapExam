/*


 Date: 06/12/2016 21:53:24 PM
*/

-- ----------------------------
--  Table structure for sys_function_b
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_function_b]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_function_b]
GO
CREATE TABLE [dbo].[sys_function_b] (
  [FUNCTION_ID]           BIGINT IDENTITY (10001, 1) NOT NULL,
  [MODULE_CODE]           NVARCHAR(30)               NULL,
  [FUNCTION_ICON]         NVARCHAR(100)              NULL,
  [FUNCTION_CODE]         NVARCHAR(30)               NULL,
  [FUNCTION_NAME]         NVARCHAR(150)              NULL,
  [FUNCTION_DESCRIPTION]  NVARCHAR(240)              NULL,
  [RESOURCE_ID]           BIGINT                     NULL,
  [TYPE]                  NVARCHAR(30)               NULL,
  [PARENT_FUNCTION_ID]    BIGINT                     NULL,
  [ENABLED_FLAG]          NVARCHAR(1)                NULL,
  [FUNCTION_SEQUENCE]     DECIMAL(20, 0)             NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_function_b', 'COLUMN',
                            'FUNCTION_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'功能入口', 'SCHEMA', 'dbo', 'TABLE', 'sys_function_b', 'COLUMN',
                            'RESOURCE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'父功能', 'SCHEMA', 'dbo', 'TABLE', 'sys_function_b', 'COLUMN',
                            'PARENT_FUNCTION_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'排序号', 'SCHEMA', 'dbo', 'TABLE', 'sys_function_b', 'COLUMN',
                            'FUNCTION_SEQUENCE'
GO


-- ----------------------------
--  Primary key structure for table sys_function_b
-- ----------------------------
ALTER TABLE [dbo].[sys_function_b]
  ADD
  CONSTRAINT [SYS_FUNCTION_B_PK] PRIMARY KEY CLUSTERED ([FUNCTION_ID])
GO

-- ----------------------------
--  Indexes structure for table sys_function_b
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_FUNCTION_B_N1]
  ON [dbo].[sys_function_b] ([PARENT_FUNCTION_ID] ASC)
GO
CREATE UNIQUE INDEX [SYS_FUNCTION_B_U1]
  ON [dbo].[sys_function_b] ([FUNCTION_CODE] ASC)
GO

-- ----------------------------
--  Table structure for sys_function_tl
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_function_tl]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_function_tl]
GO
CREATE TABLE [dbo].[sys_function_tl] (
  [FUNCTION_ID]           BIGINT         NOT NULL,
  [LANG]                  NVARCHAR(10)   NOT NULL,
  [FUNCTION_NAME]         NVARCHAR(150)  NULL,
  [FUNCTION_DESCRIPTION]  NVARCHAR(240)  NULL,
  [OBJECT_VERSION_NUMBER] DECIMAL(20, 0) NULL,
  [REQUEST_ID]            BIGINT         NULL,
  [PROGRAM_ID]            BIGINT         NULL,
  [CREATION_DATE]         DATETIME   NULL,
  [CREATED_BY]            DECIMAL(20, 0) NULL,
  [LAST_UPDATED_BY]       DECIMAL(20, 0) NULL,
  [LAST_UPDATE_DATE]      DATETIME   NULL,
  [LAST_UPDATE_LOGIN]     DECIMAL(20, 0) NULL,
  [ATTRIBUTE_CATEGORY]    VARCHAR(30)    NULL,
  [ATTRIBUTE1]            VARCHAR(240)   NULL,
  [ATTRIBUTE2]            VARCHAR(240)   NULL,
  [ATTRIBUTE3]            VARCHAR(240)   NULL,
  [ATTRIBUTE4]            VARCHAR(240)   NULL,
  [ATTRIBUTE5]            VARCHAR(240)   NULL,
  [ATTRIBUTE6]            VARCHAR(240)   NULL,
  [ATTRIBUTE7]            VARCHAR(240)   NULL,
  [ATTRIBUTE8]            VARCHAR(240)   NULL,
  [ATTRIBUTE9]            VARCHAR(240)   NULL,
  [ATTRIBUTE10]           VARCHAR(240)   NULL,
  [ATTRIBUTE11]           VARCHAR(240)   NULL,
  [ATTRIBUTE12]           VARCHAR(240)   NULL,
  [ATTRIBUTE13]           VARCHAR(240)   NULL,
  [ATTRIBUTE14]           VARCHAR(240)   NULL,
  [ATTRIBUTE15]           VARCHAR(240)   NULL
)
ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'功能ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_function_tl', 'COLUMN',
                            'FUNCTION_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_function_tl
-- ----------------------------
ALTER TABLE [dbo].[sys_function_tl]
  ADD
  CONSTRAINT [SYS_FUNCTION_TL_PK] PRIMARY KEY CLUSTERED ([FUNCTION_ID], [LANG])
GO




