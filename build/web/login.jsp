
 <!DOCTYPE HTML PUBLIC "-//W3C/DTD HTML 4.0 Transitional//EN">
<html>
<META HTTP-EQUIV = "Pragma" CONTENT="no-cache">
<head>
    <script type="text/javascript">
        function validate(form1)
        {
           flag=true;
           if(form1.username.value.length==0)
               {
                   alert("please enter username");
         flag=false;
         return flag;
           }
if(form1.password.value.length==0)
               {
                   alert("please enter password");
           flag=false;
           return flag;
           }        
    return flag;
}
        
        
    
    </script>
    
</head>
<title> Login page </title>
<body background="backgrnd[2].gif">
    <center>

    <h2>Form Login</h2>
    <br>

    <form METHOD=POST ACTION="login1.jsp" name="form1" onsubmit="return validate(this) ">
<p>
<table border="0" cellpadding="5" cellspacing="5">
    <tr><td colspan="2"align="center"><font size="2"> <h3> Enter user ID and password: </h3></font>
        </td>
    </tr>
    <tr><td><strong> User ID</strong></td><td> <input type="text" size="20" name="username"></td></tr>
    <tr><td><strong> Password </strong></td><td>  <input type="password" size="20" name="password"></td></tr>

    <tr><td>
<strong>Login as:</td><td><select name='type'>
		<option value='student'>Student</option>
		<option value='administrator'>Administrator</option>
		<option value='recruiter'>Recruiter</option>
                </select></td></tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr><td colspan="2" align="center"><input type="submit" name="login" value="Login" ></td></tr>

</table>
    </form>

    </center>
    </body>
</html>

