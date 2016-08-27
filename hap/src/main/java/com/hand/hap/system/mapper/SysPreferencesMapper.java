/*
 * #{copyright}#
 */
package com.hand.hap.system.mapper;

import java.util.List;

import com.hand.hap.mybatis.common.Mapper;
import com.hand.hap.system.dto.SysPreferences;

/**
 * 系统首选项Mapper.
 * 
 * @author zhangYang
 */
public interface SysPreferencesMapper extends Mapper<SysPreferences> {

    SysPreferences selectPreferLine(SysPreferences record);

    int updatePreferLine(SysPreferences record);
}