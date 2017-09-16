<%@ include file="dbconnection.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>password</title>
</head>
<body>
<%
try{
String user=request.getParameter("user");
String pass=request.getParameter("new");

String npsw=request.getParameter("newc");


if(pass.equals(npsw))

{ 	stmt2.executeUpdate("update signup set psw='"+pass+"' where uname='"+user+"'");
	
%>
<script type="text/javascript">
alert("Password changed successfully");
document.location="login.jsp";
</script>
<%
}



else {
out.print("Password Do Not Match");
response.sendRedirect("forgotpsw.jsp") ;
}








}
catch(Exception e)
{
System.out.println(e);
}










%>
</body>
</html>

