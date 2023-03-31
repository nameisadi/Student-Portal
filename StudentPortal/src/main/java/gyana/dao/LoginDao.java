package gyana.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import gyana.beans.FileBean;
import gyana.beans.LoginBean;
import gyana.beans.SemesterBean;
import gyana.beans.registrationbean;

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
			System.out.println("bean.getPassword2() "+bean.getPassword2());

			
			  if(bean.getPassword() == bean.getPassword2()) {
			  System.out.println(bean.getPassword()+"Password matched."); 
			  }else {
			  System.out.println(bean.getPassword()+"password Does'nt matched."); }
			 
			String sql="insert into login(name,f_name,gender,mobile,address,date_b,email,state,dist,city,username,password) values(?,?,?,?,?,?,?,?,?,?,?,?)";
			
			return jdbcTemplate.update(sql,new Object[] {bean.getName(),bean.getF_Name(),bean.getGender(),bean.getMobile(),bean.getAddress(),bean.getDate_B(),bean.getEmail(),bean.getState(),bean.getDist(),bean.getCity(),bean.getUsername(),bean.getPassword()});
	
			}




	public List<LoginBean> getList() {
		return jdbcTemplate.query("SELECT * FROM login",new RowMapper<LoginBean>()
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
	
	
	public static int insertquery1(SemesterBean bean) {
		
		System.out.println("bean.getRoll() "+bean.getRoll());
		System.out.println("bean.getEnglish() "+bean.getEnglish());
		System.out.println("bean.getMath() "+bean.getMath());
		System.out.println("bean.getComputer() "+bean.getComputer());
		System.out.println("bean.getSocial() "+bean.getSocial());
		System.out.println("bean.getMarkobt() "+bean.getMarkobt());
		System.out.println("bean.getMaxmark() "+bean.getMaxmark());
		
		String sql="insert into semester(roll,english,math,computer,social,markobt,maxmark) values(?,?,?,?,?,?,?)";
		
		return jdbcTemplate.update(sql,new Object[] {bean.getRoll(),bean.getEnglish(),bean.getMath(),bean.getComputer(),bean.getSocial(),bean.getMarkobt(),bean.getMaxmark()});
		
		
	}

	public List<SemesterBean> getList1() {
		return jdbcTemplate.query("select * from Semester ", new RowMapper<SemesterBean>() {
			public SemesterBean mapRow(ResultSet rs, int row) throws SQLException {
				SemesterBean e = new SemesterBean();
				e.setId(rs.getString(8));
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

	public static int insertquery3(SemesterBean bean) {

		System.out.println("bean.getRoll "+bean.getRoll());
		System.out.println("bean.getEnglish() "+bean.getEnglish());
		System.out.println("bean.getMath() "+bean.getMath());
		System.out.println("bean.getComputer() "+bean.getComputer());
		System.out.println("bean.getSocial() "+bean.getSocial());
		System.out.println("bean.getMarkobt() "+bean.getMarkobt());
		System.out.println("bean.getMaxmark() "+bean.getMaxmark());
		

		String sql="update login set(getRoll,getEnglish,getMath,getComputer,getSocial,getMarkobt,getMaxmark) where id=?";

		return jdbcTemplate.update(sql,new Object[] {bean.getRoll(),bean.getEnglish(),bean.getMath(),bean.getComputer(),bean.getSocial(),bean.getMarkobt(),bean.getMaxmark()});

		}

			
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

}

	
	