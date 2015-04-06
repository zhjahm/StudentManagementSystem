package com.sms.test;

import java.sql.Connection;
import java.util.ArrayList;

import com.sms.Entity.User;
import com.sms.dao.UserDao;
import com.sms.dao.impl.UserDaoImpl;
import com.sms.util.ConnectionFactory;

public class UserDaoTest {

	public static void main(String[] args) {
		Connection conn = null;
		try {
			conn = ConnectionFactory.getInstance().makeConnection();
			//conn.setAutoCommit(false);// 禁用自动提交

			UserDao userDao = new UserDaoImpl();
//			User tom = new User();
//			tom.setName("Tom");
//			tom.setPassword("123345");
//			tom.setEmail("tom@gmail.com");

			ArrayList<User> ar = userDao.select(conn);
			for(User user : ar){
				System.out.println(user.toString());
			}

		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			e.printStackTrace();
		}
	}

}
