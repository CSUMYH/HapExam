package com.hand.hap.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;

/**
 * Created by hailor on 16/6/12.
 */
public class CustomAuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

    @Autowired
    private ApplicationContext applicationContext;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
            Authentication authentication) throws IOException, ServletException {
        handle(request, response, authentication);
        clearAuthenticationAttributes(request);
        Map<String, IAuthenticationSuccessListener> listeners = applicationContext
                .getBeansOfType(IAuthenticationSuccessListener.class);
        List<IAuthenticationSuccessListener> list = new ArrayList<>();
        list.addAll(listeners.values());
        Collections.sort(list);
        list.forEach(e->e.onAuthenticationSuccess(request, response, authentication));
    }

}
