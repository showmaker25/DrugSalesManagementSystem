package Dao;

import java.sql.SQLException;
import java.util.List;

import Model.Medicine;

public interface MedicineDao {
	/**
	 * 根据keyword查所有产品
	 * @throws SQLException 
	 * */
	List<Medicine> searchProduct(String name) ;
	
	/**
	 * 根据id查产品
	 * */
	Medicine getProduct(int id);
	
	/**
	 * 增加新药品
	 * @param p 商品对象
	 */
	public void insertGoods(Medicine m);
	
	/**
	 * 删除药品
	 * @param id
	 */
	public void deleteGoods(int id);
}
