package org;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Insert1
{

	private String name,password;

    /*GENERATING GETTERS AND SETTERS*/
	
	public String getName()
	{
		return name;
	}




	public void setName(String name)
	{
		this.name = name;
	}




	public String getPassword() 
	{
		return password;
	}




	public void setPassword(String password) 
	{
		this.password = password;
	}

/*CREATING DATABASE CONNECTION*/
 
	public void save() throws Exception
	{		
		Connection connection=JDBCUtil.getConnection();
		Statement statement=connection.createStatement();
		String query="INSERT INTO user VALUES ('"+name+"','"+password+"')";
		statement.executeUpdate(query);	
	}
	
	public ResultSet display() throws Exception
	{
		Connection connection=JDBCUtil.getConnection();
		Statement statement=connection.createStatement();
		String query ="SELECT * FROM user";
		ResultSet resultset = statement.executeQuery(query);
		return resultset;
	}
	
	public void delete() throws Exception
	{
		Connection connection=JDBCUtil.getConnection();
		Statement statement=connection.createStatement();
		String query = "DELETE FROM user WHERE name='"+name+"'";
		statement.executeUpdate(query);
	}
	
}	