package com.lin.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lin.entity.User;
import com.lin.user.dao.UserDaoImpl;

@Service
@Transactional(readOnly=true)
public class UserServiceImpl {
	@Resource
	private UserDaoImpl userDaoImpl;
	public UserDaoImpl getUserDaoImpl() {
		return userDaoImpl;
	}
	public void setUserDaoImpl(UserDaoImpl userDaoImpl) {
		this.userDaoImpl = userDaoImpl;
	}
	public User login(String address,String password){
		User u = this.userDaoImpl.findById(address);
		if(u!=null){		
			if(u.getPassword().equals(password)){
				return u;
			}else{
				return null;
			}
		}else{
			return null;
		}
	}
   public boolean addUser(User user,String address){
	   return userDaoImpl.saveUser(user, address);
   }
}
