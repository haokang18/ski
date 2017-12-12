package com.lin.cart.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lin.cart.service.Cart;
import com.lin.entity.Product;
import com.lin.entity.User;
import com.lin.product.service.ProductService;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Resource
	public ProductService productService;

	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String addcart(@RequestParam("productId")int productId,HttpSession session,Cart c){
		User u = (User)session.getAttribute("u");
		if(u!=null){
			Product p = productService.getById(productId);
			c = (Cart)session.getAttribute("cart");
			if(c==null){
				c = new Cart();//判断是否有购物车， 如果没有  new出来。
			}
			c.addPro(p);
			session.setAttribute("cart", c);
			return "shop";
		}else{
			JOptionPane.showMessageDialog(null, "您还没有登录!");
			return "login";
		}
	}
	/*
	 * 购物车中该商品数量减一
	 */
	@RequestMapping(value="/jian",method=RequestMethod.GET)
	public String deleteOne(@RequestParam("productId") int productId,HttpSession session,Cart c){
		 Product p = productService.getById(productId);
		 c = (Cart)session.getAttribute("cart");
		 int count = c.container.get(new Integer(productId)).getCount();
		 if (count>0){
			 count--;
		 }else{
			 count = 0;//怎么直接删了该商品？？？？？？
		 }
		 c.container.get(productId).setCount(count);
		// session.setAttribute("p", p);
		return "checkout";
	}
	/*
	 * 购物车中该商品数量加一
	 */
	@RequestMapping(value="/jia",method=RequestMethod.GET)
	public String addOne(@RequestParam("productId") int productId,HttpSession session,Cart c){
		 Product p = productService.getById(productId);
		 c = (Cart)session.getAttribute("cart");
		 int count = c.container.get(new Integer(productId)).getCount();
			 count++;
		 c.container.get(productId).setCount(count);
		return "checkout";
	}
	/*
	 * 删除本件商品
	 */
	@RequestMapping(value="/del",method=RequestMethod.GET)
	public String delOne(@RequestParam("productId") int productId,HttpSession session,Cart c){
		 c = (Cart)session.getAttribute("cart");
		 c.container.remove(productId);
		return "checkout";
	}
    /*
     * 查看购物车
     */
	@RequestMapping(value="/checkCart",method = RequestMethod.GET)
	public String checkCard( HttpSession session){
		User u = (User)session.getAttribute("u");
		if(u!=null){
			return "checkout";
		}else{
			JOptionPane.showMessageDialog(null, "您还没有登录!");
			return "login";
		}
	}
}
