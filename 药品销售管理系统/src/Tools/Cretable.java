package Tools;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class Cretable {
	public void createTable() throws SQLException{
		Connection conn=ConnectionMysqlDB.GetConnection();
		String sql="create table medicine(id int(100) primary key not null,name varchar(100) not null,"		
				+ "number int(100) not null)";
		Statement stat=conn.createStatement();
		stat.executeUpdate(sql);
		System.out.println("创建成功");
		//ConnectionMysqlDB.close(conn, stat, null);//ResultSet Statement Connection
	}



}
