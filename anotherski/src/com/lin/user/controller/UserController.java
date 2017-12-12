package com.lin.user.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lin.entity.User;
import com.lin.user.service.UserServiceImpl;

@Controller
@RequestMapping("/loginuser")
public class UserController {
 @Resource
 private UserServiceImpl userServiceImpl;
 public UserServiceImpl getUserServiceImpl() {
	return userServiceImpl;
}
public void setUserServiceImpl(UserServiceImpl userServiceImpl) {
	this.userServiceImpl = userServiceImpl;
}
@RequestMapping(value="/login", method=RequestMethod.POST)
 public String login(@RequestParam("address") String address,@RequestParam("password") String password,Model model,HttpSession session){
	  User u = this.userServiceImpl.login(address, password);
	  if(u!=null){
		  session.setAttribute("u", u);
		  return "index";
	  }else{
		  model.addAttribute("errorinfo","您的账号密码不正确");
		  return "register";
	  }
 }
@RequestMapping(value="/register",method=RequestMethod.POST)
 public String register(@RequestParam("address") String address,
		 @RequestParam("userName") String userName,
		 @RequestParam("password") String password,
		 @RequestParam("password1") String password1,
	     HttpServletRequest request,
	     HttpServletResponse response){
	 User user = new User();
	 user.setAddress(address);
	 user.setUserName(userName);
	 user.setPassword(password1);
	 user.setPassword1(password1);
	 Boolean b = userServiceImpl.addUser(user, address);
	 if(b){
	   return "login";
	 }else{
	   return "register";
	 }
}
 
}
