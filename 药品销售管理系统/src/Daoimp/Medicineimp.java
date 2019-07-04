package Daoimp;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import Dao.MedicineDao;
import Model.Medicine;
import Tools.BeanUtils;
import Tools.ConnectionMysqlDB;
public class Medicineimp implements MedicineDao{
@SuppressWarnings("static-access")
public List<Medicine> searchProduct(String name)  {
	ConnectionMysqlDB cm=new ConnectionMysqlDB();
        String sql = "SELECT * FROM medicine WHERE name = ?";
		List<Map<String, Object>> data = null;
		try {
			data = cm.excuteQuery(sql,name);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		List<Medicine> list = new ArrayList<>();
		for (Map<String, Object> map : data) {
			Medicine m = new Medicine();	
			BeanUtils.packageData(m, map);	
			list.add(m);
		}	
		return list;
	}
	public Medicine getMedicine(int id) throws SQLException {
		ConnectionMysqlDB cm=new ConnectionMysqlDB();
		String sql = "SELECT * FROM medicine WHERE id = ?";
		@SuppressWarnings("static-access")
		List<Map<String,Object>> data = cm.excuteQuery(sql, id);
		for (Map<String, Object> map : data) {
			Medicine m = new Medicine();	
			BeanUtils.packageData(m, map);
			return m;
		}	
		return null;
	}
	@SuppressWarnings("static-access")
	public void insertGoods(Medicine m) {
		ConnectionMysqlDB cm=new ConnectionMysqlDB();
		String sql = " insert into medicine(id,name,number)  value(?,?,?)";
		try {
			cm.excuteUpdate(sql, m.getId(),m.getName(),m.getNumber());
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	@SuppressWarnings("static-access")
	public void deleteGoods(int id) {
		ConnectionMysqlDB cm=new ConnectionMysqlDB();
		String sql = "delete from medicine where id=?";
		try {
			cm.excuteUpdate(sql, id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Override
	public Medicine getProduct(int id) {
		return null;
	}
}
