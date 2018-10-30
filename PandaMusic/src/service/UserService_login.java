package service;


import dao.UserDao_login;

public class UserService_login {
	public String queryUserByName(String username) throws Exception {
		UserDao_login dao = new UserDao_login();
		return dao.queryUserByName(username);
	}
}
