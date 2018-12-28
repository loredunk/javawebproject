package controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import DAO.LoginDao;
import DAO.RegisterDao;
import POJO.Member;

/**
 * Servlet implementation class RegisterServlet
 */

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		System.out.println(1);
		//
		Map<String, String[]> map = request.getParameterMap() ;
		Member m = new Member() ;
		try {
			BeanUtils.populate(m, map);//遍历map中的key，如果bean中有这个属性，就把这个key对应的value值赋给bean的属性
			try {
				new RegisterDao().regis(m) ;
				List<Member> list = new LoginDao().findNormalUser() ;
				request.setAttribute("list",list);//请求参数传递
				request.getRequestDispatcher("/Admin_web.jsp").forward(request, response);//跳转
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				request.getRequestDispatcher("/register.jsp").forward(request, response);
			}
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			request.getRequestDispatcher("/register.jsp").forward(request, response);
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			request.getRequestDispatcher("/register.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		// T Auto-generated method stub
		this.doGet(request, response); 
	}

}
