package dao;


//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.ResultSet;
//import java.sql.Statement;

public class UserDao {
	//�����û���������
	public String queryUserByName(String username) throws Exception {
		
		
		
//		Class.forName("oracle.jdbc.OracleDriver");
//		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:127.0.0.1:1521:orcl","scott","tiger");
//		
//		Statement stmt = conn.createStatement();
//		
//		String sql = "select password from userInfo where username='"+username+"'";
//		
//		ResultSet rs = stmt.executeQuery(sql);
//		
//		if(rs.next()) {
//			return rs.getString(1);
//		}
		
		
		
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
