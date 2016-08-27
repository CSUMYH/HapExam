/*


 Date: 06/12/2016 21:52:52 PM
*/

-- ----------------------------
--  Table structure for sys_code_b
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_code_b]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_code_b]
GO
CREATE TABLE [dbo].[sys_code_b] (
  [CODE_ID]               BIGINT IDENTITY (10001, 1) NOT NULL,
  [CODE]                  NVARCHAR(30)               NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_code_b', 'COLUMN',
                            'CODE_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_code_b
-- ----------------------------
ALTER TABLE [dbo].[sys_code_b]
  ADD
  CONSTRAINT [SYS_CODE_B_PK] PRIMARY KEY CLUSTERED ([CODE_ID])
GO


-- ----------------------------
--  Indexes structure for table sys_code_b
-- ----------------------------
CREATE UNIQUE INDEX [SYS_CODE_B_U1]
ON [dbo].[sys_code_b] ([CODE] ASC)
GO


/*


 Date: 06/12/2016 21:52:59 PM
*/

-- ----------------------------
--  Table structure for sys_code_tl
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_code_tl]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_code_tl]
GO
CREATE TABLE [dbo].[sys_code_tl] (
  [CODE_ID]               BIGINT         NOT NULL,
  [LANG]                  NVARCHAR(10)   NOT NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_code_tl', 'COLUMN',
                            'CODE_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_code_tl
-- ----------------------------
ALTER TABLE [dbo].[sys_code_tl]
  ADD
  CONSTRAINT [SYS_CODE_TL_PK] PRIMARY KEY CLUSTERED ([CODE_ID], [LANG])
GO






