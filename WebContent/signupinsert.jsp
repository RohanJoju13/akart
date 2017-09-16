<%@ include file="dbconnection.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<%
try
{
  String name=request.getParameter("name");
  String addr=request.getParameter("address");
  String bdate=request.getParameter("dob");
  String phone=request.getParameter("phone");
  String user=request.getParameter("uname");
  String pass=request.getParameter("psw");

   boolean bl=stmt.execute("insert into signup(name,address,dob,phone,uname,psw) values('"+name+"','"+addr+"','"+bdate+"','"+phone+"','"+user+"','"+pass+"')");
   
   if(bl=true)
   {
   %>
   <script type="text/javascript">
   alert("Signup successfully");
   document.location="admin.jsp";
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