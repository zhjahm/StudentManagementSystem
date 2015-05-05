package com.sms.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
//import java.util.ArrayList;


import java.sql.ResultSet;

import com.sms.Entity.User;
import com.sms.dao.UserDao;
import com.sms.dao.impl.UserDaoImpl;
//import com.sms.dao.UserDao;
//import com.sms.dao.impl.UserDaoImpl;
import com.sms.util.ConnectionFactory;

public class UserDaoTest {

	public static void main(String[] args) {
		Connection conn = null;
		try {
			conn = ConnectionFactory.getInstance().makeConnection();
			//conn.setAutoCommit(false);// 禁用自动提交

//			UserDao userDao = new UserDaoImpl();
////			User tom = new User();
////			tom.setName("Tom");
////			tom.setPassword("123345");
////			tom.setEmail("tom@gmail.com");
//
//
//			
//			ArrayList<User> ar = userDao.select(conn);
//			for(User user : ar){
//				System.out.println(user.toString());
//			}
			
//			User user = new User();
//			user.setName("Tom");
//			user.setPassword("123345");
//			user.setEmail("tom@gmail.com");		
//			String sql = "INSERT INTO user(email,name,password) VALUES (?,?,?)";
//			PreparedStatement ps = null;
//			ps = conn.prepareCall(sql);
//			ps.setString(1, user.getEmail());
//			ps.setString(2, user.getName());
//			ps.setString(3, user.getPassword());
//			ps.execute();
			UserDao userDao = new UserDaoImpl();
			conn = ConnectionFactory.getInstance().makeConnection();
			conn.setAutoCommit(false);
			User user = new User();
			user.setEmail("jack@123.com");
			user.setPassword("123");
			ResultSet resultSet = userDao.get(conn, user);

			while (resultSet.next()) {
				System.out.print(11);
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
