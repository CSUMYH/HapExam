package com.hand.hap.security.service.impl;

import java.util.Locale;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.hand.hap.account.dto.User;
import com.hand.hap.account.service.IUserService;
import com.hand.hap.core.BaseConstants;
import com.hand.hap.core.IRequest;
import com.hand.hap.core.impl.RequestHelper;
import com.hand.hap.core.util.TimeZoneUtil;
import com.hand.hap.security.CustomUserDetails;
import com.hand.hap.security.IAuthenticationSuccessListener;
import com.hand.hap.security.TokenUtils;
import com.hand.hap.system.dto.SysPreferences;
import com.hand.hap.system.service.ISysPreferencesService;

/**
 * @author shengyang.zhou@hand-china.com
 */
@Component
public class DefaultAuthenticationSuccessListener implements IAuthenticationSuccessListener {
    @Autowired
    IUserService userService;

    @Autowired
    ISysPreferencesService preferencesService;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
            Authentication authentication) {

        Locale locale = RequestContextUtils.getLocale(request);
        CustomUserDetails userDetails = (CustomUserDetails) SecurityContextHolder.getContext().getAuthentication()
                .getPrincipal();
        User user = userService.selectByUserName(userDetails.getUsername());
        HttpSession session = request.getSession(true);
        session.setAttribute(User.FIELD_USER_ID, user.getUserId());
        session.setAttribute(User.FIELD_USER_NAME, user.getUserName());
        session.setAttribute(IRequest.FIELD_LOCALE, locale.toString());
        setTimeZoneFromPreference(session, user.getUserId());
        generateSecurityKey(session);

    }

    private void setTimeZoneFromPreference(HttpSession session, Long accountId) {
        SysPreferences para = new SysPreferences();
        para.setUserId(accountId);
        para.setPreferencesLevel(10L);
        para.setPreferences(BaseConstants.TIME_ZONE);
        SysPreferences pref = preferencesService.querySysPreferencesLine(RequestHelper.newEmptyRequest(), para);
        String tz = pref == null ? null : pref.getPreferencesValue();
        // String tz = "GMT+0800";
        if (StringUtils.isBlank(tz)) {
            tz = TimeZoneUtil.toGMTFormat(TimeZone.getDefault());
        }
        session.setAttribute(BaseConstants.TIME_ZONE, tz);
    }

    private String generateSecurityKey(HttpSession session) {
        return TokenUtils.setSecurityKey(session);
    }

    @Override
    public int getOrder() {
        return 0;
    }
}
