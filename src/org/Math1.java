package org;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Math1 {

	
	private  String num1,num2,result;

	

	
	public String getNum1() {
		return num1;
	}
	



	public void setNum1(String num1) {
		this.num1 = num1;
	}




	public String getNum2() {
		return num2;
	}




	public void setNum2(String num2) {
		this.num2 = num2;
	}




	public String getResult() {
		return result;
	}




	public void setResult(String result) {
		this.result = result;
	}




	public void sum() throws Exception
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/db2","root", "");
		Statement statement=connection.createStatement();
		String query="";
		int i=	statement.executeUpdate(query);	
		
		/*int i=Integer.parseInt(getNum1())+Integer.parseInt(getNum2());
	
		setResult(Integer.toString(i));
	*/	
		
		
	}
	  
}
