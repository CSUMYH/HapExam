/*
 * #{copyright}#
 */
package com.hand.hap.attachment.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hand.hap.attachment.dto.SysFile;
import com.hand.hap.mybatis.common.Mapper;

/**
 * Created by xiaohua on 16/2/1.
 * 
 * @author hua.xiao@hand-china.com
 */
public interface SysFileMapper extends Mapper<SysFile> {

    /**
     * 根据attachmentId SysFile 参数查找Sysfile列表.
     * 
     * @param attachmentIds
     *            attachmentId列表
     * @param file
     *            SysFile参数
     * @return List SysFile列表
     */
    List<SysFile> selectFilesByAttachIds(@Param("attachmentIds") List<Long> attachmentIds,
            @Param("sysFile") SysFile file);

    /**
     * 根据id列表查找出所属文件对象集合.
     * 
     * @param fileIds
     *            List
     * @return List SysFile对象列表
     */
    List<SysFile> selectFilesByIds(@Param("fileIds") List<String> fileIds);

}
