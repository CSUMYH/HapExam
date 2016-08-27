/*


 Date: 06/12/2016 21:53:49 PM
*/

-- ----------------------------
--  Table structure for sys_lang_b
-- ----------------------------
IF EXISTS(SELECT *
          FROM sys.all_objects
          WHERE object_id = OBJECT_ID('[dbo].[sys_lang_b]') AND type IN ('U'))
  DROP TABLE [dbo].[sys_lang_b]
GO
CREATE TABLE [dbo].[sys_lang_b] (
  [LANG_CODE]             NVARCHAR(10)   NOT NULL,
  [BASE_LANG]             NVARCHAR(10)   NULL,
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


-- ----------------------------
--  Primary key structure for table sys_lang_b
-- ----------------------------
ALTER TABLE [dbo].[sys_lang_b]
  ADD
  CONSTRAINT [SYS_LANG_B_PK] PRIMARY KEY CLUSTERED ([LANG_CODE])
GO



