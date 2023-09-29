package com.project.dao;

import java.util.List;

import com.project.model.CategoryVO;
public interface CategoryDAO {
	public void insertCategory(CategoryVO categoryVO);

	public List<CategoryVO> searchCategory();

	public List<CategoryVO> searchByIdCategory(CategoryVO CategoryVO);
	
	public int searchFirstCategory();

}
