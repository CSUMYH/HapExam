package com.hand.hap.order.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.hand.hap.core.IRequest;
import com.hand.hap.fruit.dto.Fruit;
import com.hand.hap.order.dto.OrderHeaders;
import com.hand.hap.order.dto.OrderResult;
import com.hand.hap.order.mapper.OrderResultMapper;
import com.hand.hap.order.service.IOrderHeadersService;
import com.hand.hap.system.dto.DTOStatus;
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

		
		@Override
		@Transactional(propagation = Propagation.SUPPORTS)
	    public List<OrderResult> batchUpdate(IRequest requestContext, List<OrderResult> OrderResult) {
	        // TODO Auto-generated method stub
	        for (OrderResult fruit : OrderResult) {
	            if (fruit.get__status() != null) {
	                switch (fruit.get__status()) {
	                case DTOStatus.ADD:
	                	orderHeadersMapper.insertFruit(fruit);
	                    break;
	                case DTOStatus.UPDATE:
	                    break;
	                case DTOStatus.DELETE:
	                    self().deleteByPrimaryKey(fruit);
	                    break;
	                default:
	                    break;
	                }
	            }
	        }
	        return OrderResult;
	    }
		


}
