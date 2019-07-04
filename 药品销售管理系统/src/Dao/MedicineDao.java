package Dao;

import java.sql.SQLException;
import java.util.List;

import Model.Medicine;

public interface MedicineDao {
	/**
	 * ����keyword�����в�Ʒ
	 * @throws SQLException 
	 * */
	List<Medicine> searchProduct(String name) ;
	
	/**
	 * ����id���Ʒ
	 * */
	Medicine getProduct(int id);
	
	/**
	 * ������ҩƷ
	 * @param p ��Ʒ����
	 */
	public void insertGoods(Medicine m);
	
	/**
	 * ɾ��ҩƷ
	 * @param id
	 */
	public void deleteGoods(int id);
}
