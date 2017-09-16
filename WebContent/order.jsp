<%@ include file="dbconnection.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>ORDER</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function() {
            $("#ty").hide();
            $("#but").click(function() {
            		$("#ty").show();
            });
        });
    </script>
    <style>
        ul {
            padding: 0px;
            list-style: none;
            background: #383838;
            margin: 0;
            font-size: 30px;
        }
        
        ul li {
            display: inline-block;
            position: relative;
            line-height: 21px;
            text-align: center;
            padding: 0px;
        }
        
        ul li a {
            display: block;
            padding: 8px 25px;
            color: white;
            text-decoration: none;
            padding: 20px;
        }
        
        ul li a:hover {
            color: #fff;
            background: black;
        }
        
        ul li ul.dropdown {
            min-width: 100%;
            /* Set width of the dropdown */
            background: #383838;
            display: none;
            font-weight: 100;
            position: absolute;
            font-size: 20px;
            z-index: 999;
            left: 0;
        }
        
        ul li:hover ul.dropdown {
            display: block;
            /* Display the dropdown */
        }
        
        ul li ul.dropdown li {
            display: block;
        }
        
        input[type=text] {
            padding: 12px 35px;
            border: 1px solid #ccc;
        }
        .table-bordered
{
width:50%;
}
#but
{
 background-color:#383838;
 padding:7px 25px;
 font-size:20px;
 color:white;
 border-color: #383838;
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
    <h1 style="color: #383838;text-align: center;margin-top: 30px;">ORDER SUMMARY</h1>
    <hr width="250"></hr>
<form order.jsp>
<table align="center" style="text-align: center;" class="table table-striped table-bordered" id="menutable" >
<tr><td><b>ITEM NAME</b></td><td><b>ITEM PRICE</b></td><td><b>QUANTITY</b></td><td><b>TOTAL</b></td></tr>
<%
int grand=0;
Object user=session.getAttribute("uskey");
try
{
	
    
    
		
		rs=stmt.executeQuery("select * from menu where userkey="+user+"");
		while(rs.next())
		{
			int val=rs.getInt("mprice");
			String name=rs.getString("mitem");
			int q=rs.getInt("quantity");
			int total=val* q;
			grand=grand+total;
			
		
		%>
    <tr><td><%=name%></td><td><%=val%></td><td><%=q%></td><td><%=total%></td></tr>
		
				<%
		}
}
catch(Exception e)
{
	System.out.println(e);
}


%>	
<tr><td><b>GRAND TOTAL :</b></td><td></td><td></td><td style="color:green"><b><%=grand%></b></td></tr>
	
</table>

<div align="center"><button style="background-color: #383838;color: white;padding: 5px;border-color: #383838"type="submit" id="but"><b>Order</b></button></div>  

<% Object name=session.getAttribute("fname");
String s=name.toString();
String s1=s.toUpperCase();%>
                  
<h3 style="text-align: center;color:chartreuse" id="ty">Thank you<%=s1 %> </h3>

                    </form>
    </body>   
</html>