<%@ include file="dbconnection.jsp"%>
<!DOCTYPE html>
<html>
<head>
 
    <title>Home</title>
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
    <script>
function show(elmt)
{
	document.getElementById(elmt).style.visibility="visible";
}
function hide(elmt)
{
	document.getElementById(elmt).style.visibility="hidden";
}
</script>
</head>

<body>
    <div>
        <ul>
        
       
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
<% Object name=session.getAttribute("fname");
String s=name.toString();
String s1=s.toUpperCase();
//Object ukey=session.getAttribute("uskey");
out.println("<h1 style=text-align:center>"+"WELCOME "+s1+"</h1>");
%>
</body>

</html>