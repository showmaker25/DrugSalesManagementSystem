package service;

import java.sql.SQLException;
import java.util.List;

import Model.User;

public interface Userservce {
	//����1.��ѯ
		/**
		 * ��ѯ���е�User
		 * @return user����
		 */
		List<User> user_find();
		
		//����2.���
		/**
		 * ���user
		 * @param user����һ��user����
		 */
		void user_add(User user);
		
		//����3.ɾ��
		/**
		 * ɾ��user
		 * @param u_id
		 */
		void user_delete(String id);
		
		//����3.��ѯ��Ȼ���޸�
		
		User updateSelete(String id);
		
		/**
		 * �޸�user
		 * @param u_id
		 */
		void user_update(User user);
		/*
		 * �ж��û��Ƿ����
		 * */
		 boolean isUserExist(String username) throws SQLException;
		 /*
		  * ��¼
		  * */
		User Login(String username,String password) throws SQLException;
		/*
		 * �����û����޸�����
		 * */
		 void update(String username, String psw);
		 /**/
		 User find(String password);
	}

