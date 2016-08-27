package com.hand.hap.order.service;

import java.util.List;

import com.hand.hap.core.IRequest;
import com.hand.hap.core.ProxySelf;
import com.hand.hap.order.dto.OrderHeaders;
import com.hand.hap.order.dto.OrderLineResult;
import com.hand.hap.system.service.IBaseService;

public interface IOrderLineResultService extends IBaseService<OrderLineResult>,  ProxySelf<IOrderLineResultService> {
	 
	List<OrderLineResult> selectByOrderHeader(IRequest requestContext, OrderLineResult OrderLineResult, int page, int pagesize);
}
