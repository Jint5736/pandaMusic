package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User_login;
import service.UserService;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//loginҳ���ύ������
		String username = request.getParameter("username");
		String password = request.getParameter("pwd");
		String[] checkboxes = request.getParameterValues("check_paw");
			
		//ȥ���ݿ�ȡ����  �����û�����ȡ����
		UserService service = new UserService();
		try {
			String pwd = service.queryUserByName(username);
			
			if(password.equals(pwd)) {
				//������ȷ����true
				Cookie password_judge = new Cookie("password_judge","true");
				password_judge.setMaxAge(60*24*60*30);
				response.addCookie(password_judge);
				//�����ס�����д򹴣�����check yes
				if(checkboxes!= null)
				{
						Cookie check = new Cookie("check","yes");
						check.setMaxAge(60*24*60*30);
						response.addCookie(check);
				}else {
					Cookie check = new Cookie("check","no");
					check.setMaxAge(60*24*60*30);
					response.addCookie(check);
				}
				//cookie��������������û���
				request.setCharacterEncoding("utf-8");
				String user1 = request.getParameter("username");
				String upwd = request.getParameter("pwd");
				Cookie coouser = new Cookie("username",user1);
				Cookie coo = new Cookie("pwd",upwd);
				coouser.setMaxAge(60*24*60*30);
				coo.setMaxAge(60*24*60*30);
				response.addCookie(coouser);
				response.addCookie(coo);
				//��¼�ɹ�
				User_login user = new User_login();
				user.setUsername(username);
				user.setPassword(password);
				request.setAttribute("user", user);
				request.getRequestDispatcher("pandaJSP/home_page.jsp").forward(request, response);
				
			}else {
				//�ж������������ʹ��ʾ��ʾ
				Cookie password_judge = new Cookie("password_judge","false");
				password_judge.setMaxAge(60*24*60*30);
				response.addCookie(password_judge);
				response.sendRedirect("pandaJSP/login.jsp");
			}
			
			
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	}

}
