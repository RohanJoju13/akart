<%@ include file="dbconnection.jsp"%>
<!DOCTYPE html>
<html>
<head>

    <title>Forgot_password</title>
    <style>
        input[type=text]
{
padding:12px 35px;
border:1px solid #ccc;

}
input[type=password]
{
padding:12px 35px;
border:1px solid #ccc;

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
     <h1 style="margin-left:400px; font-size: 80px; color:#383838; ">Forgot Password?</h1>
     <img src="password.png" alt="forgot_password.txt" style="width:200px; display: block;
    margin: auto;">
    <form action="resetpsw.jsp">
    <table class="tab" style="margin-left:500px;margin-top: 20px">
      <tr><td><input type="text" name="nam" value="" placeholder="Enter Username"></td></tr>
      <tr><td><input type="text" name="dob" value="" placeholder="Enter DOB-DD/MM/YYYY"></td></tr>  
      <tr><td><input type="text" name="mob" value="" placeholder="Enter mobile number"></td></tr>  
        <tr>
                    <td>
                        <input  type="submit" value="Submit" id="but" style="margin-top: 20px;margin-left:10px" >
                    </td>
            
                </tr>
        
    </table>
    </form>
    <%
    String msg1=request.getParameter("message1");

if(msg1!=null)
{  %>


<h3 align="center" style="color:red;">Invalid data provided</h3>
                <%} %>

    
</body>
</html>