package com.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.user.model.User;
import com.user.util.ConnectionUtil;
import com.user.validation.Validation;


public class RegistationImpl {
	public int insertUserDetails(User user) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Validation valid=new Validation();
		int status=0;
		Connection con=ConnectionUtil.init();			
		
		PreparedStatement ps;
			try {
				boolean fname=valid.nameValidation(user.getFirstName());
				boolean lname=valid.nameValidation(user.getLastName());
				boolean email=valid.nameValidation(user.getEmail());
				boolean uname=valid.nameValidation(user.getUserName());
				boolean pwd=valid.nameValidation(user.getPassword());
				if(fname==true&&lname==true&&email==true&&uname==true&&pwd==true)
				{
					String insert="insert into register(first_name,last_name,email,user_name,password)values(?,?,?,?,?)";
				ps = con.prepareStatement(insert);
				ps.setString(1,user.getFirstName());
				ps.setString(2, user.getLastName());
				ps.setString(3, user.getEmail());
				ps.setString(4, user.getUserName());
				ps.setString(5, user.getPassword());
			    status = ps.executeUpdate();
			    int executeUpdate = ps.executeUpdate();
			    System.out.println(executeUpdate);
			} }
			catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println(e);
			}
				
		          return status;
	}
}
