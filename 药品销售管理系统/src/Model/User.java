package Model;
public class User {
	private String id;//身份证
	private String username;//用户名
	private String password;//密码
	private String name;//姓名
	private String sex;//性别
	private String tele;//电话
	private String birth;//出生日期
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id 

 = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName(){
		return name;
	}
	public void setName(String name){
		this.name 

=name;
	}
	public String getSex(){
		return sex;
	}
	public void setSex(String sex){
		this.sex=sex;
	}
	public String getTele() {
		return tele;
	}
	public void setTele(String tele) {
		this.tele = tele;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String brith) {
		birth = brith;
	}
	public User(String id, String username, String password, String name,
			String sex, String tele, String birth) {
		super();
		this.id= id;
		this.username = username;
		this.password = password;
		this.name= name;
		this.sex= sex;
		this.tele = tele;
		this.birth = birth;
	}
	public User(String id, String username,  String name,
			String sex,  String birth,String tele) {
		super();
		this.id= id;
		this.username = username;
		this.name= name;
		this.sex= sex;
		this.tele = tele;
		this.birth = birth;
	}
	public User(String id,String password) {
		super();
		this.id= id;

		this.password = password;
	}
	public User(String password) {
		super();
		this.password = password;
	}
	public User() {
		super();
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password="
				+ password + ", name=" + name + ", sex=" + sex + ", tele="
				+ tele + ", Birth=" + birth + "]";
	}
	

}
