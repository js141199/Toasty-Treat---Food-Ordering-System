package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.dao.SubCategoryDAO;
import com.project.model.CategoryVO;
import com.project.model.SubCategoryVO;
@Service
@Transactional
public class SubCategoryServiceImpl  implements SubCategoryService
{
	@Autowired SubCategoryDAO subcategoryDAO;
	
	public void insertSubCategory(SubCategoryVO subcategoryVO)
	{
		this.subcategoryDAO.insertSubCategory(subcategoryVO);
		
	}

	@Override
	public List<SubCategoryVO> searchSubCategory() 
	{
		return this.subcategoryDAO.searchSubCategory();
	}
	
	@Override
	public List<SubCategoryVO> searchByIdSubCategory(SubCategoryVO subcategoryVO) {
		return this.subcategoryDAO.searchByIdSubCategory(subcategoryVO);
	}
	
	@Override
	public List<SubCategoryVO> searchByIdSubCategory1(SubCategoryVO subCategoryVO) {
		
		return this.subcategoryDAO.searchByIdSubCategory1(subCategoryVO);
	}
	
	
	
	
}
