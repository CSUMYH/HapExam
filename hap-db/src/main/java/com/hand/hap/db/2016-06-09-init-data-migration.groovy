package com.hand.hap.db

import com.hand.hap.liquibase.MigrationHelper
dbType = MigrationHelper.getInstance().dbType()
databaseChangeLog(logicalFilePath:"2016-06-09-init-data-migration.groovy"){

    changeSet(author: "hailor", id: "20160609-hailor-data-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_code.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-data-2") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_code_value.sql"), encoding: "UTF-8")
    }
    changeSet(author: "hailor", id: "20160609-hailor-data-3") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_function.sql"), encoding: "UTF-8")
    }
    changeSet(author: "hailor", id: "20160609-hailor-data-4") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_function_resource.sql"), encoding: "UTF-8")
    }
    changeSet(author: "hailor", id: "20160609-hailor-data-6") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_lang.sql"), encoding: "UTF-8")
    }
    changeSet(author: "hailor", id: "20160609-hailor-data-7") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_lov.sql"), encoding: "UTF-8")
    }
    changeSet(author: "hailor", id: "20160609-hailor-data-8") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_lov_item.sql"), encoding: "UTF-8")
    }
    changeSet(author: "hailor", id: "20160609-hailor-data-9") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_profile.sql"), encoding: "UTF-8")
    }
    changeSet(author: "hailor", id: "20160609-hailor-data-10") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_profile_value.sql"), encoding: "UTF-8")
    }
    changeSet(author: "hailor", id: "20160609-hailor-data-11") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_prompts.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-data-12") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_resource.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-data-13") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_resource_item.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-data-14") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_role.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-data-15") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_role_function.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-data-16") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_role_resource_item.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-data-17") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_user.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-data-18") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_user_role.sql"), encoding: "UTF-8")
    }

    changeSet(author: "jessen", id: "20160613-data-sys-attach-category-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_attach_category.sql"), encoding: "UTF-8")
    }

    changeSet(author: "jessen", id: "20160613-data-sys-message-email-config-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_message_email_config.sql"), encoding: "UTF-8")
    }

    changeSet(author: "jessen", id: "20160613-data-sys-message-email-account-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_message_email_account.sql"), encoding: "UTF-8")
    }

    changeSet(author: "jessen", id: "20160613-data-sys-message-email-white-lt-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_message_email_white_lt.sql"), encoding: "UTF-8")
    }

    changeSet(author: "jessen", id: "20160613-data-sys-message-template-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_message_template.sql"), encoding: "UTF-8")
    }

    changeSet(author: "jessen", id: "20160613-data-sys-preferences-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/init/sys_preferences.sql"), encoding: "UTF-8")
    }

}
