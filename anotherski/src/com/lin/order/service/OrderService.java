package com.lin.order.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lin.entity.Order;
import com.lin.order.dao.OrderDao;

@Service
public class OrderService {
	@Resource
    public OrderDao orderDao;

	public OrderDao getOrderDao() {
		return orderDao;
	}

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}
    public void addOne(String address,Order order){
    	orderDao.addOneOrder(address, order);
    }
}
