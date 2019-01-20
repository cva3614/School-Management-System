package com.crud.operation.daos;

import com.crud.operation.models.User;

public interface UserDao {
	public boolean login(String un, String psw);
	public void signup(User u);
}
