/*


 Date: 06/12/2016 21:53:55 PM
*/

-- ----------------------------
--  Table structure for sys_lov
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_lov]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_lov]
GO
CREATE TABLE [dbo].[sys_lov] (
  [LOV_ID]                BIGINT IDENTITY (10001, 1) NOT NULL,
  [CODE]                  NVARCHAR(80)               NULL,
  [DESCRIPTION]           NVARCHAR(240)              NULL,
  [SQL_ID]                NVARCHAR(255)              NULL,
  [VALUE_FIELD]           NVARCHAR(80)               NULL,
  [TEXT_FIELD]            NVARCHAR(80)               NULL,
  [TITLE]                 NVARCHAR(255)              NULL,
  [WIDTH]                 DECIMAL(20, 0)             NULL,
  [HEIGHT]                DECIMAL(20, 0)             NULL,
  [PLACEHOLDER]           NVARCHAR(80)               NULL,
  [DELAY_LOAD]            NVARCHAR(1)                NULL,
  [NEED_QUERY_PARAM]      NVARCHAR(1)                NULL,
  [EDITABLE]              NVARCHAR(1)                NULL,
  [CAN_POPUP]             NVARCHAR(1)                NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'表ID，主键', 'SCHEMA', 'dbo', 'TABLE', 'sys_lov', 'COLUMN', 'LOV_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'宽度', 'SCHEMA', 'dbo', 'TABLE', 'sys_lov', 'COLUMN', 'WIDTH'
GO
EXEC sp_addextendedproperty 'MS_Description', N'高度', 'SCHEMA', 'dbo', 'TABLE', 'sys_lov', 'COLUMN', 'HEIGHT'
GO


-- ----------------------------
--  Primary key structure for table sys_lov
-- ----------------------------
ALTER TABLE [dbo].[sys_lov]
  ADD
  CONSTRAINT [SYS_LOV_PK] PRIMARY KEY CLUSTERED ([LOV_ID])
GO

-- ----------------------------
--  Indexes structure for table sys_lov
-- ----------------------------
CREATE UNIQUE INDEX [SYS_LOV_U1]
ON [dbo].[sys_lov] ([CODE] ASC)
GO




