package serviceimp;
import java.sql.SQLException;
import java.util.List;
import Dao.UserDao;
import Daoimp.Userimp;
import Model.User;
import service.Userservce;
public class Useserviceimp implements Userservce{
	@SuppressWarnings("unused")
	public List<User> user_find() {
		//ҵ���߼���ѯ���߼�		
		if(true){
			UserDao dao = new Userimp();	
			List<User> user_find = dao.user_find();	
			return user_find;		
		}
		return null;
	}
	public void user_add(User user) {
		//ҵ���߼�  �û����������ظ�
		//����û�
		UserDao dao = new Userimp();	
		dao.user_add(user);	
	}
	public void user_delete(String id) {
		//ҵ���߼� �û����ڲ���ɾ��
		//ɾ���û�	
		UserDao dao = new Userimp();
		dao.user_delete(id);
	}
	public void user_update(User user){
		//ҵ���߼� ���ȵ������user�����޸�
		//�޸��û�����Ϣ
		UserDao dao = new Userimp();
		dao.user_update(user);
	}
	public User updateSelete(String id) {
		//��ѯ��һ������
		UserDao dao = new Userimp();
		User user = dao.updateSelete(id);
		return user;
	}
	
	public User Login(String username, String password) throws SQLException {
	UserDao dao=new Userimp();
	User user=dao.Login(username, password);
		return user;
	}
	@Override
	public boolean isUserExist(String username) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}
	public void update(String username, String psw) {
		UserDao dao=new Userimp();
		dao.update(username, psw);
	}
	@Override
	public User find(String password) {
		UserDao dao = new Userimp();
		User user = dao.find(password);
		return user;
	}
}
