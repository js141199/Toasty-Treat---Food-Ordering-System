package com.project.service;

import java.util.List;

import com.project.model.CategoryVO;
import com.project.model.SubCategoryVO;

public interface SubCategoryService {
	public void insertSubCategory(SubCategoryVO subcategoryVO);

	public List<SubCategoryVO> searchSubCategory();

	public List<SubCategoryVO> searchByIdSubCategory(SubCategoryVO subcategoryVO);
	
	public List<SubCategoryVO> searchByIdSubCategory1(SubCategoryVO subCategoryVO);
}
