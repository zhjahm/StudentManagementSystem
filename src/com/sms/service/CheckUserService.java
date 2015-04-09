package com.sms.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.sms.Entity.User;
import com.sms.dao.UserDao;
import com.sms.dao.impl.UserDaoImpl;
import com.sms.util.ConnectionFactory;

public class CheckUserService {

	private UserDao userDao = new UserDaoImpl();

	public boolean check(User user) {
		Connection conn = null;

		try {
			conn = ConnectionFactory.getInstance().makeConnection();
			conn.setAutoCommit(false);

			ResultSet resultSet = userDao.get(conn, user);

			while (resultSet.next()) {
				return true;
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
		return false;
	}

	public boolean regcheck(User user) {
		Connection conn = null;
		boolean flag = false;
		try {
			conn = ConnectionFactory.getInstance().makeConnection();
			conn.setAutoCommit(false);

			flag = userDao.regget(conn, user);

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

		return flag;
	}

	public boolean reg(User user) {
		Connection conn = null;
		boolean flag = false;
		try {
			conn = ConnectionFactory.getInstance().makeConnection();
			// conn.setAutoCommit(false);
			flag = userDao.save(conn, user);
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
		return flag;
	}

}
