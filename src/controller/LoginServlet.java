package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.LoginDao;
import POJO.Member;

/**
 * Servlet implementation class LoginServlet
 */

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		// TODO Auto-generated method stub
		String type = request.getParameter("type") ;
		String username = request.getParameter("username") ;
		String password = request.getParameter("password") ;
		Member m = new Member() ;
		m.setUsername(username);
		m.setPassword(password);
		
		if("1".equals(type)){ //管理员
			try {
				Member am = new LoginDao().loginAdmin(m) ;
				if(am!=null){
					List<Member> list = new LoginDao().findNormalUser() ;
					request.setAttribute("list",list);
					request.getRequestDispatcher("/Admin_web.jsp").forward(request, response);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
		}else{  //普通用户
			try {
				Member nm = new LoginDao().loginNormal(m) ;
				if(nm!=null){
					request.setAttribute("nm", nm);
					request.getRequestDispatcher("/Student_web.jsp").forward(request, response);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
