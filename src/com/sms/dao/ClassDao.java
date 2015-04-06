package com.sms.dao;

import java.sql.Connection;
import java.sql.SQLException;

import com.sms.Entity.Class;

public interface ClassDao {
	public boolean save(Connection conn, Class class1) throws SQLException;

	public boolean update(Connection conn, Long id, Class class1)
			throws SQLException;

	public boolean delete(Connection conn, Class class1) throws SQLException;
}
