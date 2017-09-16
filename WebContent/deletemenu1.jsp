<%@ include file="dbconnection.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>add1</title>
</head>
<body>
<% 
try{
	String m1=request.getParameter("item3");
	boolean bl = stmt.execute("delete from menu where mitem='"+m1+"'");
	
	if(bl=true)
	{
		%>
		<script type="text/javascript">
		
			alert("Menu delete Successful");
			document.location="deletemenu.jsp";
		
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