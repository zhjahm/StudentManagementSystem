package com.sms.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sms.Entity.User;

public interface UserDao {

	public ArrayList<User> select(Connection conn) throws SQLException;

	public boolean save(Connection conn, User user) throws SQLException;

	public boolean update(Connection conn, Long id, User user) throws SQLException;

	public boolean delete(Connection conn, User user) throws SQLException;

	public ResultSet get(Connection conn, User user) throws SQLException;

}
