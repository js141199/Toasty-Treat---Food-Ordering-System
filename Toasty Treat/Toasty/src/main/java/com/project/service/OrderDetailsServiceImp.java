/*package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.OrderDetailsDAO;
import com.project.model.OrderDetailsVO;

@Service
@Transactional
public class OrderDetailsServiceImp implements OrderDetailsService{
	
	@Autowired
	OrderDetailsDAO detailsDAO;
	
	@Override
	public void insert(OrderDetailsVO detailsVO)
	{
		this.detailsDAO.insert(detailsVO);
	}
	
	@Override
	public List<OrderDetailsVO> search()
	{
		return this.detailsDAO.search();
	}
	
	@Override
	public List<OrderDetailsVO> searchByStatus()
	{
		return this.detailsDAO.searchByStatus();
	}

}
*/