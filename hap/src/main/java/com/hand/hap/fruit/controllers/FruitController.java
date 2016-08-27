/*
 * #{copyright}#
 */

package com.hand.hap.fruit.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.quartz.SchedulerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hand.hap.core.IRequest;
import com.hand.hap.core.exception.BaseException;
import com.hand.hap.fruit.dto.Fruit;
import com.hand.hap.fruit.service.IFruitService;
import com.hand.hap.job.dto.JobDetailDto;
import com.hand.hap.mail.dto.MessageEmailAccount;
import com.hand.hap.mail.dto.MessageTemplate;
import com.hand.hap.system.controllers.BaseController;
import com.hand.hap.system.dto.ResponseData;

/**
 * 水果控制器.
 * 
 * @author taotao.xu@hand-china.com
 */
@Controller
public class FruitController extends BaseController {

    @Autowired
    private IFruitService fruitService;
    
    /**
     * 任务分配查询.
     * 
     * @param fruit
     *            分配对象
     * @param page
     *            起始页
     * @param pagesize
     *            分页大小
     * @param request
     *            HttpServletRequest
     * @return ResponseData
     */
    @RequestMapping(value = "/ass/fruit/query")
    @ResponseBody
    public ResponseData getTasks(Fruit fruit, @RequestParam(defaultValue = DEFAULT_PAGE) int page,
            @RequestParam(defaultValue = DEFAULT_PAGE_SIZE) int pagesize, HttpServletRequest request) {
        IRequest requestContext = createRequestContext(request);
        return new ResponseData(fruitService.selectByFruit(requestContext, fruit, page, pagesize));
    }
    
    /**
     * 保存水果.
     * 
     * @param fruits
     *            fruits
     * @param result
     *            BindingResult
     * @param request
     *            HttpServletRequest
     * @return ResponseData ResponseData
     * @throws BaseException
     *             BaseException
     */
    @RequestMapping(value = "/ass/fruit/submit", method = RequestMethod.POST)
    @ResponseBody
    public ResponseData submitFruit(@RequestBody List<Fruit> fruits, BindingResult result, HttpServletRequest request)
            throws BaseException {
        getValidator().validate(fruits, result);
        if (result.hasErrors()) {
            ResponseData rd = new ResponseData(false);
            rd.setMessage(getErrorMessage(result, request));
            return rd;
        }
        System.out.println("-----------------------------123-----------------------------");
        IRequest requestContext = createRequestContext(request);
        return new ResponseData(fruitService.batchUpdate(requestContext, fruits));
    }
    
    
    @RequestMapping(value = "/ass/fruit/delete", method = RequestMethod.POST)
    @ResponseBody
    public ResponseData deleteFruit(@RequestBody List<Fruit> fruit,final BindingResult result,final HttpServletRequest request) throws SchedulerException {
        IRequest requestContext = createRequestContext(request);
        fruitService.batchDelete(requestContext, fruit);
        return new ResponseData();
    }
    
    
    @ResponseBody
    @RequestMapping(value="/ass/fruit/update")
    public ResponseData updateFruit(HttpServletRequest request, @RequestBody Fruit obj, BindingResult result) throws BaseException {
        //没意义的值
        obj.setObjectVersionNumber(0L);
        
        getValidator().validate(obj, result);
        if (result.hasErrors()) {
            ResponseData responseData = new ResponseData(false);
            responseData.setMessage(getErrorMessage(result, request));
            return responseData;
        }
        IRequest requestContext = createRequestContext(request);
        fruitService.updateFruit(requestContext, obj);
        return new ResponseData();
    }
}
