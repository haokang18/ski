package com.lin.order.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lin.cart.service.Cart;
import com.lin.entity.CartItem;
import com.lin.entity.Order;
import com.lin.entity.User;
import com.lin.order.service.OrderService;
import com.mysql.fabric.xmlrpc.base.Array;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Resource
    public OrderService  orderService;
	public OrderService getOrderService() {
	return orderService;
    }
    public void setOrderService(OrderService orderService) {
	this.orderService = orderService;
    }
/*
* 预览订单
*/
@RequestMapping(value="/add",method=RequestMethod.GET)
  public String addOrder(HttpSession session,Cart c,User u){ 
	  List list = new ArrayList();
	  u = (User)session.getAttribute("u");
	  c = (Cart)session.getAttribute("cart");
	  if(c.getContainer().size()==0){
			JOptionPane.showMessageDialog(null, "您的购物车为空，不能生成订单!");
			return "checkout1";
		}else{
	  Iterator i = c.container.values().iterator();
	  while(i.hasNext()){
		  CartItem ci = (CartItem)i.next();
		  list.add(ci);
	  }
	  session.setAttribute("list1", list);
	  return "orders";
	  }
  }
/*
 * 删除商品订单
 */
@RequestMapping(value = "/delAll",method=RequestMethod.GET)
  public String delOne(HttpSession session,User u,Cart c){
	  u = (User)session.getAttribute("u");
	  c = (Cart)session.getAttribute("cart");
	  List list1 =(List) session.getAttribute("list1");

		list1.remove(list1);
	
			  JOptionPane.showMessageDialog(null, "您的订单已取消，是否返回商城继续添加商品？");
			  return "checkout";
			
	}
/*
 * 提交订单
 */
@RequestMapping(value="/commitOrder",method=RequestMethod.GET)
 public String commitOrder(HttpSession session1,User u,Cart c){
	 u = (User)session1.getAttribute("u");    
	 c = (Cart)session1.getAttribute("cart");
	 String address = u.getAddress();
	 Iterator i = c.container.values().iterator();
	  while(i.hasNext()){
		  CartItem ci = (CartItem)i.next();
		  Order order = new Order();  //循环之中new？？？？？？？？？？
		  order.setProductName(ci.getProduct().getProductName());
		  order.setPrice(ci.getProduct().getPrice());
		  order.setCount(ci.getCount());
		  orderService.addOne(address, order);
	  }
	 return "final";
 }

  }


