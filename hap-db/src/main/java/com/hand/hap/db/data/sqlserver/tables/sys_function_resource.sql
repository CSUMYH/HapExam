/*


 Date: 06/12/2016 21:53:30 PM
*/

-- ----------------------------
--  Table structure for sys_function_resource
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_function_resource]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_function_resource]
GO
CREATE TABLE [dbo].[sys_function_resource] (
  [FUNC_SRC_ID]           BIGINT IDENTITY (10001, 1) NOT NULL,
  [FUNCTION_ID]           BIGINT                     NULL,
  [RESOURCE_ID]           BIGINT                     NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_function_resource',
                            'COLUMN', 'FUNC_SRC_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'外键，功能 ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_function_resource', 'COLUMN',
                            'FUNCTION_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'外键，资源 ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_function_resource', 'COLUMN',
                            'REQUEST_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_function_resource
-- ----------------------------
ALTER TABLE [dbo].[sys_function_resource]
  ADD
  CONSTRAINT [SYS_FUNCTION_RESOURCE_PK] PRIMARY KEY CLUSTERED ([FUNC_SRC_ID])
GO


-- ----------------------------
--  Indexes structure for table sys_function_resource
-- ----------------------------
CREATE UNIQUE INDEX [SYS_FUNCTION_RESOURCE_U1]
ON [dbo].[sys_function_resource] ([FUNCTION_ID] ASC, [RESOURCE_ID] ASC)
GO

