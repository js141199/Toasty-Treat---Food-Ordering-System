package com.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.CategoryVO;
import com.project.model.SubCategoryVO;
import com.project.service.CategoryService;
import com.project.service.SubCategoryService;

@Controller

public class UserCategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private SubCategoryService subCategoryService;
	
	
	
	
	
	@RequestMapping(value="user/loadHomePage", method=RequestMethod.GET)
	public ModelAndView loadHomePage(@ModelAttribute CategoryVO categoryVO,@ModelAttribute SubCategoryVO subCategoryVO,
										HttpServletRequest request)
	{
		List<CategoryVO> categoryList = this.categoryService.searchCategory();
		
		categoryVO = categoryList.get(0);
		
		subCategoryVO.setCategoryVO(categoryVO);
		
		List<SubCategoryVO> subCategoryList = this.subCategoryService.searchByIdSubCategory1(subCategoryVO);
		
		return new ModelAndView("user/home","subCategoryList", subCategoryList).addObject("categoryList",categoryList);
	}
	
	@RequestMapping(value="user/loadProduct",method=RequestMethod.GET)
	public ModelAndView loadProduct(@RequestParam int id,@ModelAttribute SubCategoryVO subCategoryVO,
										HttpServletRequest request)
	{
		CategoryVO categoryVO = new CategoryVO();
		
		categoryVO.setId(id);
		
		subCategoryVO.setCategoryVO(categoryVO);

		List<CategoryVO> categoryList = this.categoryService.searchCategory();
		
		List<SubCategoryVO> subCategoryList = this.subCategoryService.searchByIdSubCategory1(subCategoryVO);
		
		
		return new ModelAndView("user/home","subCategoryList", subCategoryList).addObject("categoryList",categoryList);
	}
	
	/*@RequestMapping(value="admin/showOrders",method=RequestMethod.GET)
	public ModelAndView showOrders()
	{
		List<OrderDetailsVO> detailsVO = this.orderService.searchByStatus();
		
		return new ModelAndView("admin/orders","orderData",detailsVO);
	}
	
	
	@RequestMapping(value="admin/removeFronOrders",method=RequestMethod.GET)
	public ModelAndView removeFronOrders(@RequestParam int id,@ModelAttribute OrderDetailsVO detailsVO)
	{
		detailsVO.setId(id);
		
		detailsVO.setOrderStatus(false);
		
		this.orderService.insert(detailsVO);
		
		return new ModelAndView("redirect:admin/showOrders");
	}
*/
}
