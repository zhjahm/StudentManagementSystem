package com.sms.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sms.Entity.User;
import com.sms.service.CheckUserService;

public class CheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CheckUserService cus = new CheckUserService();

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
		String useremail = request.getParameter("inputuseremail");
		String userpassword = request.getParameter("inputuserpassword");
		RequestDispatcher rd = null;
		String forward = null;
		if (useremail == null || userpassword == null) {
			request.setAttribute("msg", "用户名或密码为空!");
			rd = request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
		} else {
			User user = new User();
			user.setEmail(useremail);
			user.setPassword(userpassword);

			boolean bool = cus.check(user);

			if (bool) {
				HttpSession session = request.getSession();
				session.setAttribute("useremail", useremail);
				// Cookie cookie = new Cookie("useremail", useremail);
				// cookie.setMaxAge(Integer.MAX_VALUE);
				// response.addCookie(cookie);
				forward = "board.jsp";
			} else {
				request.setAttribute("msg", "用户名或密码错误!");
				forward = "error.jsp";
			}

			rd = request.getRequestDispatcher(forward);
			rd.forward(request, response);
		}
	}

}
