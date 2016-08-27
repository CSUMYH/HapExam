/*


 Date: 06/12/2016 21:53:04 PM
*/

-- ----------------------------
--  Table structure for sys_code_value_b
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_code_value_b]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_code_value_b]
GO
CREATE TABLE [dbo].[sys_code_value_b] (
  [CODE_VALUE_ID]         BIGINT IDENTITY (10001, 1) NOT NULL,
  [CODE_ID]               BIGINT                     NULL,
  [VALUE]                 NVARCHAR(150)              NULL,
  [MEANING]               NVARCHAR(150)              NULL,
  [DESCRIPTION]           NVARCHAR(240)              NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_code_value_b', 'COLUMN',
                            'CODE_VALUE_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_code_value_b
-- ----------------------------
ALTER TABLE [dbo].[sys_code_value_b]
  ADD
  CONSTRAINT [SYS_CODE_VALUE_B_PK] PRIMARY KEY CLUSTERED ([CODE_VALUE_ID])
GO


-- ----------------------------
--  Indexes structure for table sys_code_value_b
-- ----------------------------
CREATE UNIQUE INDEX [SYS_CODE_VALUE_B_U1]
ON [dbo].[sys_code_value_b] ([CODE_ID] ASC, [VALUE] ASC)
GO


/*


 Date: 06/12/2016 21:53:13 PM
*/

-- ----------------------------
--  Table structure for sys_code_value_tl
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_code_value_tl]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_code_value_tl]
GO
CREATE TABLE [dbo].[sys_code_value_tl] (
  [CODE_VALUE_ID]         BIGINT         NOT NULL,
  [LANG]                  NVARCHAR(10)   NOT NULL,
  [MEANING]               NVARCHAR(150)  NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_code_value_tl',
                            'COLUMN', 'CODE_VALUE_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_code_value_tl
-- ----------------------------
ALTER TABLE [dbo].[sys_code_value_tl]
  ADD
  CONSTRAINT [SYS_CODE_VALUE_TL_PK] PRIMARY KEY CLUSTERED ([CODE_VALUE_ID], [LANG])
GO



