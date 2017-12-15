package com.lin.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.lin.entity.Order;

@Entity
@Table(name="user")
public class User {
	
   private String address;
   private String userName;
   private String password;
   private String password1;
   private Set orderSet = new HashSet<Order>();
  
@Id
   @GeneratedValue(generator="my_gen")
   @GenericGenerator(name = "my_gen", strategy = "assigned")
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getPassword1() {
	return password1;
}
public void setPassword1(String password1) {
	this.password1 = password1;
}
@OneToMany(mappedBy="user", targetEntity=Order.class, 
cascade=CascadeType.ALL)
public Set getOrderSet() {
	return orderSet;
}
public void setOrderSet(Set orderSet) {
	this.orderSet = orderSet;
}
   
}