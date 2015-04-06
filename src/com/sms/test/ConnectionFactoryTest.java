package com.sms.test;

import java.sql.Connection;

import com.sms.util.ConnectionFactory;

public class ConnectionFactoryTest {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		ConnectionFactory cf = ConnectionFactory.getInstance();
		
		Connection conn = cf.makeConnection();
		
		System.out.print(conn.getAutoCommit());
	}

}
