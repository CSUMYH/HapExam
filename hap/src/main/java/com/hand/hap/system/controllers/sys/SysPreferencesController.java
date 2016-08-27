/*
 * #{copyright}#
 */
package com.hand.hap.system.controllers.sys;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.hand.hap.system.controllers.BaseController;
import com.hand.hap.system.dto.ResponseData;
import com.hand.hap.system.dto.SysPreferences;
import com.hand.hap.system.service.ISysPreferencesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 系统首选项Controller.
 * 
 * @author zhangYang
 *
 */
@Controller
public class SysPreferencesController extends BaseController {

    @Autowired
    private ISysPreferencesService sysPreferencesService;

    /**
     * 系统首选项保存
     * 
     * @param request
     *            统一上下文
     * @param sysPreferences
     *            系统首选项信息集合
     * @return ResponseData 返回保存首选项集合，保存错误返回false
     * 
     */
    @RequestMapping(value = "/sys/preferences/savePreferences")
    @ResponseBody
    public ResponseData savePreferences(final HttpServletRequest request,
                                        @RequestBody List<SysPreferences> sysPreferences, BindingResult result) {
        if (result.hasErrors()) {
            ResponseData rd = new ResponseData(false);
            rd.setMessage(getErrorMessage(result, request));
            return rd;
        } else {
            List<SysPreferences> lists = sysPreferencesService.saveSysPreferences(createRequestContext(request),
                    sysPreferences);
            return new ResponseData(lists);
        }

    }

    /**
     * 查询当前用户首选项集合
     * 
     * @param request
     * @param sysPreferences
     *            根据SysPreferences.accountId;SysPreferences.preferencesLevel查询条件
     *            查询当前首选项
     * @return responseData 响应数据
     */
    @RequestMapping(value = "/sys/preferences/queryPreferences")
    @ResponseBody
    public ResponseData queryPreferences(final HttpServletRequest request, @RequestBody SysPreferences sysPreferences) {
        List<SysPreferences> lists = sysPreferencesService.querySysPreferences(createRequestContext(request),
                sysPreferences);
        return new ResponseData(lists);
    }
}
