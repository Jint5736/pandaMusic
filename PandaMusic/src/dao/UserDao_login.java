package dao;

public class UserDao_login {
	//根据用户名查密码
	public String queryUserByName(String username) throws Exception {
		if("菜菜".equals(username)) {
			return "caicai";
		}else if("肥肥".equals(username)) {
			return "feifei";
		}else if("熊猫".equals(username)) {
			return "xiongmao";
		}else if("香宝宝".equals(username)) {
			return "xiangbaobao";
		}else if("Aow".equals(username)) {
			return "aow";
		}else {
			return "abcdefg";
		}
		
	}
	
	
	
}
