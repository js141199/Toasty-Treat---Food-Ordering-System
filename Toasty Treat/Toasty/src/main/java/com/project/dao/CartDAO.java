package com.project.dao;

import java.util.List;

import com.project.model.CartVO;

public interface CartDAO {
	
	public List<CartVO> searchCart();
	
	public void insert(CartVO cartVO);

}
