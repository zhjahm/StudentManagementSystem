package com.sms.service;

import java.sql.Connection;
import java.sql.ResultSet;

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
			e.printStackTrace();
		} finally {
			try {
				conn.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			} finally {
				try {
					conn.close();
				} catch (Exception e3) {
					e3.printStackTrace();
				}
			}
		}

		return false;
	}
}
