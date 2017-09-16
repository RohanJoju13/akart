<%@ include file="dbconnection.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>View Menu</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
        text-decoration: none;
       
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
        }
        input[type=text]
{
padding:12px 35px;
border:1px solid #ccc;

}
.table-bordered
{
width:50%;
}
   </style>  
        
</head>
<body>
<div>
        <ul>
        <li><a href="home.jsp">HOME</a></li>
        
       
        <li>
            <a href="home.jsp">ITEMS</a>
            <ul class="dropdown">
                <li><a href="add.jsp">Add</a></li>
                <li><a href="deletemenu.jsp">Delete</a></li>
                <li><a href="updatemenu.jsp">Update</a></li>
                <li><a href="view.jsp">View</a></li>
                <li><a href="viewitems.jsp">View Items</a></li>
            </ul>
        </li>
        <li><a href="order.jsp">ORDER</a></li>
        <li style="float: right"><a href="admin.jsp">LOGOUT</a></li>
        </ul>
 </div>
<h1 style="margin-left:600px;">Menu card</h1>
<hr width="200" style="margin-left:100px;"></hr><br/><br/>
<table  align="center" style="text-align: center;" class="table table-striped table-bordered" id="menutable">
<tr  style="font-size:medium;"><td><b>Item Code</b></td>
<%

try
{
	rs=stmt.executeQuery("select * from item");

	
while(rs.next())
{
	
%>
<tr>
<td><%=rs.getString("name") %></td>

</tr>
<%
}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</table><br/><br/>

</body>
</html>