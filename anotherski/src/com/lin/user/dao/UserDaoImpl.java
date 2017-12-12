package com.lin.user.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.lin.entity.User;

@Repository
public class UserDaoImpl {
  @Resource
   private SessionFactory sessionFactory;
   Session session = null;
   Transaction  tran = null;
  public User findById(String address){
	   User u = this.sessionFactory.openSession().get(User.class,address);
	 return u;
 }
   public boolean saveUser(User user,String address){
	   session = sessionFactory.openSession();
	   tran = session.beginTransaction();
	   User u = session.get(User.class, address);
	   if(u == null){
		   session.save(user);
		   tran.commit();
		   session.close();
		   return true;
	   }else{
		   //session.close();
		   //tran.rollback();
		   return false;
	   }
   }
}
