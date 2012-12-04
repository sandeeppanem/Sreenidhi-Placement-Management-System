
<%@ page import="java.sql.*,java.io.*,com.db.DBConnection,com.bean.user" %>
<jsp:useBean id="sum" scope="session" class="com.bean.user">

<jsp:getProperty name="sum" property="a" />
</jsp:useBean>

<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache");
String uname = sum.getA();
String pwd=sum.getB();

%>




<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>PROFILE</title>
</head>

<body background="backgrnd[2].gif" >

   <%


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

}
catch(Exception ex)
        {
ex.printStackTrace();
}

 %>
   <%
   if(rs.next())
       {%>

 <center>
     <table bgcolor="cyan" border="0" width="400" cellspacing="20" cellpadding="10" >
            <tr>
                <td >
                    Recruiter Name
                </td>
                <td><%=rs.getString(3)%>

                </td>
            </tr>
        <tr>
                <td>
                    Company Name
                </td>
                <td><%=rs.getString(4)%>

                </td>
            </tr>
         <tr>
                <td>
                    Experience
                </td>
                <td><%=rs.getString(5)%>

                </td>
            </tr>
         <tr>
                <td>
                    Email
                </td>
                <td><%=rs.getString(6)%>

                </td>
            </tr>
         <tr>
                <td>
                    Mobile
                </td>
                <td><%=rs.getString(7)%>

                </td>
            </tr>
        
        </table>
 </center>
     <%}
stmt.close();
conn.close();

     %>

    </body>
</html>
