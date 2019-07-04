package test;
import java.sql.SQLException;
import Tools.Cretable;
public class Test {
	public static void main(String[] args) throws SQLException {
	/*	System.out.println("Ìí¼Ósuccess");
		UserDao ud=new Userimp();
		//ud.user_add(new User("1","112","112","8","8","8","8"));
		//User s=ud.Login("112", "112");
		Userservce us=new Useserviceimp();
		User s=us.Login("112", "112");
		System.out.println(s);
		System.out.println("Ìí¼Ósuccess");*/
		Cretable ct=new Cretable();
        ct.createTable();
	}
}
