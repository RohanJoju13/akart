<%@ include file="dbconnection.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>update menu</title>
<style>
 
ul{
        padding: 0px;
        list-style: none;
        background: #383838;
    margin: 0;
    
    font-size: 30px;
    }
    ul li{
        display: inline-block;
        position: relative;
        line-height: 21px;
        text-align: center;
        padding: 0px;
    }
    ul li a{
        display: block;
        padding: 8px 25px;
        color: white;
        text-decoration: none;
         padding: 20px;
    }
    ul li a:hover{
        color: #fff;
        background: black;
       
    }
    ul li ul.dropdown{
        min-width: 100%; /* Set width of the dropdown */
        background: #383838;
        display: none;
        font-weight: 100;
        position: absolute;
        font-size: 20px;
        z-index: 999;
        left: 0;
    }
    ul li:hover ul.dropdown{
        display: block; /* Display the dropdown */
    }
    ul li ul.dropdown li{
        display: block;
        
    </style>  
</head>
<body>
<div>
        <ul>
        <li><a href="home.jsp">HOME</a></li>
        <li><a href="AdminHome.jsp">PURCHASE</a></li>
       
        <li>
            <a href="home.jsp">ITEMS</a>
            <ul class="dropdown">
                <li><a href="menuadd.jsp">Add</a></li>
                <li><a href="deletemenu.jsp">Delete</a></li>
                <li><a href="updatemenu.jsp">Update</a></li>
                <li><a href="MUpdatemenuitem.jsp">View</a></li>
            </ul>
        </li>
        <li style="float: right"><a href="admin.jsp">LOGOUT</a></li>
        </ul>
 </div>
    <h1 style="color: #383838;text-align: center;margin-top: 30px;">UPDATE ITEM</h1>
    <hr width="200"></hr>
<form action="updatemenu2.jsp" name="form1">
<table style="margin-left:500px;margin-top: 100px;">
<%
try
{ int mID=0;
String item=null;
int price=0;

int v=0;
int m1=Integer.parseInt(request.getParameter("item4"));
rs=stmt.executeQuery("select mitem,mprice,mid,quantity from menu where mid='"+m1+"' ");
while(rs.next())
{
	item=rs.getString("mitem");

	mID=rs.getInt("mid");
	v++;
	
	%>

	<tr><td>Item Name</td><td><input type="text" name="name" value="<%=rs.getString("mitem")%>"></td></tr>

	<tr><td>Price</td><td><input type="text" name="price" value="<%=rs.getInt("mprice")%>"></td></tr>
	<tr><td>Quantity</td><td><input type="text" name="quan" value="<%=rs.getInt("quantity")%>"></td></tr>

	<%
}
if(v>0)
{
	session.setAttribute("identity",mID);
}
else if(v==0)
{
	out.print("<p style=text-align:center;color:red;>"+"Item not found."+"</p>");
}

}

catch(Exception e)
{
	System.out.println(e);
}
%>
</table><br/><br/>
<table align="center" style="margin-top: 20px;">
<tr><td><input style="background-color: #383838;color: white;padding: 5px;border-color: #383838" type="submit" id="but1" value="Update"></td></tr>

</table>

</form>
</body>
</html>