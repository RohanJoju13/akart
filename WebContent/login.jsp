<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>LOGIN</title>
    <script>
       function validateEmail(emailField){
        var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

        if (reg.test(emailField.value) == false) 
        {
            alert('Invalid Username');
            return false;
        }

        return true;

}
    
    
    </script>
    <style>
        .tab{
            font-size: 20px;
            color: #383838;
        }
        .box{
        display: block;
width: 100%;
height: 38px;
padding: 0px 14px;
font-size: 14px;
line-height: 1.428571;

background-color: rgba(255, 255, 255, 0);
background-image: none;
border: 1px solid black;
border-radius: 9px;
        }
        #but{
            background-color: #383838;
            color: floralwhite;
            padding: 10px;
            width: 100px;
        }
    </style>
</head>
<body>
    <h1 style="margin-left:500px;font-size: 80px; color:#383838; ">LOGIN</h1>
    <img src="user1.png" width="250px" style="margin-left:540px;"><br/><br/>
    <form action="logininsert.jsp"  name="form1">
    <table class="tab" style="margin-left:500px;">
    <tr>
        <td class="tab" >Username:</td><td ><input class="box" type="text" name="uname" value="" placeholder="example@gmail.com" onblur="validateEmail(this)"></td>
    </tr>
    <tr  >
        <td class="tab">Password:</td><td style="margin-top: 10px" ><input class="box" type="password" name="psw" value="" placeholder="password"></td>
    </tr>
    </table>
     <a href="forgotpsw.jsp" style="margin-left:500px; margin-top:200px;">Forgot Password?</a>
      <table style="margin-left:650px; margin-top: 25px;width: ">
                <tr>
                    <td>
                        <input style="border-color: #383838" type="submit" value="Login" id="but" >
                    </td>
            
                </tr>

            </table>
              <%
            String msg=request.getParameter("message");
if(msg!=null)
{
%>

                <h3 align="center" style="color:red;"><%=msg%>!!!</h3>
                <% } %>
            
            </form>
</body>
</html>