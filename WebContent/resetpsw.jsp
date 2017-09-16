<%@ include file="dbconnection.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>password</title>
</head>
<body>
<%
try{

	String name=request.getParameter("nam");
	String date=request.getParameter("dob");
	String mobile=request.getParameter("mob");
	String cdob="";
	String cmob=null;
	int v=0;
	rs1=stmt1.executeQuery("select dob,phone from signup where uname='"+name+"' ");


	while(rs1.next())
	   {	
		   v++;
		cdob=rs1.getString("dob");
		
		cmob=rs1.getString("phone");
		
	   }
	if(v>0)
	{
		session.setAttribute("date",cdob);
		   session.setAttribute("phon",cmob);
		   if(cdob.equals(date) && cmob.equals(mobile))
		   {    
			   response.sendRedirect("reset.jsp") ;
		   }
		   else
		   {     
			   out.print("Account Not Exist");
			     response.sendRedirect("forgotpsw.jsp?message1=Invalid") ;


		   }

	}
	else if(v==0)
	   {
		out.print("Account Not Exist");
		     response.sendRedirect("forgotpsw.jsp?message1=Invalid") ;

	   }
	}
	catch(Exception e)
	{
	System.out.println(e);
	}










%>
</body>
</html>
