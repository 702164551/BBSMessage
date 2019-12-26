package cn.jbit.demo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
/**
 * 数据库连接与关闭工具类
 */
public class BaseDao {
	public final static String DRIVER = "com.mysql.jdbc.Driver"; // 数据库驱动

	public final static String URL = "jdbc:mysql://localhost:3306/xiaoke?useUnicode=true&characterEncoding=utf8"; // url

	public final static String DBNAME = "root"; // 数据库用户名

	public final static String DBPASS = "root"; // 数据库密码
	protected Connection con = null;
	protected PreparedStatement ps = null;
	protected ResultSet rs = null;
	
	//获取连接
	protected void openConnection(){
				try {
			Class.forName(DRIVER);
			con = DriverManager.getConnection(URL, DBNAME, DBPASS); // 获得数据库连接
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // 注册驱动
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}	
	
	//更新新据库
	public int executeUpdata(String sql, List<Object> list){		
		openConnection();
		try {
			ps = con.prepareStatement(sql);
			if(list == null)
				return ps.executeUpdate();
			int i = 1;
			for(Object obj:list){
				ps.setObject(i, obj);
				i++;
			}
			return ps.executeUpdate();
		} catch (SQLException e) {			
			e.printStackTrace();
		}finally{
			closeResource();
		}
		return 0;
	}
	
	//关闭流
	protected void closeResource(){		
	try {
		if(rs != null)
			rs.close();
		if(ps != null)
			ps.close();
		if(con != null)
			con.close();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
