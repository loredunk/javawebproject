package controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import DAO.LoginDao;
import DAO.MemberDAO;
import POJO.Member;

/**
 * Servlet implementation class UpdateServlet
 */

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id")) ;
		String password=request.getParameter("password") ;
		String tel=request.getParameter("tel") ;
		String hobby=request.getParameter("hobby") ;
		String email=request.getParameter("email") ;
		Member m = new Member() ;
		m.setId(id);
		m.setPassword(password);
		m.setTel(tel);
		m.setHobby(hobby);
		m.setEmail(email);
		try {
			//BeanUtils.populate(m,map);
			//System.out.println(m);
			new MemberDAO().update(m) ;
			
				request.getRequestDispatcher("/login.jsp").forward(request, response);
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
