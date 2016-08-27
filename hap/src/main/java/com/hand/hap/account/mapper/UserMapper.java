/*
 * #{copyright}#
 */

package com.hand.hap.account.mapper;

import java.util.List;

import com.hand.hap.account.dto.User;
import com.hand.hap.mybatis.common.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.security.access.method.P;

/**
 * @author wuyichu
 */
public interface UserMapper extends Mapper<User> {

    User selectByUserName(String userName);

    List<User> selectByIdList(List<Long> userIds);

    int updatePassword(@Param("userId") Long userId,@Param("password") String passwordNew);
}