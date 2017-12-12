package com.lin.cart.service;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.Entity;

import com.lin.entity.CartItem;
import com.lin.entity.Product;

public class Cart {
   public Map<Integer,CartItem> container= new HashMap<Integer,CartItem>();
   public Map<Integer, CartItem> getContainer() {
	return container;
}

   public void setContainer(Map<Integer, CartItem> container) {
	this.container = container;
}
  /*
   * 添加商品到购物车
   */

   public void addPro(Product product){
	   if(container.containsKey(product.getId())){
		   CartItem ci = container.get(product.getId());
		   ci.setCount(ci.getCount()+1);
	   }else{
		   CartItem ci = new CartItem();
		   ci.setProduct(product);
		   ci.setCount(1);
		   container.put(product.getId(), ci);
	   }
   }
}
