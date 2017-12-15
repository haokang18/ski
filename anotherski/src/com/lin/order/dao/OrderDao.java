package com.lin.order.dao;

import java.util.Iterator;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.lin.cart.service.Cart;
import com.lin.entity.CartItem;
import com.lin.entity.Order;
import com.lin.entity.User;

@Repository
public class OrderDao {
@Resource
public SessionFactory sessionFactory;

public SessionFactory getSessionFactory() {
	return sessionFactory;
}

public void setSessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}
  public void addOneOrder(String address,Order order){
	  Session session = sessionFactory.openSession();
	  Transaction tran = session.beginTransaction();
	 
	  
	  User u1 = session.get(User.class,address);
	  u1.getOrderSet().add(order);
	  order.setUser(u1);
	  session.save(order);
	  
	  tran.commit();
	  session.close();
  }
}
