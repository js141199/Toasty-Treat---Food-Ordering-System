package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.CategoryVO;
import com.project.model.SubCategoryVO;
@Repository
public class SubCategoryDAOImpl implements SubCategoryDAO
{
@Autowired SessionFactory sessionFactory;
	
	public void insertSubCategory(SubCategoryVO subcategoryVO)
	{
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(subcategoryVO);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<SubCategoryVO> searchSubCategory() 
	{
		Session session=sessionFactory.openSession();
		Query q=session.createQuery("From SubCategoryVO where status=true");
		return q.list();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<SubCategoryVO> searchByIdSubCategory(SubCategoryVO subcategoryVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q =session.createQuery("from SubCategoryVO where status=true and id="+subcategoryVO.getId());
		return q.list();
		}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<SubCategoryVO> searchByIdSubCategory1(SubCategoryVO subCategoryVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from SubCategoryVO where status=true and categoryVO.id = '"+subCategoryVO.getCategoryVO().getId()+"'");
		return q.list();
	}
}
