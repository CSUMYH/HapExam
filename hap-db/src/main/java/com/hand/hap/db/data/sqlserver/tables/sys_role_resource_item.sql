/*


 Date: 06/12/2016 21:55:59 PM
*/

-- ----------------------------
--  Table structure for sys_role_resource_item
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_role_resource_item]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_role_resource_item]
GO
CREATE TABLE [dbo].[sys_role_resource_item] (
  [RSI_ID]                BIGINT IDENTITY (10001, 1) NOT NULL,
  [ROLE_ID]               BIGINT                     NULL,
  [RESOURCE_ITEM_ID]      BIGINT                     NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_role_resource_item',
                            'COLUMN', 'RSI_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'角色ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_role_resource_item', 'COLUMN',
                            'ROLE_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'功能控件ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_role_resource_item', 'COLUMN',
                            'RESOURCE_ITEM_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_role_resource_item
-- ----------------------------
ALTER TABLE [dbo].[sys_role_resource_item]
  ADD
  CONSTRAINT [SYS_ROLE_RESOURCE_ITEM_PK] PRIMARY KEY CLUSTERED ([RSI_ID])
GO



-- ----------------------------
--  Indexes structure for table sys_role_resource_item
-- ----------------------------
CREATE NONCLUSTERED INDEX [SYS_ROLE_RESOURCE_ITEM_N1]
ON [dbo].[sys_role_resource_item] ([ROLE_ID] ASC)
GO

CREATE UNIQUE INDEX [SYS_ROLE_RESOURCE_ITEM_U1]
ON [dbo].[sys_role_resource_item] ([ROLE_ID] ASC, [RESOURCE_ITEM_ID] ASC)
GO



