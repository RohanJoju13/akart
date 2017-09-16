<%@ include file="dbconnection.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>add1</title>
</head>
<body>
<% 
try
{	int keynum=0;
	Object sname = session.getAttribute("user");
	String user = sname.toString();
	Object addname=session.getAttribute("item");
	rs = stmt.executeQuery("select * from signup where uname ='"+user+"'");
	System.out.println(addname);
	rs1=stmt1.executeQuery("select name,price from item where name='"+addname+"' ");
	System.out.println("after");
	
	while(rs.next())
	{
		keynum=rs.getInt("key");
	}
	while(rs1.next())
	{
	String m1=rs1.getString("name");
	System.out.println("newafter");
	int m2=rs1.getInt("price");
	int m3=Integer.parseInt(request.getParameter("item5"));

	boolean bl = stmt.execute("insert into menu(userkey,mitem,mprice,quantity)values("+keynum+",'"+m1+"',"+m2+","+m3+")");
	//boolean bl=stmt.execute("insert into menu(userkey,mitem,mprice) values('"+keynum+"','"+m1+"',"+m2+")");
	
	if(bl=true)
	{
		%>
		<script type="text/javascript">
		
			alert("Menu add Successful");
			document.location="add.jsp";
		
		</script>
		<% 
		
	}
	}
}
catch(Exception e)
{
System.out.println(e);
}
%>



</body>
</html>