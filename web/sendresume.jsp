<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache");
%>
<%@ page import="java.sql.*,java.io.*,com.db.DBConnection,com.bean.user" %>
   <jsp:useBean id="sum" scope="session" class="com.bean.user">
      <jsp:getProperty name="sum" property="a" />
       <jsp:getProperty name="sum" property="c" />

   </jsp:useBean>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>PROFILE</title>

</head>

    <body >

   <%
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
Connection conn=null;
PreparedStatement stmt=null;
    db=new DBConnection();
conn=db.getConnection();

stmt=conn.prepareStatement("INSERT INTO resume VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)" );

stmt.setString(1,rollno);
stmt.setString(2,company);
stmt.setString(3,fname);
stmt.setString(4,minitial);
stmt.setString(5,lname);
stmt.setString(6,hphone);
stmt.setString(7,cellphone);
stmt.setString(8,year);
stmt.setString(9,aggregate);
stmt.setString(10,email);
stmt.setString(11,adress);
stmt.setString(12,city);
stmt.setString(13,state);
stmt.setString(14,country);
stmt.setString(15,postalcode);
stmt.setString(16,skills);
stmt.setString(17,expsalary);

int i=stmt.executeUpdate();

if(i==1)

out.println("RESUME SUBMITTED SUCCESFULLY");


stmt.close();
 conn.close();
}
catch(Exception ex)
        {
out.println("u have already submitted if u want to update u can update resume");
    ex.printStackTrace();
}

 %>
    </body>
</html>

