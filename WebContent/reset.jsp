<!DOCTYPE html>
<html>
<head>
    <title>passowrd reset</title>
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
    
    <form action="confirmpsw.jsp">
    <h1 align="center" style="color:#383838; font-size: 80px;">Password Reset</h1>
            <img src="key.png" width="250px" style="margin-left:540px;">
    <table class="tab" style="margin-left:500px;margin-top: 20px">
     <tr><td><input type="text" name="user" value="" placeholder="Username"></td></tr>
      <tr><td><input type="password" name="new" value="" placeholder="New Password"></td></tr>
      <tr><td><input type="password" name="newc" value="" placeholder="Confirm Password"></td></tr>  
        <tr>
                    <td>
                        <input  type="submit" value="Confirm" id="but" style="margin-top: 20px;margin-left:10px" >
                    </td>
            
                </tr>
        
    </table>
    </form>
</body>
</html>