/*
 * #{copyright}#
 */
package com.hand.hap.security;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.crypto.password.StandardPasswordEncoder;

/**
 * 
 * @author njq.niu@hand-china.com
 *
 *         2016年1月31日
 */
public class PasswordManager implements PasswordEncoder, InitializingBean {

    private PasswordEncoder delegate;

    private String siteWideSecret = "my-secret-key";

    private String defaultPassword = "111111";

    public String getDefaultPassword() {
        return defaultPassword;
    }

    public void setDefaultPassword(String defaultPassword) {
        this.defaultPassword = defaultPassword;
    }

    public String getSiteWideSecret() {
        return siteWideSecret;
    }

    public void setSiteWideSecret(String siteWideSecret) {
        this.siteWideSecret = siteWideSecret;
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        delegate = new StandardPasswordEncoder(siteWideSecret);
    }

    @Override
    public String encode(CharSequence rawPassword) {
        return delegate.encode(rawPassword);
    }

    @Override
    public boolean matches(CharSequence rawPassword, String encodedPassword) {
        return delegate.matches(rawPassword, encodedPassword);
    }
}
