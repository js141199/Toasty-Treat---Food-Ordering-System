package com.project.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.CategoryVO;
import com.project.model.SubCategoryVO;
import com.project.service.CategoryService;
import com.project.service.SubCategoryService;

@Controller
/*@RequestMapping(value = "admin/")*/
public class SubCategoryController {

	@Autowired
	private SubCategoryService subcategoryService;

	@Autowired
	private CategoryService categoryService;

	/*Here admin/loadSubCategory is searched but at the link side only loadSubCategory is there becoz
	by default when we are redirecting to the index by default url  admin/index*/
	@RequestMapping(value = "admin/loadSubCategory", method = RequestMethod.GET)
	public ModelAndView loadSubCategory() {

		List<CategoryVO> categoryList = this.categoryService.searchCategory();
		/* System.out.println(categoryList.size()); */
		return new ModelAndView("admin/addSubCategory", "subcategoryVO", new SubCategoryVO())
				.addObject("categoryList", categoryList);
	}

	@RequestMapping(value = "admin/insertSubCategory", method = RequestMethod.POST)
	public ModelAndView insertSubCategory(@ModelAttribute SubCategoryVO subcategoryVO, @RequestParam MultipartFile file,
			HttpSession session) {

		String path = session.getServletContext().getRealPath("/");
		String finalPath = path + "/document/product/";

		String fileName = file.getOriginalFilename();

		try {
			byte[] b = file.getBytes();

			BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(
					new FileOutputStream(finalPath + fileName));

			bufferedOutputStream.write(b);
			bufferedOutputStream.flush();
			bufferedOutputStream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		subcategoryVO.setFileName(fileName);
		subcategoryVO.setFilePath(finalPath);

		this.subcategoryService.insertSubCategory(subcategoryVO);
		return new ModelAndView("redirect:/admin/loadSubCategory");

	}

	@RequestMapping(value = "admin/viewSubCategory", method = RequestMethod.GET)
	public ModelAndView viewSubCategory() {

		/* System.out.println("Search SubCategory::::::::::::::"); */
		List<SubCategoryVO> subcategoryList = this.subcategoryService.searchSubCategory();
		System.out.println("SubCategory List::::"+subcategoryList.size());
		return new ModelAndView("admin/viewSubCategory", "subcategoryList", subcategoryList);

	}

	@RequestMapping(value = "admin/deleteSubCategory", method = RequestMethod.GET)
	public ModelAndView deleteSubCategory(@RequestParam int id, @ModelAttribute SubCategoryVO subcategoryVO) {

		subcategoryVO.setId(id);
		List<SubCategoryVO> subcategorylist = this.subcategoryService.searchByIdSubCategory(subcategoryVO);
		SubCategoryVO subCategoryVO2 = (SubCategoryVO) subcategorylist.get(0);
		subCategoryVO2.setStatus(false);
		this.subcategoryService.insertSubCategory(subCategoryVO2);
		return new ModelAndView("redirect:/admin/viewSubCategory");
	}

	@RequestMapping(value = "admin/editSubCategory", method = RequestMethod.GET)
	public ModelAndView editSubCategory(@RequestParam int id, @ModelAttribute SubCategoryVO subcategoryVO) {

		subcategoryVO.setId(id);
		List<SubCategoryVO> subcategoryList = this.subcategoryService.searchByIdSubCategory(subcategoryVO);
		List<CategoryVO> categorylist = this.categoryService.searchCategory();
		SubCategoryVO subCategoryVO2 = (SubCategoryVO) subcategoryList.get(0);
		return new ModelAndView("admin/addSubCategory", "subcategoryVO", subCategoryVO2).addObject("categoryList",
				categorylist);
	}

}
