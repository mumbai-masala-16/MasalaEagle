package com.rrd.eaglemasala.dao.api;

import com.rrd.eaglemasala.domain.LoginModel;

public interface LoginDAO {

	public boolean validateUser(LoginModel user);
}
