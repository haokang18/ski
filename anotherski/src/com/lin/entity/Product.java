package com.lin.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="product")
public class Product {
  private int id;
  private String type;
  private String productName;
  private String productInfo;
  private int Price;
  @Id
  @GeneratedValue(generator="my_gen")
  @GenericGenerator(name = "my_gen", strategy = "increment")
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public String getProductName() {
	return productName;
}
public void setProductName(String productName) {
	this.productName = productName;
}
public String getProductInfo() {
	return productInfo;
}
public void setProductInfo(String productInfo) {
	this.productInfo = productInfo;
}
public int getPrice() {
	return Price;
}
public void setPrice(int price) {
	Price = price;
}

}
