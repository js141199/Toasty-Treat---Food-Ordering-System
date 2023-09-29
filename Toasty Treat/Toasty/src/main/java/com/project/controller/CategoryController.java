package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.CategoryVO;
import com.project.model.LoginVO;
import com.project.service.CategoryService;
import com.project.service.LoginService;
import com.project.utils.Basemethods;

@Controller
/*@RequestMapping(value = "admin/")*/
public class CategoryController {
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private LoginService loginService;

	/*Here admin/loadCategory is searched but at the link side only loadCategory is there becoz
	by default when we are redirecting to the index by default url  admin/index*/
	@RequestMapping(value = "admin/loadCategory", method = RequestMethod.GET)
	public ModelAndView loadCategory() {
		return new ModelAndView("admin/addCategory", "categoryVO", new CategoryVO());
	}

	@RequestMapping(value = "admin/insertCategory", method = RequestMethod.POST)
	public ModelAndView insertCategory(@ModelAttribute CategoryVO categoryVO) {

		String userName = Basemethods.getUser();
		List loginList = loginService.searchLoginID(userName);
		LoginVO loginVO = (LoginVO) loginList.get(0);
		//categoryVO.setLoginVO(loginVO); 

		this.categoryService.insertCategory(categoryVO);
		return new ModelAndView("redirect:/admin/loadCategory");
	}

	@RequestMapping(value = "admin/viewCategory", method = RequestMethod.GET)
	public ModelAndView viewCategory(@ModelAttribute CategoryVO categoryVO) {

		/* System.out.println("Search Category::::::::::::::"); */
		List<CategoryVO> categoryList = this.categoryService.searchCategory();
		
		 System.out.println("search list ::::::::::" + categoryList.size());
		
		return new ModelAndView("admin/viewCategory", "categoryList", categoryList);
	}

	@RequestMapping(value = "admin/deleteCategory", method = RequestMethod.GET)
	public ModelAndView deleteCategory(@RequestParam int id, @ModelAttribute CategoryVO categoryVO) {
		categoryVO.setId(id);

		List<CategoryVO> categoryList = this.categoryService.searchByIdCategory(categoryVO);
		CategoryVO categoryVO2 = (CategoryVO) categoryList.get(0);
		categoryVO2.setStatus(false);

		this.categoryService.insertCategory(categoryVO2);

		return new ModelAndView("redirect:/admin/viewCategory");
	}

	@RequestMapping(value = "admin/editCategory", method = RequestMethod.GET)
	public ModelAndView editCategory(@RequestParam int id, @ModelAttribute CategoryVO categoryVO) {
		categoryVO.setId(id);

		List<CategoryVO> categoryList = this.categoryService.searchByIdCategory(categoryVO);

		return new ModelAndView("admin/addCategory", "categoryVO", (CategoryVO) categoryList.get(0));
	}

}
