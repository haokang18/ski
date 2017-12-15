package com.lin.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="order1")
public class Order {
  public int id;
  public String productName;
  public int price;
  public int count;
  public User user;
  
  @Id
  @GeneratedValue(generator="my_gen")
  @GenericGenerator(name = "my_gen", strategy = "increment")
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getProductName() {
	return productName;
}
public void setProductName(String productName) {
	this.productName = productName;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public int getCount() {
	return count;
}
public void setCount(int count) {
	this.count = count;
}
@ManyToOne
@JoinColumn(name="USERID")
public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}
  
}
