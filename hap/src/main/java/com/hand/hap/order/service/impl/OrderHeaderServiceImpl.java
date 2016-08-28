package com.hand.hap.order.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.hand.hap.core.IRequest;
import com.hand.hap.order.dto.OrderResult;
import com.hand.hap.order.mapper.OrderResultMapper;
import com.hand.hap.order.service.IOrderHeadersService;
import com.hand.hap.system.service.impl.BaseServiceImpl;
@Service
public class OrderHeaderServiceImpl extends BaseServiceImpl<OrderResult> implements IOrderHeadersService {
	  @Autowired
	    private OrderResultMapper orderHeadersMapper;
	    

	    
	    @Override
		public List<OrderResult> selectByOrderResult(IRequest requestContext, OrderResult orderHeaders, int page,
				int pagesize) {
			PageHelper.startPage(page, pagesize);
			return orderHeadersMapper.selectByOrderResult(orderHeaders);
		}

		
	


}
