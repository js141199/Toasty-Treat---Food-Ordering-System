package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.CartVO;

@Repository
public class CartDAOImp implements CartDAO {
	
	@Autowired SessionFactory sessionFactory;
	
	@SuppressWarnings(value="unchecked")
	@Override
	public List<CartVO> searchCart()
	{
		Session session = this.sessionFactory.getCurrentSession();
		
		Query q = session.createQuery("from CartVO where status = true");
		
		return q.list();
	}

	@Override
	public void insert(CartVO cartVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		
		session.saveOrUpdate(cartVO);
	}
}
