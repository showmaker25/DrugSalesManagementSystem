package Tools;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
public class ConnectionMysqlDB {
	private static String DRIVER;
	private static String URL;
	private static String USER;
	private static String PASSWORD;
	private static Connection connection;
	private static Statement statement;
	private static PreparedStatement preparedStatement;
	private static ResultSet resultSet;
	private static ResultSet resultSet2;
	static{
		Properties prop=new Properties();
		InputStream is=ConnectionMysqlDB.class.getResourceAsStream("jdbcinfor.properties");
			try {
				prop.load(is);
			} catch (IOException e) {
				e.printStackTrace();
			}
			DRIVER=prop.getProperty("mysql.driver");
			URL=prop.getProperty("mysql.url");
			USER=prop.getProperty("mysql.user");
			PASSWORD=prop.getProperty("mysql.password");
	}
	public static Connection GetConnection(){
		Connection conn=null;
		try {
			Class.forName(DRIVER);
			try {
				conn=DriverManager.getConnection(URL, USER, PASSWORD);
				System.out.println("数据库连接成功！");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return conn;
	}
		public void dbClose(){
			if(resultSet!=null){
				try {
					resultSet.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(preparedStatement!=null){
				try {
					preparedStatement.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(connection!=null){
				try {
					connection.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}//;	
		 /**
		  * 
		  * @param sql  sql语句     select * from student [where s_name=? and s_age=?]
		  * @param obj  参数         查询名字叫小明，年龄是11的学生  Object[] obj={"小明",11};
		  * @return  返回一个集合
		  */
		public ResultSet select(String sql,Object[]obj){
			connection=GetConnection();
			try {		
				preparedStatement=connection.prepareStatement(sql);		
				for(int i=0;i<obj.length;i++){
					preparedStatement.setObject(i+1, obj[i]);;
				}	
			} catch (SQLException e) {
				e.printStackTrace();
			}
				try {
					resultSet=preparedStatement.executeQuery();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				return resultSet;
		}//;	
		/**
		 * 
		 * @param sql  修改的sql语句  insert  update delete
		 * @param obj
		 * @return  int类型的数据  表示修改了几条
		 */
		public int update(String sql,Object[]obj){
			connection=GetConnection();
			try {
				preparedStatement=connection.prepareStatement(sql);
				for(int i=0;i<obj.length;i++){
					preparedStatement.setObject(i+1, obj[i]);
				}	
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			int i=0;
			try {
				i=preparedStatement.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return i;  //修改了几条	
		}//;
		

	
	public static void close(ResultSet set, PreparedStatement ps,
			Connection conn) {
		try {
			if (set != null) {
				set.close();
			}
			if (ps != null) {
				ps.close();
			}
			if (conn != null) {
				conn.close();
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	static int excute(String sql1,String sql2) throws SQLException {
		statement=connection.createStatement();
		resultSet=statement.executeQuery(sql1);
		resultSet2=statement.executeQuery(sql2);
		if(resultSet.next()&&resultSet2.next()) {
		  return 0;
		}else {
			return 1;
		}
		
	}

public static int excuteUpdate(String sql, Object... args) throws SQLException {
		
			connection=GetConnection();
			preparedStatement = connection.prepareStatement(sql);
			for (int i = 0; i < args.length; i++) {
				preparedStatement.setObject(i + 1, args[i]);
			}
			return preparedStatement.executeUpdate();
	}
	
	public static  List<Map<String,Object>>   excuteQuery(String sql,Object... args) throws SQLException{
			connection=GetConnection();
			preparedStatement = connection.prepareStatement(sql);
			for (int i = 0; i < args.length; i++) {
				preparedStatement.setObject(i + 1, args[i]);
			}
			resultSet = preparedStatement.executeQuery();
			int count = resultSet.getMetaData().getColumnCount();
			List<Map<String,Object>> list = new ArrayList<>();
			while(resultSet.next()){
				Map<String,Object> map = new HashMap<>();
				for(int i=0;i<count;i++){
					Object value = resultSet.getObject(i+1);
					String key = resultSet.getMetaData().getColumnName(i+1);
					map.put(key, value);
				}
				list.add(map);
			}
            return list;
	}
	}
	

