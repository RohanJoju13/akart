
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Akart</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="style1.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script>
        $(document).ready(function() {
            $("#detail").hide();
            $("#contact").click(function() {
                $(".detail").toggle();
            });
        });
    </script>
    <style>
    body {
    background-color: #000000;
    text-decoration: none;
    
                  }
#a3k
{
    font-family:Jura,sans-serif;
    font-size: 70px;
    color: floralwhite;
    text-align:center ;
     letter-spacing: 2px;
}
.menu {
    display:inline;
    color: floralwhite;
    font-size: 1.5em;
    width: 300px;
    border: 1px solid white;
   padding: 10px;
    cursor:pointer;display:contents;font-size:1.5em;text-align:center solid;overflow:hidden;position:relative;
    text-decoration: none; 
   font-weight: 100;

}

.menu:hover {   border: 1px solid #1e90ff;
    color: floralwhite;
    text-decoration: none;
}
a:visited {color: #ffffff}
a:active {color: #ffffff;
text-decoration: none;}
a:default{color: #ffffff}
a:hover{
    text-decoration: none;
}

#ece:hover
{ -webkit-box-shadow: 0 0 20px #c05410;
        box-shadow: 0 0 20px #c05410
   
}
#contact{
    color: floralwhite;
    font-size: 1.5em;
    width: 135px;
    border: 1px solid white;
   padding: 10px;
    cursor:pointer;display:contents;font-size:1.5em;text-align:center solid;overflow:hidden;position:relative;
    text-decoration: none; 
   font-weight: 100;
}
#contact:hover{
     border: 1px solid #1e90ff;
}
.detail{
    
    color: floralwhite;
}
    </style>
</head>
<p style="text-align:center;"> <img src="logo.png" alt="logo" style=" center;width:200px;height: 200px;margin-bottom: 10px">
    <p id="a3k" style="margin-bottom: 150px">AKART </p>
    <ul style="padding:14px">
    <form action="myservlet">
        <div>
            <li class="menu" style="margin-left: 500px"><a href="login.jsp">LOGIN</a></li>
            <li  class="menu"  style="margin-left: 50px"><a href="signup.jsp">SIGN UP</a></li>
        </div>
    </ul>
    <p id="contact" href="" style="margin-left: 600px;margin-top: 50px">CONTACTS</p>
    <p class="detail" style="display:none;margin-left: 600px"> Rohan Joju</p>
    <p class="detail" style="display:none;margin-left: 600px"><span class="glyphicon glyphicon-earphone"> 8111909101</span></p>
    <p class="detail" style="display:none;margin-left: 600px"> <span class="glyphicon glyphicon-envelope"> rohanjoju@gmail.com</span></p>

</form>

    </body>

</html>