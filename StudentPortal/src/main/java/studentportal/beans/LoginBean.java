package studentportal.beans;

public class LoginBean {
	 private String username;
	 private String password;
	 private String captcha;
	 private String Name;
	 private String Mobile;
	 private String Address;
	 private String Gender;
	 private String F_name;
	 private String Date_B;
	 private String Email;
	 private String State;
	 private String Dist;
	 private String City;
	 private String id;
	 
	 
	 public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
	 public String getMobile() {
		return Mobile;
	}
	public void setMobile(String mobile) {
		Mobile = mobile;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	 public String getName() {
			return Name;
		}
		public void setName(String name) {
			Name = name;
		}
		public String getGender() {
			return Gender;
		}
		public void setGender(String gender) {
			Gender = gender;
		}
		public String getF_name() {
			return F_name;
		}
		public void setF_name(String f_name) {
			F_name = f_name;
		}
		public String getDate_B() {
			return Date_B;
		}
		public void setDate_B(String date_B) {
			Date_B = date_B;
		}
		public String getEmail() {
			return Email;
		}
		public void setEmail(String email) {
			Email = email;
		}
		public String getState() {
			return State;
		}
		public void setState(String state) {
			State = state;
		}
		public String getDist() {
			return Dist;
		}
		public void setDist(String dist) {
			Dist = dist;
		}
		public String getCity() {
			return City;
		}
		public void setCity(String city) {
			City = city;
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
	public String getCaptcha() {
		return captcha;
	}
	public void setCaptcha(String captcha) {
		this.captcha = captcha;
	}
	@Override
	public String toString() {
		return "LoginBean [username=" + username + ", password=" + password + ", captcha=" + captcha + ", Name=" + Name
				+ ", Mobile=" + Mobile + ", Address=" + Address + ", Gender=" + Gender + ", F_name=" + F_name
				+ ", Date_B=" + Date_B + ", Email=" + Email + ", State=" + State + ", Dist=" + Dist + ", City=" + City
				+ ", id=" + id + "]";
	}
	
	

	

}
