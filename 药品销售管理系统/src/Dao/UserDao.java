package Dao;

import java.sql.SQLException;
import java.util.List;

import Model.User;

public interface UserDao {
		List<User> user_find();
		/**
		 * 添加对象
		 * @param user
		 */
		void user_add(User user);
		
		/**
		 * 删除对象
		 * @param u_id
		 */
		void user_delete(String id);
		/**
		 * 查询修改列的所有属性
		 * @param u_id
		 * @return
		 */
		User updateSelete(String username);
		/*
		 * 判断用户是否存在
		 * */
		 boolean isUserExist(String username) throws SQLException;
		 /*
		  * 登录
		  * */
		User Login(String username,String password) throws SQLException;
		/**
		 * 修改对象
		 * @param u_id
		 */
		void user_update(User user);
		/*
		 * 修改密码
		 * */
		 void update(String username, String psw);
		 /**/
		 User find(String password);
}
