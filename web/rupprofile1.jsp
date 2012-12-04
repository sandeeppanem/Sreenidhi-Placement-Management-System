<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache");
%>
<%@ page import="java.sql.*,java.io.*,com.db.DBConnection,com.bean.user" %>
   <jsp:useBean id="sum" scope="session" class="com.bean.user">
      <jsp:getProperty name="sum" property="a" />
   </jsp:useBean>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>PROFILE</title>

</head>

    <body >

   <%
 String uname =sum.getA();
 String pwd =sum.getB();

 String rname=request.getParameter("rname");

 String cname=request.getParameter("cname");
String exp=request.getParameter("exp");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");

DBConnection db=null;
try
{
Connection conn=null;
PreparedStatement stmt=null;
    db=new DBConnection();
conn=db.getConnection();

stmt=conn.prepareStatement("UPDATE recruit SET rname=?,cname=?,exp=?,email=?,mobile=? where uname=? and pwd=?" );


stmt.setString(1,rname);
stmt.setString(2,cname);
stmt.setString(3,exp);
stmt.setString(4,email);
stmt.setString(5,mobile);
stmt.setString(6,uname);
stmt.setString(7,pwd);


int i=stmt.executeUpdate();

if(i==1)

out.println("updated successfully");
 stmt.close();
 conn.close();
}
catch(Exception ex)
        {
out.println("u have not submitted any resume");
    ex.printStackTrace();
}

 %>
    </body>
</html>

