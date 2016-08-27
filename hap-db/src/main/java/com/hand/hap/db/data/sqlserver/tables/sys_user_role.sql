/*


 Date: 06/12/2016 21:56:14 PM
*/

-- ----------------------------
--  Table structure for sys_user_role
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_user_role]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_user_role]
GO
CREATE TABLE [dbo].[sys_user_role] (
  [SUR_ID]                BIGINT IDENTITY (10001, 1) NOT NULL,
  [USER_ID]               BIGINT                     NULL,
  [ROLE_ID]               BIGINT                     NULL,
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
EXEC sp_addextendedproperty 'MS_Description', N'用户ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_user_role', 'COLUMN', 'USER_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'角色ID', 'SCHEMA', 'dbo', 'TABLE', 'sys_user_role', 'COLUMN', 'ROLE_ID'
GO


-- ----------------------------
--  Primary key structure for table sys_user_role
-- ----------------------------
ALTER TABLE [dbo].[sys_user_role]
  ADD
  CONSTRAINT [SYS_USER_ROLE_PK] PRIMARY KEY CLUSTERED ([SUR_ID])
GO



-- ----------------------------
--  Indexes structure for table sys_user_role
-- ----------------------------
CREATE UNIQUE INDEX [SYS_USER_ROLE_U1]
ON [dbo].[sys_user_role] ([USER_ID] ASC, [ROLE_ID] ASC)
GO


