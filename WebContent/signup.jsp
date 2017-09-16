<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SIGN_UP</title>
    <style>
form
{
border:100% solid black;
}
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

#but1
{
 background-color:#383838;
 padding:7px 25px;
 font-size:25px;
 color:white;
 border-color: #383838;
}
</style>
<script>
/* function ValidateEmail(mail) 
{
 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.emailAddr.value))
  {
    return (true)
  }
    alert("You have entered an invalid email address!")
    return (false)
} */
function valid()
{
if(document.form1.name.value.length==0)
{
  alert("Name must be filled out");
  return false;
}
if(document.form1.address.value.length==0)
{
  alert("Address must be filled out");
  return false;
}
if(document.form1.dob.value.length==0)
{
  alert("Date must be filled out");
  return false;
}
if(document.form1.phone.value.length==0)
{
  alert("Phone must be filled out");
  return false;
}
if(document.form1.uname.value.length==0)
{
  alert("Username must be filled out");
  return false;
}

if(document.form1.psw.value.length==0)
{
  alert("Password must be filled out");
  return false;
}
if(document.form1.psw.value.length<6)
{
  alert("Password minimum 6 characters");
  return false;
}
if(document.form1.psw.value.length>9)
{
  alert("Password maximum 9 characters");
  return false;
}

}
     function validateEmail(emailField){
        var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

        if (reg.test(emailField.value) == false) 
        {
            alert('Invalid Username');
            return false;
        }

        return true;

}
     function validatedob(dobField){
       var dateformat = /^(0?[1-9]|1[0-9]|2[0-9]|3[0-1])\/(0?[1-9]|1[0-2])\/([0-9]{4})$/;

        if (dateformat.test(dobField.value) == false) 
        {
            alert('Invalid Date of Birth');
            return false;
        }

        return true;

}
    
     function validatephone(phoneField){
       var phoneno =  /^\d{10}$/;

        if (phoneno.test(phoneField.value) == false) 
        {
            alert('Invalid Phone Number');
            return false;
        }

        return true;

}
</script>
</head>
<body>
    <form action="signupinsert.jsp" name="form1" onsubmit="return valid()">
<h1 align="center" style="color:#383838; font-size: 80px;">User Sign up</h1>
<img src="user2.png" width="250px" style="margin-left:540px;"><br/><br/>
<table style="margin-left:500px;">
<tr><td>Name</td><td><input type="text" name="name" value="" placeholder="Fname"></td></tr>
<tr><td>Address</td><td><input type="text" name="address" value="" placeholder="Address"></td></tr>
<tr><td>DOB</td><td><input type="text" name="dob" value="" placeholder="DD/MM/YYYY" onblur="validatedob(this)"></td></tr>
<tr><td>phone</td><td><input type="text" name="phone" value="" placeholder="phone" onblur="validatephone(this)" ></td></tr>
<tr><td>User name</td><td><input type="text" name="uname" value="" placeholder="Username" onblur="validateEmail(this)"></td></tr>
<tr><td>Password</td><td><input type="password" name="psw" value="" placeholder="Password"></td></tr>

</table><br/><br/>
<table style="margin-left:600px;">
<tr><td><input type="submit" id="but1" value="Sign up" onclick="valid()"></td></tr>

</table>
    </form>
</body>
</html>