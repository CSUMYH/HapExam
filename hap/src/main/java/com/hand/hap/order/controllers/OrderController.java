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
import com.hand.hap.order.dto.OrderResult;
import com.hand.hap.order.service.IOrderHeadersService;
import com.hand.hap.system.controllers.BaseController;
import com.hand.hap.system.dto.ResponseData;

@Controller
public class OrderController extends BaseController{
	

    @Autowired
    private IOrderHeadersService OrderHeadersService;

	  @RequestMapping(value = "/ass/order/query")
	    @ResponseBody
	    public ResponseData getTasks(OrderResult OrderResult, @RequestParam(defaultValue = DEFAULT_PAGE) int page,
	            @RequestParam(defaultValue = DEFAULT_PAGE_SIZE) int pagesize, HttpServletRequest request) {
	        IRequest requestContext = createRequestContext(request);
	        return new ResponseData(OrderHeadersService.selectByOrderResult(requestContext, OrderResult, page, pagesize));
	    }
	  
	  
	  
	  @RequestMapping(value = "/ass/order/submit", method = RequestMethod.POST)
	    @ResponseBody
	    public ResponseData submitUsers(@RequestBody List<OrderResult> OrderResult, BindingResult result, HttpServletRequest request)
	            throws BaseException {
	        getValidator().validate(OrderResult, result);
	        if (result.hasErrors()) {
	            ResponseData rd = new ResponseData(false);
	            rd.setMessage(getErrorMessage(result, request));
	            return rd;
	        } else {
	            IRequest requestCtx = createRequestContext(request);
	            System.out.println(OrderResult.get(0).getOrderNumber());
	            System.out.println(OrderResult.get(0).getOrderDate());
	            System.out.println(OrderResult.get(0).getCustomerName());
	            System.out.println(OrderResult.get(0).getSals());
	            System.out.println(OrderResult.get(0).getOrderStatus());
	            System.out.println(OrderResult.get(0).getCompanyName());
	            OrderHeadersService.batchUpdate(requestCtx, OrderResult);
	            return new ResponseData(OrderResult);
	        }
	    }
	  
	    
}
