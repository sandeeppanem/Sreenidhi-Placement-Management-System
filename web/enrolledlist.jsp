<%@ page import="java.sql.*,java.io.*,com.db.DBConnection,com.bean.user" %>
 <jsp:useBean id="sum" scope="session" class="com.bean.user">


   </jsp:useBean>

<%
 String uname=sum.getA();
 String pwd=sum.getB();
String company=null;
 Connection conn=null;
PreparedStatement stmt=null;
  ResultSet rs=null;
DBConnection db=null;
try
{


    db=new DBConnection();
conn=db.getConnection();
stmt=conn.prepareStatement("select * from recruit where uname=? and pwd=?" );
 stmt.setString(1,uname);
 stmt.setString(2,pwd);
 rs=stmt.executeQuery();
if(rs.next())
    {
 company=rs.getString(4);
 sum.setD(company);
 
 
}
}
catch(Exception ex)
        {
ex.printStackTrace();
}
stmt.close();
conn.close();
 %>
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache");
%>
<%-- 
    Document   : enrolledlist
    Created on : Apr 9, 2010, 9:26:07 PM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <%
  company=sum.getD();
  
   
           try
{

              
db=new DBConnection();
conn=db.getConnection();
stmt=conn.prepareStatement("select * from resume where company=?" );
stmt.setString(1,company);
rs=stmt.executeQuery();
}
catch(Exception ex)
        {
out.println("u have not submitted any resume");
    ex.printStackTrace();
}

            
%>
    <body background="backgrnd[2].gif">
        <h1><center>LIST OF ENROLLED STUDENTS</center></h1>
        <center><table border="1" bgcolor="cyan" cellspacing="5" cellpadding="5"">
            <tr>
                    <td colspan="2"><strong>Roll Numbers And Names Of Students</strong></td>
            </tr>
        <%
        while(rs.next())
    {%>
    <tr><td><%=rs.getString(1)%></td><td><%=rs.getString(3)%></td>
    </tr>

        <%}%>

            </table></center>
    </body>
</html>
