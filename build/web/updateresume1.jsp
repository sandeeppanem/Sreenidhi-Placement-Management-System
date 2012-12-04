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
 Connection conn=null;
PreparedStatement stmt=null;
   String rollno =sum.getA();
String company=sum.getC();
 String fname=request.getParameter("fname");

 String minitial=request.getParameter("minitial");
String lname=request.getParameter("lname");
String hphone=request.getParameter("hphone");
String cellphone=request.getParameter("cellphone");
String year=request.getParameter("year");
String aggregate=request.getParameter("aggregate");
String email=request.getParameter("email");
String adress=request.getParameter("adress");
String city=request.getParameter("city");
String state=request.getParameter("state");

String country=request.getParameter("country");
String postalcode=request.getParameter("postalcode");
String skills=request.getParameter("skills");
String expsalary=request.getParameter("expsalary");




DBConnection db=null;
try
{

    db=new DBConnection();
conn=db.getConnection();

stmt=conn.prepareStatement("UPDATE resume SET fname=?,minitial=?,lname=?,hphone=?,cellphone=?,year=?,aggregate=?,email=?,adress=?,city=?,state=?,country=?,postalcode=?,skills=?,expsalary=? where rollno=? and company=?" );


stmt.setString(1,fname);
stmt.setString(2,minitial);
stmt.setString(3,lname);
stmt.setString(4,hphone);
stmt.setString(5,cellphone);
stmt.setString(6,year);
stmt.setString(7,aggregate);
stmt.setString(8,email);
stmt.setString(9,adress);
stmt.setString(10,city);
stmt.setString(11,state);

stmt.setString(12,country);
stmt.setString(13,postalcode);
stmt.setString(14,skills);
stmt.setString(15,expsalary);
stmt.setString(16,rollno);
stmt.setString(17,company);
int i=stmt.executeUpdate();

if(i==1)

out.println(" resume updated successfully");
 
}
catch(Exception ex)
        {
out.println("u have not submitted any resume");
    ex.printStackTrace();
}
stmt.close();
 conn.close();
 %>
    </body>
</html>

