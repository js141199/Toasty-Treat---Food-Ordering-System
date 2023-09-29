package com.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.annotations.SortComparator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.SubCategoryVO;
import com.project.model.CartVO;
import com.project.model.CategoryVO;

import com.project.service.CartService;
import com.project.service.CategoryService;

import com.project.service.SubCategoryService;

@Controller
public class CartController {

	@Autowired
	private SubCategoryService subCategoryService;

	@Autowired
	private CartService cartService;

	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "user/loadItemInCart", method = RequestMethod.GET)
	public ModelAndView loadItemInCart(@RequestParam int id, @ModelAttribute SubCategoryVO subcategoryVO,
			@ModelAttribute CategoryVO categoryVO, @ModelAttribute CartVO cartVO) {

		subcategoryVO.setId(id);

		cartVO.setSubcategoryVO(subcategoryVO);

		cartVO.setQuantity(1);

		cartVO.setProductName(subcategoryVO.getSubcategoryName());

		this.cartService.insert(cartVO);

		List<CategoryVO> categoryList = this.categoryService.searchCategory();

		categoryVO = categoryList.get(0);

		subcategoryVO.setCategoryVO(categoryVO);

		List<SubCategoryVO> subCategoryList = this.subCategoryService.searchByIdSubCategory1(subcategoryVO);

		return new ModelAndView("user/home", "subCategoryList", subCategoryList).addObject("categoryList",
				categoryList);

	}

	@RequestMapping(value = "user/removeItemFromCart", method = RequestMethod.GET)
	public ModelAndView removeItemFromCart(@RequestParam int id, @ModelAttribute CartVO cartVO) {
		cartVO.setId(id);

		cartVO.setStatus(false);

		this.cartService.insert(cartVO);

		return new ModelAndView("redirect:user/loadCartDetails");

	}

	@RequestMapping(value = "user/loadCartDetails", method = RequestMethod.GET)
	public ModelAndView loadCartDetails(@ModelAttribute CartVO cartVO) {
		List<CartVO> cartList = this.cartService.searchCart();

		List<CategoryVO> categoryList = this.categoryService.searchCategory();

		return new ModelAndView("user/cart", "cartList", cartList).addObject("categoryList", categoryList);
	}

	/*
	 * @RequestMapping(value="user/placeOrder",method=RequestMethod.GET) public
	 * ModelAndView placeOrder(@RequestParam List<CartVO>
	 * cartData,@ModelAttribute CartVO cartVO, HttpServletRequest
	 * request,@ModelAttribute OrderDetailsVO details) {
	 * 
	 * for(int i=0;i<cartData.size();i++) { cartVO = cartData.get(i);
	 * 
	 * int qnty = Integer.parseInt(request.getParameter("name" + (i+1)));
	 * 
	 * cartVO.setQuantity(qnty);
	 * 
	 * cartData.set(i, cartVO); }
	 * 
	 * details.setCartVO(cartData);
	 * 
	 * details.setAmount(Integer.parseInt(request.getParameter("finalBill")));
	 * 
	 * this.orderService.insert(details);
	 * 
	 * return new ModelAndView(); }
	 * 
	 * @RequestMapping(value="user/saveUserDetails",method=RequestMethod.POST)
	 * public ModelAndView saveUserDetails(HttpServletRequest
	 * request,@ModelAttribute OrderDetailsVO detailsVO) { List<OrderDetailsVO>
	 * list = this.orderService.search();
	 * 
	 * detailsVO.setId(list.get(list.size()-1).getId());
	 * 
	 * detailsVO.setEmail(request.getParameter("email"));
	 * 
	 * detailsVO.setName(request.getParameter("name"));
	 * 
	 * detailsVO.setNumber("number");
	 * 
	 * this.orderService.insert(detailsVO);
	 * 
	 * return new ModelAndView("user/completed"); }
	 */}
