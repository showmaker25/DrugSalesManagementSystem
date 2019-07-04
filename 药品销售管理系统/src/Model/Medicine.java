package Model;

public class Medicine {
	private int id;//���
	private String name;//�û���
	private int number;//����
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id =id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name=name;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public Medicine(int id, String name,int number) {
		super();
		this.id=id;
		this.name=name;
		this.number=number;
	}
	public Medicine() {
		super();
	}
	@Override
	public String toString() {
		return "User [id=" + id +  ", name="
				+ name +  ", number=" + number + "]";
	}

}
