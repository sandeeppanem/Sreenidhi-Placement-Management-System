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
 String rollno =sum.getA();

 String name=request.getParameter("name");

 String fname=request.getParameter("fname");
String dob=request.getParameter("dob");
String year=request.getParameter("year");
String branch=request.getParameter("branch");
String section=request.getParameter("section");
String tenth=request.getParameter("tenth");
String inter=request.getParameter("inter");
String eamcet=request.getParameter("eamcet");
String mobile=request.getParameter("mobile");
String adress=request.getParameter("adress");

DBConnection db=null;
try
{
Connection conn=null;
PreparedStatement stmt=null;
    db=new DBConnection();
conn=db.getConnection();

stmt=conn.prepareStatement("UPDATE profile SET name=?,fname=?,dob=?,year=?,branch=?,section=?,tenth=?,inter=?,eamcet=?,mobile=?,adress=? where rollno=?" );


stmt.setString(1,name);
stmt.setString(2,fname);
stmt.setString(3,dob);
stmt.setString(4,year);
stmt.setString(5,branch);
stmt.setString(6,section);
stmt.setString(7,tenth);
stmt.setString(8,inter);
stmt.setString(9,eamcet);
stmt.setString(10,mobile);
stmt.setString(11,adress);

stmt.setString(12,rollno);
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
  
 