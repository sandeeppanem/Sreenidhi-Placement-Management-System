<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache");
%>
<%@ page import="java.sql.*,java.io.*,com.db.DBConnection,com.bean.user" %>
   <jsp:useBean id="sum" scope="session" class="com.bean.user">
       </jsp:useBean>
<html xmlns="http://www.w3.org/1999/xhtml">
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
   if(form1.new1.value.length==0)
               {
                   alert("please enter new password");
           flag=false;
           return flag;
           }
   if(form1.confirm.value.length==0)
               {
                   alert("please reenter new password");
           flag=false;
           return flag;
           }
   if(form1.new1.value!=form1.confirm.value)
               {
                   alert("password fields must match");
           flag=false;
           return flag;
           }

   return flag;
}

</script>
<title>change password</title>
</head>

<body>
    <center>
    <form method="post" action="rchangepassword.jsp" name="form1" onsubmit="return validate(this)">
    <pre>Change Password</pre>
<pre>   <label>UserID</label>   <label>          <input type="text" name="username" id="UserID" />

   Password</label>           <input type="password" name="password" id="password" />
</pre>
<pre>   NewPassword        <input type="password" name="new1" id="New" />
</pre>
<pre>   Reenter Password   <input type="password" name="confirm" id="Reenter" />
</pre>
<pre>
            <input type="submit" name="Submit" id="Submit" value="Submit" />
</pre>
    </form>
</center>
</body>
</html>
<%

String rollno =sum.getA();
String old =sum.getB();

String pwd = request.getParameter("password");
String uname = request.getParameter("username");
if(uname!=null)
    {
String new1 = request.getParameter("new1");
if(rollno.equals(uname)&&old.equals(pwd))
{
        Connection conn=null;
            PreparedStatement stmt=null;
            ResultSet rs=null;
DBConnection db=null;

            try
            {
             db=new DBConnection();
conn=db.getConnection();
            stmt=conn.prepareStatement("UPDATE recruit SET pwd=? where uname=?");

            stmt.setString(1,new1);
             stmt.setString(2,uname);
            int i=stmt.executeUpdate();
            if(i==1)
            {
                        out.println("u have successfully changed your password ");
            }


conn.close();
}
catch(Exception e)
{
out.println("choose a different username");
    e.printStackTrace();
}

}
else
{
out.println("checkusername and password");
}
}
%>