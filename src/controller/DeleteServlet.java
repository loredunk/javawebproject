package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.LoginDao;
import DAO.MemberDAO;
import POJO.Member;

/**
 * Servlet implementation class DeleteServlet
 */

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		// TODO Auto-generated method stub
		int id  = Integer.parseInt(request.getParameter("id")) ;
		try {
			new MemberDAO().delete(id) ;
			List<Member> list = new LoginDao().findNormalUser() ;
			request.setAttribute("list",list);
			request.getRequestDispatcher("/admin.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			List<Member> list;
			try {
				list = new LoginDao().findNormalUser();
				request.setAttribute("list",list);
				request.getRequestDispatcher("/admin.jsp").forward(request, response);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
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
		//- TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
