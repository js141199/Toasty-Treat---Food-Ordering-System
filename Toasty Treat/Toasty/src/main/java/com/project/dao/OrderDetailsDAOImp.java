/*package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.OrderDetailsVO;

@Repository
public class OrderDetailsDAOImp implements OrderDetailsDAO{

	
	@Autowired
	SessionFactory  sessionFactory;
	
	@Override
	public void insert(OrderDetailsVO detailsVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		
		session.saveOrUpdate(detailsVO);
	}
	
	@Override
	public List<OrderDetailsVO> search()
	{
		Session session = this.sessionFactory.getCurrentSession();
		
		Query q = session.createQuery("from OrderDetailsVO");
		
		return q.list();
	}
	
	@Override
	public List<OrderDetailsVO> searchByStatus()
	{
		Session session = this.sessionFactory.getCurrentSession();
		
		Query q = session.createQuery("from OrderDetailsVO where orderStatus = true");
		
		return q.list();
	}
	
	
}
*/