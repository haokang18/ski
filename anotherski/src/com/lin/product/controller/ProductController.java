package com.lin.product.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lin.entity.Page;
import com.lin.entity.Product;
import com.lin.product.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Resource
  private ProductService productService;

  public ProductService getProductService() {
	return productService;
}

  public void setProductService(ProductService productService) {
	this.productService = productService;
}
  @RequestMapping(value="/find",method=RequestMethod.GET)
  public String findAllProduct(HttpServletRequest request,HttpSession session){
	  String pageNum = request.getParameter("pageNum");
	  int num = 0;
	  if(pageNum == null || pageNum.equals("")){
		  num = 1;
	  }else{
		  num = new Integer(pageNum);
	  }
	  int count = productService.findcount();
	  List<Product> list = productService.findPage(num, 4);
	  Page p = new Page(num,4);
	  p.setTotalCount(count);
	  p.setList(list);
	  session.setAttribute("page", p);
	  session.setAttribute("path", "product/find");
	  return "shop";
			  
  }
  @RequestMapping(value="/find1",method=RequestMethod.GET)
  public String findAllProduct1(HttpServletRequest request,HttpSession session){
	  String pageNum = request.getParameter("pageNum");
	  int num = 0;
	  if(pageNum == null || pageNum.equals("")){
		  num = 1;
	  }else{
		  num = new Integer(pageNum);
	  }
	  int count = productService.findcount1();
	  List<Product> list = productService.findPage1(num, 4);
	  Page p = new Page(num,4);
	  p.setTotalCount(count);
	  p.setList(list);
	  session.setAttribute("page", p);
	  session.setAttribute("path", "product/find1");
	  return "shop";
			  
  }
  @RequestMapping(value="/find2",method=RequestMethod.GET)
  public String findAllProduct2(HttpServletRequest request,HttpSession session){
	  String pageNum = request.getParameter("pageNum");
	  int num = 0;
	  if(pageNum == null || pageNum.equals("")){
		  num = 1;
	  }else{
		  num = new Integer(pageNum);
	  }
	  int count = productService.findcount2();
	  List<Product> list = productService.findPage2(num, 4);
	  Page p = new Page(num,4);
	  p.setTotalCount(count);
	  p.setList(list);
	  session.setAttribute("page", p);
	  session.setAttribute("path", "product/find2");
	  return "shop";
			  
  }
}
