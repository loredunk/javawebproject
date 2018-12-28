package POJO;

public class Member {
	private int id;
	private String hobby;
	private String name;
	private String sex;
	private int age;
	private String classId;
	private int dorm;
	private String tel;
	private String birthday;
	private String username;
	private String password;
	private String email;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getClassId() {
		return classId;
	}

	public void setClassId(String classId) {
		this.classId = classId;
	}

	public int getDorm() {
		return dorm;
	}

	public void setDorm(int dorm) {
		this.dorm = dorm;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
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

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "student[id=" + id + ",name=" + name + ",age=" + age
				+",classId=" + classId+",sex="+sex+ ",birthday="+birthday+",hobby=" + hobby +",dorm="+dorm+ ",tel="+tel+",username="+username
				+",password="+password+",email="+email+"]";

	}

}
