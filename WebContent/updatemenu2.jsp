<%@ include file="dbconnection.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
try
{ Object ob=session.getAttribute("identity");
int id = (int) ob;
	
	String name=request.getParameter("name");
	int cost=Integer.parseInt(request.getParameter("price"));
	int q=Integer.parseInt(request.getParameter("quan"));
     int bl=0;
	  bl=stmt.executeUpdate("update menu set mitem='"+name+"',mprice="+cost+",quantity="+q+" where mid="+id+"");
	 if(bl>0)
	   {
	   %>
	   <script type="text/javascript">
	   alert("Update successfully");
	   document.location="updatemenu.jsp";
	   </script>
	   <%
	   }
}
	catch(Exception e)
	{
	System.out.println(e);
	}
	%>
</body>
</html>