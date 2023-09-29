package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.dao.CategoryDAO;
import com.project.model.CategoryVO;
import com.project.model.SubCategoryVO;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	CategoryDAO categoryDAO;

	public void insertCategory(CategoryVO categoryVO) {
		this.categoryDAO.insertCategory(categoryVO);

	}

	@Override
	public List<CategoryVO> searchCategory() {
		return this.categoryDAO.searchCategory();
	}

	@Override
	public List<CategoryVO> searchByIdCategory(CategoryVO categoryVO) {
		return this.categoryDAO.searchByIdCategory(categoryVO);
	}
	
	@Override
	public int searchFirstCategory()
	{
		return this.categoryDAO.searchFirstCategory();
	}
	
	
}
