<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache");
%>

<%@ page import="java.sql.*,java.io.*,com.db.DBConnection,com.bean.user" %>
   <jsp:useBean id="sum" scope="session" class="com.bean.user">


   </jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    
    <body background="backgrnd[2].gif">
        <center>
            <form action="cutoffdate.jsp" method="post">
                Enter Cutoff Marks:<input type="text" name="cut"><br><br>
                Enter Date of Coming:<input type="text" name="cum"><br><br><br>
                <input type="submit" value="submit">
            </form>
        </center>
        </body>
</html>
<%
 String cutoff =request.getParameter("cut");
  String dateofcoming =request.getParameter("cum");
if(cutoff!=null&&dateofcoming!=null)
    {
  String uname=sum.getA();
 String pwd=sum.getB();
 Connection conn=null;
PreparedStatement stmt=null;
  ResultSet rs=null;
DBConnection db=null;
try
{


    db=new DBConnection();
conn=db.getConnection();
stmt=conn.prepareStatement("UPDATE recruit SET cutoff=?,dateofcoming=? where uname=? and pwd=?");
 stmt.setString(1,cutoff);
 stmt.setString(2,dateofcoming);
 stmt.setString(3,uname);
 stmt.setString(4,pwd);
 int i=stmt.executeUpdate();
 if(i==1)
     {
 out.println("entered succefully");
 }

}
catch(Exception ex)
        {

    ex.printStackTrace();

}
}
%>








