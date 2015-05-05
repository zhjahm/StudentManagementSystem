package com.sms.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sms.Entity.User;
import com.sms.service.CheckUserService;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CheckUserService cus = new CheckUserService();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
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
		String username = request.getParameter("inputusername");
		String userpassword = request.getParameter("inputuserpassword");
		String reuserpassword = request.getParameter("inputreuserpassword");
		RequestDispatcher rd = null;
		String forward = null;
		if (useremail == null || userpassword == null) {
			request.setAttribute("msgtype", "error");
			request.setAttribute("msg", "用户名或密码为空!");
			rd = request.getRequestDispatcher("register.jsp");
			rd.forward(request, response);
			return;
		}
		if (!userpassword.equals(reuserpassword)) {
			request.setAttribute("msgtype", "error");
			request.setAttribute("msg", "两次密码不一致!");
			rd = request.getRequestDispatcher("register.jsp");
			rd.forward(request, response);
			return;
		}
		
		User user = new User();
		user.setEmail(useremail);
		user.setPassword(userpassword);
		user.setName(username);
		boolean bool = cus.regcheck(user);

		if (bool) {
			request.setAttribute("msgtype", "error");
			request.setAttribute("msg", "用户邮箱已存在!");
			forward = "register.jsp";
		} else {
			boolean regbool = cus.reg(user);
			if (regbool) {
				request.setAttribute("msgtype", "success");
				request.setAttribute("msg", "注册成功!");
				forward = "index.jsp";
			} else {
				request.setAttribute("msgtype", "error");
				request.setAttribute("msg", "注册失败!");
				forward = "register.jsp";
			}
		}
		rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);
		return;
	}
}
