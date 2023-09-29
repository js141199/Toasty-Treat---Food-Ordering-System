package com.project.dao;

import java.util.List;

import com.project.model.LoginVO;
import com.project.model.RegisterVO;

public interface LoginDAO {

	public void insertLogin(LoginVO loginVO);

	public List<RegisterVO> searchLoginID(String loginService);

}
