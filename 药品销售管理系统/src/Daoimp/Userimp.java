package Daoimp;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import Dao.UserDao;
import Model.User;
import Tools.BeanUtils;
import Tools.ConnectionMysqlDB;
public class Userimp implements UserDao{
	/*
	 * 添加用户
	 * */
	public void user_add(User user) {
		ConnectionMysqlDB cm=new ConnectionMysqlDB();
	
		String sql = "insert into user(id,username,password,name,sex,tele,birth) values(?,?,?,?,?,?,?)";
		Object[] obj ={user.getId(),user.getUsername(),user.getPassword(),user.getName(),user.getSex(),user.getTele()
				,user.getBirth()};

		cm.update(sql, obj);
		cm.dbClose();
	}
	/*
	 * 根据用户身份证号查询用户信息
	 * */
public User updateSelete(String id) {
	ConnectionMysqlDB cm=new ConnectionMysqlDB();
	String sql="select password from user where id=?";
		Object[] obj ={id};
		ResultSet set = cm.select(sql, obj);
		User user = null;
		try {
			while(set.next()){		
				user = new User(id, set.getString("password"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
public User find(String password) {
	ConnectionMysqlDB cm=new ConnectionMysqlDB();
	String sql="select id,username,name,sex,birth,tele from user where password=?";
		Object[] obj ={password};
		ResultSet set = cm.select(sql, obj);
		User user = null;
		try {
			while(set.next()){		
				user = new User(set.getString("id"),set.getString("username"),set.getString("name"),
						set.getString("sex"),set.getString("birth"),set.getString("tele"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
}
/*
 * Admin层删除用户
 * */
public void user_delete(String id) {
	ConnectionMysqlDB cm=new ConnectionMysqlDB();
	String sql="delete from user where id=?";
	Object[] obj={id};
	cm.update(sql, obj);
}
/*
 * 
 * */
public List<User> user_find() {
	ConnectionMysqlDB cm=new ConnectionMysqlDB();
	String sql = "select * from user";
	Object[] obj ={};
	ResultSet set = cm.select(sql, obj);
	List<User> list = new ArrayList<>();
	try {
		while(set.next()){	
			User u = new User(	set.getString(1), set.getString(2), set.getString(3), set.getString(4), set.getString(5), set.getString(6), set.getString(7));
			list.add(u);
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return list;
}
/*
 * 修改用户
 * */
@SuppressWarnings("static-access")
public void user_update(User user) {
	ConnectionMysqlDB cm=new ConnectionMysqlDB();
	String sql ="update user set id=?,username=?,name=?,sex=?,tele=?,birth=? where password=?";
	Object[] obj = {user.getId(),user.getUsername(),user.getName(),user.getSex(),user.getTele(),user.getBirth()};
	try {
		cm.excuteUpdate(sql, obj);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
/*
 * 修改密码
 * */
@SuppressWarnings("static-access")
public void update(String username, String psw) {
	ConnectionMysqlDB cm=new ConnectionMysqlDB();
	String sql = "update user set password=? where username=?";
	try {
		cm.excuteUpdate(sql, psw,username);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}
//登录操作
@SuppressWarnings("static-access")
public User AdminLogin(String username, String password) {
	ConnectionMysqlDB cm=new ConnectionMysqlDB();
	String sql = "SELECT * FROM user WHERE username = ? AND password = ?";
	List<Map<String, Object>> list = null;
	try {
		list = cm.excuteQuery(sql, username,password);
	} catch (SQLException e) {
		e.printStackTrace();
	}
	for (Map<String, Object> map : list) {
		User user = new User();
		BeanUtils.packageData(user, map);
		return user;
	}
	return null;	
}
@SuppressWarnings("static-access")
public User Login(String username, String password) {
	ConnectionMysqlDB cm=new ConnectionMysqlDB();
	String sql = "SELECT * FROM user WHERE username = ? AND password = ?";
	List<Map<String, Object>> list = null;
	try {
		list = cm.excuteQuery(sql, username,password);
	} catch (SQLException e) {
		e.printStackTrace();
	}
	for (Map<String, Object> map : list) {
		User user = new User();
		BeanUtils.packageData(user, map);
		return user;
	}
	return null;	
}
//判断用户是否存在
public boolean isUserExist(String username) throws SQLException {
	String sql = "SELECT * FROM user WHERE username = ?";
	List<Map<String,Object>> list = ConnectionMysqlDB.excuteQuery(sql, username);
	return list.size()>0;
}
}

