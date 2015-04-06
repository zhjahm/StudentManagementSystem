package com.sms.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.sms.Entity.Class;
import com.sms.dao.ClassDao;

public class ClassDaoImpl implements ClassDao {

	@Override
	public boolean save(Connection conn, Class class1) throws SQLException {
		boolean flag = false;
		String sql = "INSERT INTO class(name,schoolid) VALUES (?,?)";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareCall(sql);
			ps.setString(1, class1.getName());
			ps.setLong(2, class1.getSchoolid());
			ps.execute();
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
			flag = false;
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return flag;
	}

	@Override
	public boolean update(Connection conn, Long id, Class class1)
			throws SQLException {
		boolean flag = false;
		String sql = "UPDATE class SET name = ?,schoolid = ? WHERE id = ?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareCall(sql);
			ps.setString(1, class1.getName());
			ps.setLong(2, class1.getSchoolid());
			ps.setLong(4, id);
			ps.execute();
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
			flag = false;
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return flag;
	}

	@Override
	public boolean delete(Connection conn, Class class1) throws SQLException {
		boolean flag = false;
		String sql = "DELETE FROM class WHERE id = ?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareCall(sql);
			ps.setLong(1, class1.getId());
			ps.execute();
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
			flag = false;
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return flag;
	}

}
