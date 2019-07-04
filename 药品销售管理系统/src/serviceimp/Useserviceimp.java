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
		//业务逻辑查询的逻辑		
		if(true){
			UserDao dao = new Userimp();	
			List<User> user_find = dao.user_find();	
			return user_find;		
		}
		return null;
	}
	public void user_add(User user) {
		//业务逻辑  用户名不允许重复
		//添加用户
		UserDao dao = new Userimp();	
		dao.user_add(user);	
	}
	public void user_delete(String id) {
		//业务逻辑 用户存在才能删除
		//删除用户	
		UserDao dao = new Userimp();
		dao.user_delete(id);
	}
	public void user_update(User user){
		//业务逻辑 首先得有这个user才能修改
		//修改用户的信息
		UserDao dao = new Userimp();
		dao.user_update(user);
	}
	public User updateSelete(String id) {
		//查询这一列数据
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
