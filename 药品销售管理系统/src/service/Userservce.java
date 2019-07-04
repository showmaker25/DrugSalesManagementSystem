package service;

import java.sql.SQLException;
import java.util.List;

import Model.User;

public interface Userservce {
	//需求1.查询
		/**
		 * 查询所有的User
		 * @return user集合
		 */
		List<User> user_find();
		
		//需求2.添加
		/**
		 * 添加user
		 * @param user传入一个user对象
		 */
		void user_add(User user);
		
		//需求3.删除
		/**
		 * 删除user
		 * @param u_id
		 */
		void user_delete(String id);
		
		//需求3.查询，然后修改
		
		User updateSelete(String id);
		
		/**
		 * 修改user
		 * @param u_id
		 */
		void user_update(User user);
		/*
		 * 判断用户是否存在
		 * */
		 boolean isUserExist(String username) throws SQLException;
		 /*
		  * 登录
		  * */
		User Login(String username,String password) throws SQLException;
		/*
		 * 根据用户名修改密码
		 * */
		 void update(String username, String psw);
		 /**/
		 User find(String password);
	}

