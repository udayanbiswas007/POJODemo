<%@ page language="java" contentType="text/html; charset=UTF-8" import="org.Math1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="">
Number 1:<br>
<input type="text" placeholder=" Enter Number 1" name="number1">
Number2:
<input type="text" placeholder=" Enter Number 2" name="number2">
<input type="submit" value="Result" name="button">

<% 
String n1,n2,n3,button;

n1=request.getParameter("number1");
n2=request.getParameter("number2");
n3=request.getParameter("number3");
button=request.getParameter("button");

	if(button!=null)
	{
		Math1 math = new Math1();
		math.setNum1(n1);
		math.setNum2(n2);
		math.sum();
		String res=math.getResult();
	
	out.print(res);
		
		
		
	}
%>


  
</form>

</body>
</html>