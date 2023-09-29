package com.project.dao;

import java.util.List;

import com.project.model.CategoryVO;
import com.project.model.SubCategoryVO;

public interface SubCategoryDAO {
	
	public void insertSubCategory(SubCategoryVO subcategoryVO);

	public List<SubCategoryVO> searchSubCategory();

	public List<SubCategoryVO> searchByIdSubCategory(SubCategoryVO subCategoryVO);
	
	public List<SubCategoryVO> searchByIdSubCategory1(SubCategoryVO subCategoryVO);

}
