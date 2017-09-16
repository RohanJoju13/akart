<%@ include file="dbconnection.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>login verify</title>
</head>
<body>
<%
try
{
	String name=request.getParameter("uname");
	String pass=request.getParameter("psw");

	String cpass=null;
	String cname="";
	String cuser=null;
	int ckey=0;
	int v=0;
		//rs=stmt.executeQuery("select name,uname,psw from signup where uname='"+name+"' and psw='"+pass+"' ");
	
	rs = stmt.executeQuery("select * from signup where uname='"+name+"' and psw='"+pass+"'");
	   while(rs.next())
	   {
		   v++;
		cname=rs.getString("uname");
		cpass=rs.getString("psw");
		cuser=rs.getString("name");
		
		ckey=rs.getInt("key");
	
	   }
	   
	   if(v>0)
	   {
		   session.setAttribute("user",cname);
		   session.setAttribute("pass",cpass);
		   session.setAttribute("fname",cuser);
		   session.setAttribute("uskey", ckey);

		   if(cname.equals(name) && cpass.equals(pass))
		   {
			   out.print("Successfully Logged in........");  
			   response.sendRedirect("home.jsp") ;

		   }
		   else
		   {     
			     response.sendRedirect("signup.jsp") ;

		   }

	   }
	   else if(v==0)
	   { System.out.print("Error");
		out.print("Account Not Exist");
		     response.sendRedirect("login.jsp?message=Invalid username or password") ;

	   }
	}
	catch(Exception e)
	{
	System.out.println(e);
	}
%>
</body>
</html>