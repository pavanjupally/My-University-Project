package com.myuniversity.nwmsu.dao;

import com.myuniversity.nwmsu.model.Login;

public interface LoginDAO {

	public boolean verifyUser(Login login);
}
