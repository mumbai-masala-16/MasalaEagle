package com.rrd.eaglemasala.service.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rrd.eaglemasala.dao.api.LoginDAO;
import com.rrd.eaglemasala.domain.LoginModel;
import com.rrd.eaglemasala.service.LoginService;


@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginDAO loginDAO;

	@Transactional
	public boolean validateUser(LoginModel user) {
		return loginDAO.validateUser(user);
	}
}
