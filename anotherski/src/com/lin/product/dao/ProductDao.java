package com.lin.product.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.lin.entity.Product;

@Repository
public class ProductDao {
	@Resource
    private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	/*
	 * 统计商品总个数
	 */
    public int findTotle(){ 
    	Session session = sessionFactory.openSession();
    	Transaction tran = session.beginTransaction();
    	Query query = session.createQuery("from Product");
    	List<Product> querylist = query.list();
    	tran.commit();
    	session.close();
    	return querylist.size();
    }
    /*
     * 分页
     */
    public List<Product> findPage(int pageNum,int pageSize){
    	Session session = sessionFactory.openSession();
    	Transaction tran = session.beginTransaction();
    	String hql = "from Product";
    	Query query = session.createQuery(hql);
    	query.setFirstResult((pageNum-1)*pageSize);
    	query.setMaxResults(pageSize);
    	List<Product> list = query.list();
    	tran.commit();
    	session.close();
    	return list;
    }
    /*
	 * 统计最新商品总个数
	 */
    public int findTotle1(){ 
    	Session session = sessionFactory.openSession();
    	Transaction tran = session.beginTransaction();
    	String hql = " from Product where productInfo = '最新商品'";
    	Query query = session.createQuery(hql);
    	List<Product> querylist = query.list();
    	tran.commit();
    	session.close();
    	return querylist.size();
    }
    /*
     * 分页
     */
    public List<Product> findPage1(int pageNum,int pageSize){
    	Session session = sessionFactory.openSession();
    	Transaction tran = session.beginTransaction();
    	String hql = "from Product where productInfo = '最新商品'";
    	Query query = session.createQuery(hql);
    	query.setFirstResult((pageNum-1)*pageSize);
    	query.setMaxResults(pageSize);
    	List<Product> list = query.list();
    	tran.commit();
    	session.close();
    	return list;
    }
    /*
	 * 统计促销商品总个数
	 */
    public int findTotle2(){ 
    	Session session = sessionFactory.openSession();
    	Transaction tran = session.beginTransaction();
    	Query query = session.createQuery("from Product p where p.productInfo = '促销商品'");
    	List<Product> querylist = query.list();
    	tran.commit();
    	session.close();
    	return querylist.size();
    }
    /*
     * 分页
     */
    public List<Product> findPage2(int pageNum,int pageSize){
    	Session session = sessionFactory.openSession();
    	Transaction tran = session.beginTransaction();
    	String hql = " from Product where productInfo = '促销商品'";
    	Query query = session.createQuery(hql);
    	query.setFirstResult((pageNum-1)*pageSize);
    	query.setMaxResults(pageSize);
    	List<Product> list = query.list();
    	tran.commit();
    	session.close();
    	return list;
    }
    public Product findById(int id){
    	Session session = sessionFactory.openSession();
    	Transaction tran = session.beginTransaction();
    	String hql = "from Product p   where p.id = ?";
    	Query query = session.createQuery(hql);
    	query.setParameter(0, id);
    	Product product = (Product)query.uniqueResult();
    	tran.commit();
    	session.close();
    	return product;
    }
}
