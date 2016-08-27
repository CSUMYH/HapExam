package com.hand.hap.db

import com.hand.hap.liquibase.MigrationHelper
dbType = MigrationHelper.getInstance().dbType()
databaseChangeLog(logicalFilePath:"2016-06-09-init-table-migration.groovy"){

    changeSet(author: "hailor", id: "20160609-hailor-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/quartz_2.2.3.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-2") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_code.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-3") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_code_value.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-4") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_function.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-5") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_function_resource.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-6") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_job_running_info.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-7") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_lang.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-8") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_lov.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-9") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_lov_item.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-10") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_message.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-11") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_message_account.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-12") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_profile.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-13") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_profile_value.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-14") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_prompts.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-15") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_resource.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-16") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_resource_item.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-17") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_role.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-18") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_role_function.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-19") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_role_resource_item.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-20") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_user.sql"), encoding: "UTF-8")
    }

    changeSet(author: "hailor", id: "20160609-hailor-21") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_user_role.sql"), encoding: "UTF-8")
    }

    changeSet(author: "jessen", id: "20160610-sys-attach-category-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_attach_category.sql"), encoding: "UTF-8")
    }

    changeSet(author: "jessen", id: "20160610-sys-attachment-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_attachment.sql"), encoding: "UTF-8")
    }

    changeSet(author: "jessen", id: "20160610-sys-file-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_file.sql"), encoding: "UTF-8")
    }

    changeSet(author: "jessen", id: "20160611-sys-message-transaction-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_message_transaction.sql"), encoding: "UTF-8")
    }

    changeSet(author: "jessen", id: "20160611-sys-message-attachment-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_message_attachment.sql"), encoding: "UTF-8")
    }

    changeSet(author: "jessen", id: "20160611-sys-message-email-account-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_message_email_account.sql"), encoding: "UTF-8")
    }

    changeSet(author: "jessen", id: "20160611-sys-message-email-config-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_message_email_config.sql"), encoding: "UTF-8")
    }

    changeSet(author: "jessen", id: "20160613-sys-message-email-white-lt-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_message_email_white_lt.sql"), encoding: "UTF-8")
    }

    changeSet(author: "jessen", id: "20160613-sys-message-receiver-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_message_receiver.sql"), encoding: "UTF-8")
    }

    changeSet(author: "jessen", id: "20160613-sys-message-template-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_message_template.sql"), encoding: "UTF-8")
    }

    changeSet(author: "jessen", id: "20160613-sys-preferences-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_preferences.sql"), encoding: "UTF-8")
    }

    changeSet(author: "jessen", id: "20160613-sys-account-retrieve-1") {
        sqlFile(path: MigrationHelper.getInstance().dataPath("com/hand/hap/db/data/"+dbType+"/tables/sys_account_retrieve.sql"), encoding: "UTF-8")
    }

}
