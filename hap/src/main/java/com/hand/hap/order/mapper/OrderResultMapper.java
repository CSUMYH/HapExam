package com.hand.hap.order.mapper;

	import java.util.List;

import com.hand.hap.mybatis.common.Mapper;
import com.hand.hap.order.dto.OrderHeaders;
import com.hand.hap.order.dto.OrderResult;

	/**
	 * @author taotao.xu@hand-china.com
	 */
	public interface OrderResultMapper extends Mapper<OrderResult> {

	    List<OrderResult> selectByOrderResult(OrderResult orderHeaders);

		void insertFruit(OrderResult fruit);
	   
	    	
	}

