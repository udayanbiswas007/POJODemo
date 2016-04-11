<%@page import="org.Insert1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- CREATING THE FORM STRUCTURE -->

	<form action="">
	Name: <input type="text" placeholder=" name" name="name"><br/>
	Password: <input type="text" placeholder=" password" name="password"><br/>
	<input type="submit" value="INSERT" name="button"><br/>
	<input type="submit" value="DISPLAY" name="button"><br/>
	<input type="submit" value="DELETE" name="button"><br/>  
	<%	

/*GETTING PARAMETERS*/

			String name1, password1, button1;
			name1 = request.getParameter("name");
			password1 = request.getParameter("password");
			button1 = request.getParameter("button");

			try 
			{
				
/* SETTING BUTTON ACTIONS  */

				if (button1 != null)
				{
					Insert1 ins = new Insert1();
					ins.setName(name1);
					ins.setPassword(password1);
					
					if (button1.equals("INSERT"))
					{
						ins.save();
					}
					
					if(button1.equals("DISPLAY"))
					{
				    	ResultSet resultset=ins.display();
						while (resultset.next())
						{
							String aname = resultset.getString("name");
							String apassword = resultset.getString("password");
							
							
							%>
							<input type = "checkbox" value="<%=aname%>" name="checkbox">
							<%
							
							out.print(aname);
							out.print(apassword);							
							
				    	}
					}
							
					
					if(button1.equals("DELETE"))
					{
						
						String[] string = request.getParameterValues("checkbox");
						for(String a:string)

						{
							ins.setName(a);
							ins.delete();
						}
					}
				}
				
				}
			catch (Exception e) 
			{
				//out.print(e);
			}
			
			
		%>
	</form>
</body>
</html>