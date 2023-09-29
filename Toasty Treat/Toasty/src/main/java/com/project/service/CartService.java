package com.project.service;

import java.util.List;

import com.project.model.CartVO;

public interface CartService {
	
	public void insert(CartVO cartVO);
	
	public List<CartVO> searchCart();

}
