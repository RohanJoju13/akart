<!DOCTYPE html>
<html>
<head>
    <title>Delete Item</title>
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
        display: block; }
        input[type=text]
{
padding:12px 35px;
border:1px solid #ccc;

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
    <h1 style="color: #383838;text-align: center;margin-top: 30px;">DELETE ITEM</h1>
    <hr width="200"></hr>
    <form action="deletemenu1.jsp">
<table width="350" height="100" align="center" style="margin-top: 100px;"style="color: #383838;">
<tr ><td >Item Name</td><td><input type="text" name="item3" value=""></td></tr>
</table><br/><br/>
<div align="center"><button style="background-color: #383838;color: white;padding: 5px;border-color: #383838"type="submit" id="but"><b>Delete</b></button></div>    
</body>
</html>