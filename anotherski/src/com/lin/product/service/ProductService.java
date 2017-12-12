package com.lin.product.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lin.entity.Product;
import com.lin.product.dao.ProductDao;

@Service
public class ProductService {
@Resource
   private ProductDao productDao;

   public ProductDao getProductDao() {
	return productDao;
}

   public void setProductDao(ProductDao productDao) {
	this.productDao = productDao;
}
   
  public int findcount(){
	  return productDao.findTotle();
  }
  public List<Product> findPage(int pageNum,int pageSize){
	  return productDao.findPage(pageNum, pageSize);
  }
  public int findcount1(){
	  return productDao.findTotle1();
  }
  public List<Product> findPage1(int pageNum,int pageSize){
	  return productDao.findPage1(pageNum, pageSize);
  } 
  public int findcount2(){
	  return productDao.findTotle2();
  }
  public List<Product> findPage2(int pageNum,int pageSize){
	  return productDao.findPage2(pageNum, pageSize);
  }
  /*
   * 根据id查找商品
   */
  public Product getById(int id){
	  return productDao.findById(id);
  }
}
