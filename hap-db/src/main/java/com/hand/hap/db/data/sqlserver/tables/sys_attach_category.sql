/*


 Date: 06/12/2016 21:52:31 PM
*/

-- ----------------------------
--  Table structure for sys_attach_category_b
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_attach_category_b]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_attach_category_b]
GO
CREATE TABLE [dbo].[sys_attach_category_b] (
  [CATEGORY_ID]           BIGINT IDENTITY (10001, 1) NOT NULL,
  [CATEGORY_NAME]         NVARCHAR(40)               NULL,
  [LEAF_FLAG]             NVARCHAR(1)                NULL,
  [DESCRIPTION]           NVARCHAR(240)              NULL,
  [STATUS]                NVARCHAR(1)                NULL,
  [PARENT_CATEGORY_ID]    BIGINT                     NULL,
  [PATH]                  VARCHAR(200)               NULL,
  [SOURCE_TYPE]           NVARCHAR(30)               NULL,
  [ALLOWED_FILE_TYPE]     NVARCHAR(30)               NULL,
  [ALLOWED_FILE_SIZE]     DECIMAL(20,0)             NULL,
  [CATEGORY_PATH]         NVARCHAR(255)              NULL,
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
  [ATTRIBUTE15]           VARCHAR(240)               NULL,
  [IS_UNIQUE]             NVARCHAR(1)                NULL
)
ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'层级路径', 'SCHEMA', 'dbo', 'TABLE', 'sys_attach_category_b', 'COLUMN',
                            'PATH'
GO


-- ----------------------------
--  Primary key structure for table sys_attach_category_b
-- ----------------------------
ALTER TABLE [dbo].[sys_attach_category_b]
  ADD
  CONSTRAINT [sys_attach_category_b_pk] PRIMARY KEY CLUSTERED ([CATEGORY_ID])
GO




/*


 Date: 06/12/2016 21:52:38 PM
*/

-- ----------------------------
--  Table structure for sys_attach_category_tl
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_attach_category_tl]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_attach_category_tl]
GO
CREATE TABLE [dbo].[sys_attach_category_tl] (
  [CATEGORY_ID]           BIGINT         NOT NULL,
  [CATEGORY_NAME]         NVARCHAR(40)   NULL,
  [DESCRIPTION]           NVARCHAR(240)  NULL,
  [LANG]                  NVARCHAR(10)   NOT NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_attach_category_tl',
                            'COLUMN', 'CATEGORY_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'行版本号，用来处理锁', 'SCHEMA', 'dbo', 'TABLE', 'sys_attach_category_tl',
                            'COLUMN', 'OBJECT_VERSION_NUMBER'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部请求id', 'SCHEMA', 'dbo', 'TABLE',
                            'sys_attach_category_tl', 'COLUMN', 'REQUEST_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部程序id', 'SCHEMA', 'dbo', 'TABLE',
                            'sys_attach_category_tl', 'COLUMN', 'PROGRAM_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_attach_category_tl
-- ----------------------------
ALTER TABLE [dbo].[sys_attach_category_tl]
  ADD
  CONSTRAINT [SYS_ATTACH_CATEGORY_TL_PK] PRIMARY KEY CLUSTERED ([CATEGORY_ID], [LANG])

GO


