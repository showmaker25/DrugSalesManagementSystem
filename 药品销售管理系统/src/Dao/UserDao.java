package Dao;

import java.sql.SQLException;
import java.util.List;

import Model.User;

public interface UserDao {
		List<User> user_find();
		/**
		 * ��Ӷ���
		 * @param user
		 */
		void user_add(User user);
		
		/**
		 * ɾ������
		 * @param u_id
		 */
		void user_delete(String id);
		/**
		 * ��ѯ�޸��е���������
		 * @param u_id
		 * @return
		 */
		User updateSelete(String username);
		/*
		 * �ж��û��Ƿ����
		 * */
		 boolean isUserExist(String username) throws SQLException;
		 /*
		  * ��¼
		  * */
		User Login(String username,String password) throws SQLException;
		/**
		 * �޸Ķ���
		 * @param u_id
		 */
		void user_update(User user);
		/*
		 * �޸�����
		 * */
		 void update(String username, String psw);
		 /**/
		 User find(String password);
}
