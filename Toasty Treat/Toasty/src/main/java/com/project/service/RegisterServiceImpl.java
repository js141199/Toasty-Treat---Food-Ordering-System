package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.dao.RegisterDAO;
import com.project.model.RegisterVO;

@Service
@Transactional
public class RegisterServiceImpl implements RegisterService{
	
	@Autowired RegisterDAO registerDAO;
	
	
	public void insertRegister(RegisterVO registerVO) {
		this.registerDAO.insertRegister(registerVO);
	}
	
	
		public List<RegisterVO> searchRegister(RegisterVO registerVO) {
			
			List<RegisterVO> ls=this.registerDAO.searchRegister(registerVO);
			return ls;
	}

}
