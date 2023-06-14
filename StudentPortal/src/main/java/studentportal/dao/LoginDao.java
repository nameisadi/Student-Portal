package studentportal.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import studentportal.beans.FileBean;
import studentportal.beans.LoginBean;
import studentportal.beans.NoticeBean;
import studentportal.beans.SemesterBean;
import studentportal.beans.registrationbean;

public class LoginDao {
	static JdbcTemplate jdbcTemplate;
	private Object id;
	

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public boolean matchQuery(LoginBean bean) {
		System.out.println("dddddd" + jdbcTemplate);
		System.out.println(bean.getUsername() + "aaakkkk");
		String s = null;
		try {
			String sql = "select password from login where username= ?";
			System.out.println(sql + "ttt");
			s = jdbcTemplate.queryForObject(sql, String.class, bean.getUsername());
			// System.out.println( "jjjjjjjjjjjjjjjjj"+s);
			System.out.println(bean.getPassword() + "hhhhh");
		} catch (DataAccessException e) {
			return false;
		}

		if (s.equals(bean.getPassword())) {
			return true;
		} else {
			return false;
		}
	}

	

	public List<FileBean> getData() {
		return jdbcTemplate.query("select * from login", new RowMapper<FileBean>() {
			public FileBean mapRow(ResultSet rs, int row) throws SQLException {
				FileBean e = new FileBean();
				e.setFileName(rs.getString(13));

				return e;
			}
		});
	}


	
	
	public static int insertquery(registrationbean bean) {
			
			System.out.println("bean.getName() "+bean.getName());
			System.out.println("bean.getF_Name() "+bean.getF_Name());
			System.out.println("bean.getGender() "+bean.getGender());
			System.out.println("bean.getMobile() "+bean.getMobile());
			System.out.println("bean.getAddress() "+bean.getAddress());
			System.out.println("bean.getDate_B() "+bean.getDate_B());
			System.out.println("bean.getEmail() "+bean.getEmail());
			System.out.println("bean.getState() "+bean.getState());
			System.out.println("bean.getDist() "+bean.getDist());
			System.out.println("bean.getCity() "+bean.getCity());
			System.out.println("bean.getUsername() "+bean.getUsername());
			System.out.println("bean.getPassword() "+bean.getPassword());
		

			
			
			 
			String sql="insert into login(name,f_name,gender,mobile,address,date_b,email,state,dist,city,username,password,identity) values(?,?,?,?,?,?,?,?,?,?,?,?,'Student')";
			
			return jdbcTemplate.update(sql,new Object[] {bean.getName(),bean.getF_Name(),bean.getGender(),bean.getMobile(),bean.getAddress(),bean.getDate_B(),bean.getEmail(),bean.getState(),bean.getDist(),bean.getCity(),bean.getUsername(),bean.getPassword()});
	
			}
	public static int insertquery3(NoticeBean bean) {
		
		System.out.println("bean.getNotice() "+bean.getNotice());
		System.out.println("bean.getNotice2() "+bean.getNotice2());
		System.out.println("bean.getNotice3() "+bean.getNotice3());
		System.out.println("bean.getNotice4() "+bean.getNotice4());
		System.out.println("bean.getNotice5() "+bean.getNotice5());
		System.out.println("bean.getNotice6() "+bean.getNotice6());
		System.out.println("bean.getNotice7() "+bean.getNotice7());
		System.out.println("bean.getNotice8() "+bean.getNotice8());
		System.out.println("bean.getNotice9() "+bean.getNotice9());
		System.out.println("bean.getNotice10() "+bean.getNotice10());
	
		String sql="insert into notice(notice,notice2,notice3,notice4,notice5,notice6,notice7,notice8,notice9,notice10) values(?,?,?,?,?,?,?,?,?,?)";
		
		return jdbcTemplate.update(sql,new Object[] {bean.getNotice(),bean.getNotice2(),bean.getNotice3(),bean.getNotice4(),bean.getNotice5(),bean.getNotice6(),bean.getNotice7(),bean.getNotice8(),bean.getNotice9(),bean.getNotice10()});

		}



	public List<LoginBean> getList(String user) {
		
		  System.out.println("LOGIN DETAILS"+user); 

	
		return jdbcTemplate.query("SELECT * FROM login where username='"+user+"'",new RowMapper<LoginBean>()
		{
			public LoginBean mapRow(ResultSet rs, int row) throws SQLException {
				LoginBean e = new LoginBean();
				
				e.setName(rs.getString(3));
				e.setGender(rs.getString(10));
				e.setF_name(rs.getString(4));
				e.setDate_B(rs.getString(12));
				e.setEmail(rs.getString(6));
				e.setMobile(rs.getString(11));
				e.setAddress(rs.getString(5));
				e.setState(rs.getString(7));
				e.setDist(rs.getString(8));
				e.setCity(rs.getString(9));
				e.setPassword(rs.getString(2));
				e.setId(rs.getString(13));
				e.setUsername(rs.getString(1));

				return e;
			
			}

		});
	}
	
	


	public List<SemesterBean> getList1(String sec ) {
		return jdbcTemplate.query("select * from Semester join login on Semester.id = login.id where login.username ='"+sec+"'", new RowMapper<SemesterBean>() {
			public SemesterBean mapRow(ResultSet rs, int row) throws SQLException {
				SemesterBean e = new SemesterBean();
				e.setId(rs.getInt(8));
				e.setRoll(rs.getString(1));
				e.setEnglish(rs.getString(2));
				e.setMath(rs.getString(3));
				e.setComputer(rs.getString(4));
				e.setSocial(rs.getString(5));
				e.setMarkobt(rs.getString(6));
				e.setMaxmark(rs.getString(7));
			
				return e;

			}

		});
	}
	

	public static int insertquery1(SemesterBean bean) {
		System.out.println("bean.getId() "+bean.getId());
		System.out.println("bean.getRoll() "+bean.getRoll());
		System.out.println("bean.getEnglish() "+bean.getEnglish());
		System.out.println("bean.getMath() "+bean.getMath());
		System.out.println("bean.getComputer() "+bean.getComputer());
		System.out.println("bean.getSocial() "+bean.getSocial());
		System.out.println("bean.getMarkobt() "+bean.getMarkobt());
		System.out.println("bean.getMaxmark() "+bean.getMaxmark());
		
		
		String sql="insert into semester (id,roll,english,math,computer,social,markobt,maxmark) values (?,?,?,?,?,?,?,?)";
		
		return jdbcTemplate.update(sql,new Object[] {bean.getId(),bean.getRoll(),bean.getEnglish(),bean.getMath(),bean.getComputer(),bean.getSocial(),bean.getMarkobt(),bean.getMaxmark()});
		
		
	}
	
	/*
	 * public static int insertquery3(SemesterBean bean) {
	 * 
	 * System.out.println("bean.getRoll "+bean.getRoll());
	 * System.out.println("bean.getEnglish() "+bean.getEnglish());
	 * System.out.println("bean.getMath() "+bean.getMath());
	 * System.out.println("bean.getComputer() "+bean.getComputer());
	 * System.out.println("bean.getSocial() "+bean.getSocial());
	 * System.out.println("bean.getMarkobt() "+bean.getMarkobt());
	 * System.out.println("bean.getMaxmark() "+bean.getMaxmark());
	 * System.out.println("bean.getId() "+bean.getId());
	 * 
	 * 
	 * String
	 * sql="insert into semester (roll,english,math,computer,social,markobt,maxmark,id) values (?,?,?,?,?,?,?,?)"
	 * ;
	 * 
	 * return jdbcTemplate.update(sql,new Object[]
	 * {bean.getRoll(),bean.getEnglish(),bean.getMath(),bean.getComputer(),bean.
	 * getSocial(),bean.getMarkobt(),bean.getMaxmark(),bean.getId()});
	 * 
	 * }
	 */

			
public static int insertquery2(registrationbean bean) {
	
	/*
	 * System.out.println("bean.getName() "+bean.getName());
	 * System.out.println("bean.getF_Name() "+bean.getF_Name());
	 * System.out.println("bean.getGender() "+bean.getGender());
	 * System.out.println("bean.getMobile() "+bean.getMobile());
	 * System.out.println("bean.getAddress() "+bean.getAddress());
	 * System.out.println("bean.getDate_B() "+bean.getDate_B());
	 * System.out.println("bean.getEmail() "+bean.getEmail());
	 * System.out.println("bean.getState() "+bean.getState());
	 * System.out.println("bean.getDist() "+bean.getDist());
	 * System.out.println("bean.getCity() "+bean.getCity());
	 * System.out.println("bean.getUsername() "+bean.getUsername());
	 * System.out.println("bean.getPassword() "+bean.getPassword());
	 * System.out.println("bean.getPassword2() "+bean.getPassword2());
	 */
	
	
	
	String sql="update login set(name,f_name,gender,mobile,address,date_b,email,state,dist,city,username,password) values(?,?,?,?,?,?,?,?,?,?,?,?) where id=?";
	
	return jdbcTemplate.update(sql,new Object[] {bean.getName(),bean.getF_Name(),bean.getGender(),bean.getMobile(),bean.getAddress(),bean.getDate_B(),bean.getEmail(),bean.getState(),bean.getDist(),bean.getCity(),bean.getUsername(),bean.getPassword()});

	}



	/*
	 * public int updatequery(registrationbean bean) { String sql =
	 * "update login set name='" + bean.getName() +"',f_Name='" + bean.getF_Name()
	 * +"',gender='" + bean.getGender() + "',mobile='" + bean.getMobile() +
	 * "',address='" + bean.getAddress() + "',date_b='" + bean.getDate_B() +
	 * "',email='" + bean.getEmail()+ "',state='" + bean.getState()+ "',dist='" +
	 * bean.getDist() + "',city='" + bean.getCity() ;
	 * 
	 * return jdbcTemplate.update(sql); }
	 */

public List<LoginBean> getList4() {
	
	  System.out.println("LOGIN DETAILS OF ALL USERS"); 


	return jdbcTemplate.query("SELECT * FROM login where identity='Student' ORDER BY id ASC",new RowMapper<LoginBean>()
	{
		public LoginBean mapRow(ResultSet rs, int row) throws SQLException {
			LoginBean e = new LoginBean();
			
			e.setName(rs.getString(3));
			e.setGender(rs.getString(10));
			e.setF_name(rs.getString(4));
			e.setDate_B(rs.getString(12));
			e.setEmail(rs.getString(6));
			e.setMobile(rs.getString(11));
			e.setAddress(rs.getString(5));
			e.setState(rs.getString(7));
			e.setDist(rs.getString(8));
			e.setCity(rs.getString(9));
			e.setPassword(rs.getString(2));
			e.setId(rs.getString(13));
			e.setUsername(rs.getString(1));
			
			return e;
		
		}

	});
}

public List<SemesterBean> getList5() {
	return jdbcTemplate.query("SELECT * FROM semester ORDER BY id ASC", new RowMapper<SemesterBean>() {
		public SemesterBean mapRow(ResultSet rs, int row) throws SQLException {
			SemesterBean e = new SemesterBean();
	
			e.setId(rs.getInt(8));
			e.setRoll(rs.getString(1));
			e.setEnglish(rs.getString(2));
			e.setMath(rs.getString(3));
			e.setComputer(rs.getString(4));
			e.setSocial(rs.getString(5));
			e.setMarkobt(rs.getString(6));
			e.setMaxmark(rs.getString(7));
		
			return e;

		}

	});
}


public List<NoticeBean> getList6() {
	return jdbcTemplate.query("SELECT  * FROM notice where notice is not null and notice2 is not null and notice3 is not null and notice4 is not null and notice5 is not null and notice6 is not null and notice7 is not null and notice8 is not null and notice9 is not null and notice10 is not null", new RowMapper<NoticeBean>() {
		public NoticeBean mapRow(ResultSet rs, int row) throws SQLException {
			
			NoticeBean e = new NoticeBean();
	
			e.setNotice(rs.getString(1));
			e.setNotice2(rs.getString(2));
			e.setNotice3(rs.getString(3));
			e.setNotice4(rs.getString(4));
			e.setNotice5(rs.getString(5));
			e.setNotice6(rs.getString(6));
			e.setNotice7(rs.getString(7));
			e.setNotice8(rs.getString(8));
			e.setNotice9(rs.getString(9));
			e.setNotice10(rs.getString(10));
			return e;

		}

	});
}

/*
 * public List<NoticeBean> deletequery() { return
 * jdbcTemplate.query("delete FROM notice ", new RowMapper<NoticeBean>() {
 * public NoticeBean mapRow(ResultSet rs, int row) throws SQLException {
 * 
 * NoticeBean e = new NoticeBean();
 * 
 * e.setNotice(rs.getString(1)); e.setNotice2(rs.getString(2));
 * e.setNotice3(rs.getString(3)); e.setNotice4(rs.getString(4));
 * e.setNotice5(rs.getString(5)); e.setNotice6(rs.getString(6));
 * e.setNotice7(rs.getString(7)); e.setNotice8(rs.getString(8));
 * e.setNotice9(rs.getString(9)); e.setNotice10(rs.getString(10)); return e;
 * 
 * }
 * 
 * }); }
 */

public int deletequery() {
String sql="delete from notice";    
return jdbcTemplate.update(sql);  

}

public int deletequery2(int id) {
String sql1="delete from login where id="+id+"";    
return jdbcTemplate.update(sql1);  

}
public int deletequery3(int id) {
	String sql2="delete from semester where id="+id+"";    
	return jdbcTemplate.update(sql2);  	
}

public int show(int id) {
	 String sql3="Select * from login where id="+id+""; 
	return jdbcTemplate.update(sql3);  	
}

public LoginBean getList9(int id) {
	
	  System.out.println("LOGIN DETAILS OF ID:" + id); 

String sql = "SELECT * FROM login where identity='Student' and id='"+id+"'";
	return  jdbcTemplate.queryForObject(sql,new Object[] {},new RowMapper<LoginBean>()
	{
		@Override
		public LoginBean mapRow(ResultSet rs, int row) throws SQLException {
			LoginBean e = new LoginBean();
			
			e.setName(rs.getString(3));
			e.setGender(rs.getString(10));
			e.setF_name(rs.getString(4));
			e.setDate_B(rs.getString(12));
			e.setEmail(rs.getString(6));
			e.setMobile(rs.getString(11));
			e.setAddress(rs.getString(5));
			e.setState(rs.getString(7));
			e.setDist(rs.getString(8));
			e.setCity(rs.getString(9));
			e.setPassword(rs.getString(2));
			e.setId(rs.getString(13));
			e.setUsername(rs.getString(1));
			
			return e;
		
		}

	});
}

public SemesterBean getList10(int id) {
	
	  System.out.println("MARK DETAILS OF ID:" + id); 

String sql = "SELECT * FROM semester where id='"+id+"'";
	return  jdbcTemplate.queryForObject(sql,new Object[] {},new RowMapper<SemesterBean>()
	{
		@Override
		public SemesterBean mapRow(ResultSet rs, int row) throws SQLException {
			SemesterBean e = new SemesterBean();
			
			e.setId(rs.getInt(8));
			e.setRoll(rs.getString(1));
			e.setEnglish(rs.getString(2));
			e.setMath(rs.getString(3));
			e.setComputer(rs.getString(4));
			e.setSocial(rs.getString(5));
			e.setMarkobt(rs.getString(6));
			e.setMaxmark(rs.getString(7));
		
			
			return e;
		
		}

	});
}

/*
 * public int updatequery(int id) {
 * 
 * String
 * sql="update login set(name,f_name,gender,mobile,address,date_b,email,state,dist,city,username,password) values(?,?,?,?,?,?,?,?,?,?,?,?) where id='"
 * +id+"'";
 * 
 * LoginBean bean = null; return jdbcTemplate.update(sql,new Object[]
 * {bean.getName(),bean.getF_name(),bean.getGender(),bean.getMobile(),bean.
 * getAddress(),bean.getDate_B(),bean.getEmail(),bean.getState(),bean.getDist(),
 * bean.getCity(),bean.getUsername(),bean.getPassword()});
 * 
 * }
 */

public static int updatequery(LoginBean bean, int id) {
	
	System.out.println("bean.getName() "+bean.getName());
	System.out.println("bean.getF_Name() "+bean.getF_name());
	System.out.println("bean.getGender() "+bean.getGender());
	System.out.println("bean.getMobile() "+bean.getMobile());
	System.out.println("bean.getAddress() "+bean.getAddress());
	System.out.println("bean.getDate_B() "+bean.getDate_B());
	System.out.println("bean.getEmail() "+bean.getEmail());
	System.out.println("bean.getState() "+bean.getState());
	System.out.println("bean.getDist() "+bean.getDist());
	System.out.println("bean.getCity() "+bean.getCity());
	System.out.println("bean.getUsername() "+bean.getUsername());
	System.out.println("bean.getPassword() "+bean.getPassword());

	
	String sql="update login set name=?, f_name=?, gender=?, mobile=?, address=?, date_b=?, email=?, state=?, dist=?, city=?, username=?, password=? where id='"+id+"'";
	
	return jdbcTemplate.update(sql,new Object[] {bean.getName(),bean.getF_name(),bean.getGender(),bean.getMobile(),bean.getAddress(),bean.getDate_B(),bean.getEmail(),bean.getState(),bean.getDist(),bean.getCity(),bean.getUsername(),bean.getPassword()});

	}

public static int updatequery2(SemesterBean bean, int id) {
	
	System.out.println("bean.getRoll() "+bean.getRoll());
	System.out.println("bean.getEnglish() "+bean.getEnglish());
	System.out.println("bean.getMath() "+bean.getMath());
	System.out.println("bean.getComputer() "+bean.getComputer());
	System.out.println("bean.getSocial() "+bean.getSocial());
	System.out.println("bean.getMarkobt() "+bean.getMarkobt());
	System.out.println("bean.getMaxmark() "+bean.getMaxmark());
	

	
	String sql="update semester set roll=?, english=?, math=?, computer=?, social=?, markobt=?, maxmark=? where id='"+id+"'";
	
	return jdbcTemplate.update(sql,new Object[] {bean.getRoll(),bean.getEnglish(),bean.getMath(),bean.getComputer(),bean.getSocial(),bean.getMarkobt(),bean.getMaxmark()});

	}

}

	
	