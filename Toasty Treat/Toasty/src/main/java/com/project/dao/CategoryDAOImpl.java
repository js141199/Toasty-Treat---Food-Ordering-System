package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.CategoryVO;

@Repository
public class CategoryDAOImpl implements CategoryDAO
{
@Autowired SessionFactory sessionFactory;
	
	public void insertCategory(CategoryVO categoryVO)
	{
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(categoryVO);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<CategoryVO> searchCategory() 
	{
		Session session=sessionFactory.openSession();
		Query q=session.createQuery("From CategoryVO where status=true");
		return q.list();
	}
	
	public int searchFirstCategory() 
	{
		Session session=sessionFactory.openSession();
		Query q=session.createQuery("From CategoryVO where status=true");
		Integer id = q.getFirstResult();
		return id;
	}
	
	
	@SuppressWarnings("unchecked")
	@Override
	public List<CategoryVO> searchByIdCategory(CategoryVO categoryVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q =session.createQuery("from CategoryVO where status=true and id='"+categoryVO.getId()+"'");
		return q.list();
		}
}
