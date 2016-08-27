package com.hand.hap.order.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.hand.hap.core.IRequest;
import com.hand.hap.order.dto.OrderLineResult;
import com.hand.hap.order.mapper.OrderLineResultMapper;
import com.hand.hap.order.service.IOrderLineResultService;
import com.hand.hap.system.service.impl.BaseServiceImpl;
@Service
public class OrderLineResultServiceImpl extends BaseServiceImpl<OrderLineResult> implements IOrderLineResultService {
  @Autowired
	private OrderLineResultMapper orderLineHeadersMapper;
	@Override
	public List<OrderLineResult> selectByOrderHeader(IRequest requestContext, OrderLineResult OrderLineResult, int page,
			int pagesize) {
		PageHelper.startPage(page, pagesize);
		return orderLineHeadersMapper.selectByOrderHeader(OrderLineResult);
	}

}
