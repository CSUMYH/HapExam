/*


 Date: 06/12/2016 21:55:24 PM
*/

-- ----------------------------
--  Table structure for sys_resource_b
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_resource_b]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_resource_b]
GO
CREATE TABLE [dbo].[sys_resource_b] (
  [RESOURCE_ID]           BIGINT IDENTITY (10001, 1) NOT NULL,
  [URL]                   NVARCHAR(255)              NULL,
  [TYPE]                  NVARCHAR(15)               NULL,
  [NAME]                  NVARCHAR(40)               NULL,
  [DESCRIPTION]           NVARCHAR(240)              NULL,
  [LOGIN_REQUIRE]         NVARCHAR(1)                NULL,
  [ACCESS_CHECK]          NVARCHAR(1)                NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_resource_b', 'COLUMN',
                            'RESOURCE_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_resource_b
-- ----------------------------
ALTER TABLE [dbo].[sys_resource_b]
  ADD
  CONSTRAINT [SYS_RESOURCE_B_PK] PRIMARY KEY CLUSTERED ([RESOURCE_ID])
GO



-- ----------------------------
--  Indexes structure for table sys_resource_b
-- ----------------------------
CREATE UNIQUE INDEX [SYS_RESOURCE_B_U1]
ON [dbo].[sys_resource_b] ([URL] ASC)
GO


-- ----------------------------
--  Table structure for sys_resource_tl
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_resource_tl]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_resource_tl]
GO
CREATE TABLE [dbo].[sys_resource_tl] (
  [RESOURCE_ID]           BIGINT         NOT NULL,
  [LANG]                  NVARCHAR(10)   NOT NULL,
  [NAME]                  NVARCHAR(40)   NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键，供其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_resource_tl', 'COLUMN',
                            'RESOURCE_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_resource_tl
-- ----------------------------
ALTER TABLE [dbo].[sys_resource_tl]
  ADD
  CONSTRAINT [SYS_RESOURCE_TL_PK] PRIMARY KEY CLUSTERED ([RESOURCE_ID], [LANG])
GO






