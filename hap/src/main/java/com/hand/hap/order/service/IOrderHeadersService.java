package com.hand.hap.order.service;



import java.util.List;

import com.hand.hap.core.IRequest;
import com.hand.hap.core.ProxySelf;
import com.hand.hap.core.annotation.StdWho;
import com.hand.hap.fruit.dto.Fruit;
import com.hand.hap.order.dto.OrderResult;
import com.hand.hap.system.service.IBaseService;


/**
 * Created by hailor on 16/6/2.
 */
public interface IOrderHeadersService extends IBaseService<OrderResult>,  ProxySelf<IOrderHeadersService> {
	
	 List<OrderResult> selectByOrderResult(IRequest requestContext, OrderResult orderResult, int page, int pagesize);
	
	 List<OrderResult> batchUpdate(IRequest requestContext, @StdWho List<OrderResult> orderResult);
}
