package com.project.service;

import java.util.List;

import com.project.model.RegisterVO;

public interface RegisterService {
	
	public void insertRegister(RegisterVO registerVO);
	
	public List<RegisterVO> searchRegister(RegisterVO registerVO);

}
