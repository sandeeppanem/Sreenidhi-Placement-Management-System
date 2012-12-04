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

<body background="backgrnd[2].gif" >

   <%
 String uname =sum.getA();
  String pwd =sum.getB();

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
out.println("u have not submitted any resume");
    ex.printStackTrace();

}

 %>
   <%
   if(rs.next())
       {%>

 <center>
     <form name="form1" method="post" action="rupprofile1.jsp"  >
     <table bgcolor="cyan" border="0" width="400" cellspacing="20" cellpadding="10" >
            <tr>
                <td >
                    Recruiter Name
                </td>
                <td><input type="text" name="rname" value="<%=rs.getString(3)%>"></input>

                </td>
            </tr>
        <tr>
                <td>
                    Company Name
                </td>
                <td><input type="text" name="cname" value="<%=rs.getString(4)%>"></input>

                </td>
            </tr>
         <tr>
                <td>
                    Experience
                </td>
                <td><input type="text" name="exp" value="<%=rs.getString(5)%>"></input>

                </td>
            </tr>
         <tr>
                <td>
                    Email
                </td>
                <td><input type="text" name="email" value="<%=rs.getString(6)%>"></input>

                </td>
            </tr>
         <tr>
                <td>
                    Mobile
                </td>
                <td><input type="text" name="mobile" value="<%=rs.getString(7)%>"></input>

                </td>
            </tr>
         
          <%conn.close();stmt.close();%>
            <tr>
                <td  align="center" colspan="2"><input type="submit" value="UPDATE" name="update" ></input>
            </tr>
     </table>
</form>
 </center>
     <%}

%>

    </body>
</html>
