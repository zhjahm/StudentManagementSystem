package com.sms.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sms.Entity.User;
import com.sms.dao.UserDao;
import com.sms.dao.impl.UserDaoImpl;
import com.sms.util.ConnectionFactory;

public class CheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao userDao = new UserDaoImpl();

	public CheckServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//读取数据
		String useremail = request.getParameter("inputuseremail");
		String userpassword = request.getParameter("inputuserpassword");
		RequestDispatcher rd = null;
		String forward = null;
		if (useremail == null || userpassword == null) {
			request.setAttribute("msgtype", "error");
			request.setAttribute("msg", "请重新登录！");
			rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		} else {
			//将数据存入Model
			User user = new User();
			user.setEmail(useremail);
			user.setPassword(userpassword);
			//使用DAO与数据库连接，并取得返回值
			boolean bool = false;
			Connection conn = null;
			try {
				conn = ConnectionFactory.getInstance().makeConnection();
				conn.setAutoCommit(false);
				ResultSet resultSet = userDao.get(conn, user);
				while (resultSet.next()) {
					bool = true;
					user.setName(resultSet.getString("name"));
					user.setId(resultSet.getLong("id"));
				}
			} catch (Exception e) {
				try {
					conn.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
				e.printStackTrace();
			} finally {
				try {
					conn.close();
				} catch (Exception e3) {
					e3.printStackTrace();
				}
			}
			//登录判断
			if (bool) {
				HttpSession session = request.getSession();
				session.setAttribute("useremail", user.getEmail());
				session.setAttribute("userid", user.getId().toString());
				session.setAttribute("username", user.getName());
				// Cookie cookie = new Cookie("useremail", useremail);
				// cookie.setMaxAge(Integer.MAX_VALUE);
				// response.addCookie(cookie);
				response.sendRedirect("board.jsp");
				return;
			} else {
				request.setAttribute("msgtype", "error");
				request.setAttribute("msg", "用户名或密码错误!");
				forward = "index.jsp";
				rd = request.getRequestDispatcher(forward);
				rd.forward(request, response);
				// PrintWriter out =response.getWriter();
				// out.print("<script language='javascript'>alert('用户名或密码错误!');window.location.href='index.jsp';</script>");
			}
		}
	}

}
