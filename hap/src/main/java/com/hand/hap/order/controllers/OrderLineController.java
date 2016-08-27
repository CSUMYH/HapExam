package com.hand.hap.order.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
import com.hand.hap.order.dto.OrderLineResult;
import com.hand.hap.order.dto.OrderResult;
import com.hand.hap.order.service.IOrderLineResultService;
import com.hand.hap.system.controllers.BaseController;
import com.hand.hap.system.dto.ResponseData;

@Controller
public class OrderLineController extends BaseController{
	

    @Autowired
    private IOrderLineResultService OrderLineHeadersService;
	
	  @RequestMapping(value = "/ass/order/line")
	    @ResponseBody
	    public ResponseData getTasksLine(OrderLineResult OrderLineResult, @RequestParam(defaultValue = DEFAULT_PAGE) int page,
	            @RequestParam(defaultValue = DEFAULT_PAGE_SIZE) int pagesize, HttpServletRequest request) {
	        IRequest requestContext = createRequestContext(request);
	        System.out.println(OrderLineHeadersService.selectByOrderHeader(requestContext, OrderLineResult, page, pagesize).get(0).getItemDescription());
	        return new ResponseData(OrderLineHeadersService.selectByOrderHeader(requestContext, OrderLineResult, page, pagesize));
	    }
	  
	  @RequestMapping(value = "/ass/order/submitline", method = RequestMethod.POST)
	    @ResponseBody
	    public ResponseData submitUsers(@RequestBody List<OrderLineResult> OrderLineResult, BindingResult result, HttpServletRequest request)
	            throws BaseException {
	        getValidator().validate(OrderLineResult, result);
	        if (result.hasErrors()) {
	            ResponseData rd = new ResponseData(false);
	            rd.setMessage(getErrorMessage(result, request));
	            return rd;
	        } else {
	            IRequest requestCtx = createRequestContext(request);
	            System.out.println(OrderLineResult.get(0).getOrderQuantityUom());
	            OrderLineHeadersService.batchUpdate(requestCtx, OrderLineResult);
	            return new ResponseData(OrderLineResult);
	        }
	    }
}
