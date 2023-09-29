package com.project.service;

import java.util.List;

import com.project.model.CategoryVO;
import com.project.model.SubCategoryVO;

public interface CategoryService {
	public void insertCategory(CategoryVO categoryVO);

	public List<CategoryVO> searchCategory();

	public List<CategoryVO> searchByIdCategory(CategoryVO categoryVO);
	
	public int searchFirstCategory();
	
	
}
