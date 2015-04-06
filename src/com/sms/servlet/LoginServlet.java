package com.sms.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 3597635726869740173L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String userName = req.getParameter("inputUser");
		String password = req.getParameter("inputPassword");
		String forward = null;
		if (userName == password) {
			forward = "board.jsp";
			//请求转发
			RequestDispatcher rd = req.getRequestDispatcher(forward);
			rd.forward(req, resp);
			
			//重定向
			//resp.sendRedirect(forward);

		} else {
			forward = "error.jsp";
			RequestDispatcher rd = req.getRequestDispatcher(forward);
			rd.forward(req, resp);
		}
	}

}
