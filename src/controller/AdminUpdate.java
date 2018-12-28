package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MemberDAO;
import POJO.Member;

public class AdminUpdate extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		int id=Integer.parseInt(request.getParameter("id")) ;
		String name=request.getParameter("name");
		int age=Integer.parseInt(request.getParameter("age"));
		String birthday=request.getParameter("birthday");
		String classId=request.getParameter("classId");
		int dorm=Integer.parseInt(request.getParameter("dorm"));
		String password=request.getParameter("password") ;
		String tel=request.getParameter("tel") ;
		String hobby=request.getParameter("hobby") ;
		String email=request.getParameter("email") ;
		Member m = new Member() ;
		m.setId(id);
		m.setName(name);
		m.setAge(age);
		m.setBirthday(birthday);
		m.setClassId(classId);
		m.setDorm(dorm);
		m.setPassword(password);
		m.setTel(tel);
		m.setHobby(hobby);
		m.setEmail(email);
		try {
			new MemberDAO().adminupdate(m);
			request.getRequestDispatcher("admin").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.flush();
		out.close();
	}

}
