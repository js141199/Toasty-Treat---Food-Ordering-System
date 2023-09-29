package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.CartDAO;
import com.project.model.CartVO;

@Service
@Transactional
public class CartServiceImp implements CartService {
	
	@Autowired
	CartDAO cartDAO;
	
	
	public List<CartVO> searchCart()
	{
		return this.cartDAO.searchCart();
	}
	
	public void insert(CartVO cartVO)
	{
		this.cartDAO.insert(cartVO);
	}
	
	
}
