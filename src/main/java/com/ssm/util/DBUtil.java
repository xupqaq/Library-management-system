package com.ssm.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import com.alibaba.druid.pool.DruidDataSource;

public class DBUtil {
	
	// Oracle数据库配置的JNDI数据源连接名,后面跟的是DataSource名，DataSource名在web.xml文件中的<res-ref-name></res-ref-name>进行了配置
	private static final String ORACLE_DB_JNDINAME = "java:comp/env/jdbc/OracleDataSource";

	private static DruidDataSource dsOracle = null;
	
	
	static{
        try {
            //1、初始化名称查找上下文
            Context ctx = new InitialContext();
            //2、通过JNDI名称找到DataSource
            dsOracle = (DruidDataSource) ctx.lookup(ORACLE_DB_JNDINAME);
           
        } catch (NamingException e) {
            e.printStackTrace();
        }
    }

	public static Connection getConnection() {
		try {
			return dsOracle.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	
	/*static{
		//加载数据库驱动
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}*/
	
	/*public static Connection getConnection(){
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, dbName, dbPass);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	*/
	
	
	public static void closeAll(PreparedStatement pstmt, ResultSet rs, Connection conn){
		try {
			if(rs != null){
				rs.close();
			}
			if(null != pstmt){
				pstmt.close();
			}
			if(null != conn){
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
