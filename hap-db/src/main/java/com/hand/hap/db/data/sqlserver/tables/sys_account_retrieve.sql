/*


 Date: 06/12/2016 21:52:21 PM
*/

-- ----------------------------
--  Table structure for sys_account_retrieve
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_account_retrieve]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_account_retrieve]
GO
CREATE TABLE [dbo].[sys_account_retrieve] (
  [ACCOUNT_ID]            BIGINT         NULL,
  [RETRIEVE_TYPE]         NVARCHAR(30)   NULL,
  [RETRIEVE_DATE]         DATETIME   NULL,
  [OBJECT_VERSION_NUMBER] DECIMAL(20,0) NULL,
  [REQUEST_ID]            BIGINT         NULL,
  [PROGRAM_ID]            BIGINT         NULL,
  [CREATION_DATE]         DATETIME   NULL,
  [CREATED_BY]            DECIMAL(20,0) NULL,
  [LAST_UPDATED_BY]       DECIMAL(20,0) NULL,
  [LAST_UPDATE_DATE]      DATETIME   NULL,
  [LAST_UPDATE_LOGIN]     DECIMAL(20,0) NULL
)
ON [PRIMARY]
GO
EXEC sp_addextendedproperty 'MS_Description', N'其他表做外键', 'SCHEMA', 'dbo', 'TABLE', 'sys_account_retrieve', 'COLUMN',
                            'ACCOUNT_ID'
GO
EXEC sp_addextendedproperty 'MS_Description', N'时间', 'SCHEMA', 'dbo', 'TABLE', 'sys_account_retrieve', 'COLUMN',
                            'RETRIEVE_DATE'
GO

