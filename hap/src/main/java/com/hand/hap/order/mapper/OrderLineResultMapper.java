package com.hand.hap.order.mapper;

	import java.util.List;

import com.hand.hap.mybatis.common.Mapper;
import com.hand.hap.order.dto.OrderHeaders;
import com.hand.hap.order.dto.OrderLineResult;

	/**
	 * @author taotao.xu@hand-china.com
	 */
	public interface OrderLineResultMapper extends Mapper<OrderLineResult> {

	    List<OrderLineResult> selectByOrderHeader(OrderLineResult OrderLineResult);
	   

	}

