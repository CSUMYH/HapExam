/*


 Date: 06/12/2016 21:55:30 PM
*/

-- ----------------------------
--  Table structure for sys_resource_item_b
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_resource_item_b]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_resource_item_b]
GO
CREATE TABLE [dbo].[sys_resource_item_b] (
  [RESOURCE_ITEM_ID]      BIGINT IDENTITY (10001, 1) NOT NULL,
  [OWNER_RESOURCE_ID]     BIGINT                     NULL,
  [TARGET_RESOURCE_ID]    BIGINT                     NULL,
  [ITEM_ID]               NVARCHAR(50)               NULL,
  [ITEM_NAME]             NVARCHAR(50)               NULL,
  [DESCRIPTION]           NVARCHAR(240)              NULL,
  [ITEM_TYPE]             NVARCHAR(10)               NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_resource_item_b',
                            'COLUMN', 'RESOURCE_ITEM_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'功能资源ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_resource_item_b', 'COLUMN',
                            'OWNER_RESOURCE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'目标资源ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_resource_item_b', 'COLUMN',
                            'TARGET_RESOURCE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'行版本号，用来处理锁', 'SCHEMA', 'dbo', 'TABLE', 'sys_resource_item_b', 'COLUMN',
                            'OBJECT_VERSION_NUMBER'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部请求id', 'SCHEMA', 'dbo', 'TABLE',
                            'sys_resource_item_b', 'COLUMN', 'REQUEST_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'对Record最后一次操作的系统内部程序id', 'SCHEMA', 'dbo', 'TABLE',
                            'sys_resource_item_b', 'COLUMN', 'PROGRAM_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_resource_item_b
-- ----------------------------
ALTER TABLE [dbo].[sys_resource_item_b]
  ADD
  CONSTRAINT [SYS_RESOURCE_ITEM_B_PK] PRIMARY KEY CLUSTERED ([RESOURCE_ITEM_ID])
GO



-- ----------------------------
--  Indexes structure for table sys_resource_item_b
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_RESOURCE_ITEM_B_N1]
ON [dbo].[sys_resource_item_b] ([OWNER_RESOURCE_ID] ASC)
GO

CREATE UNIQUE INDEX [SYS_RESOURCE_ITEM_B_U1]
ON [dbo].[sys_resource_item_b] ([ITEM_ID] ASC, [OWNER_RESOURCE_ID] ASC)
GO


-- ----------------------------
--  Table structure for sys_resource_item_tl
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_resource_item_tl]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_resource_item_tl]
GO
CREATE TABLE [dbo].[sys_resource_item_tl] (
  [RESOURCE_ITEM_ID]      BIGINT         NOT NULL,
  [LANG]                  NVARCHAR(10)   NOT NULL,
  [ITEM_NAME]             NVARCHAR(150)  NULL,
  [DESCRIPTION]           NVARCHAR(240)  NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_resource_item_tl',
                            'COLUMN', 'RESOURCE_ITEM_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_resource_item_tl
-- ----------------------------
ALTER TABLE [dbo].[sys_resource_item_tl]
  ADD
  CONSTRAINT [SYS_RESOURCE_ITEM_TL_PK] PRIMARY KEY CLUSTERED ([RESOURCE_ITEM_ID], [LANG])
GO




