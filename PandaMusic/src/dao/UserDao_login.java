package dao;

public class UserDao_login {
	//�����û���������
	public String queryUserByName(String username) throws Exception {
		if("�˲�".equals(username)) {
			return "caicai";
		}else if("�ʷ�".equals(username)) {
			return "feifei";
		}else if("��è".equals(username)) {
			return "xiongmao";
		}else if("�㱦��".equals(username)) {
			return "xiangbaobao";
		}else if("Aow".equals(username)) {
			return "aow";
		}else {
			return "abcdefg";
		}
		
	}
	
	
	
}
