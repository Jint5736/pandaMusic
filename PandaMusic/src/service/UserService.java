package service;

import dao.UserDao;

public class UserService {
	public String queryUserByName(String username) throws Exception {
		UserDao dao = new UserDao();
		return dao.queryUserByName(username);
	}
}
