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

 Connection conn=null;
PreparedStatement stmt=null;
  ResultSet rs=null;
DBConnection db=null;
try
{


    db=new DBConnection();
conn=db.getConnection();
stmt=conn.prepareStatement("select * from profile where rollno=?" );
 stmt.setString(1,rollno);
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
     <form name="form1" method="post" action="Updateprofile1.jsp"  >
     <table bgcolor="green" border="0" width="600" cellspacing="20" cellpadding="10" >
            <tr>
                <td >
                    ROLLNO
                </td>
                <td><input type="text" name="rollno" value="<%=rs.getString(1)%>"></input>

                </td>
            </tr>
        <tr>
                <td>
                    NAME
                </td>
                <td><input type="text" name="name" value="<%=rs.getString(2)%>"></input>

                </td>
            </tr>
         <tr>
                <td>
                    FATHERNAME
                </td>
                <td><input type="text" name="fname" value="<%=rs.getString(3)%>"></input>

                </td>
            </tr>
         <tr>
                <td>
                    DATE OF BIRTH
                </td>
                <td><input type="text" name="dob" value="<%=rs.getString(4)%>"></input>

                </td>
            </tr>
         <tr>
                <td>
                    YEAR
                </td>
                <td><input type="text" name="year" value="<%=rs.getString(5)%>"></input>

                </td>
            </tr>
         <tr>
                <td>
                    BRANCH
                </td>
                <td><input type="text" name="branch" value="<%=rs.getString(6)%>"></input>

                </td>
            </tr>
        <tr>
                <td>
                    SECTION
                </td>
                <td><input type="text" name="section" value="<%=rs.getString(7)%>"></input>

                </td>
            </tr>
        <tr>
                <td>
                    10TH PERCENTAGE
                </td>
                <td><input type="text" name="tenth" value="<%=rs.getString(8)%>"></input>

                </td>
            </tr>
        <tr>
                <td>
                    INTER PERCENTAGE
                </td>
                <td><input type="text" name="inter" value="<%=rs.getString(9)%>"></input>

                </td>
            </tr>
        <tr>
                <td>
                    EAMCET RANK
                </td>
                <td><input type="text" name="eamcet" value="<%=rs.getString(10)%>"></input>

                </td>
            </tr>
        <tr>
                <td>
                    MOBILE NO
                </td>
                <td><input type="text" name="mobile" value="<%=rs.getString(11)%>"></input>

                </td>
            </tr>
         <tr>
                <td>
                    ADRESS
                </td>
                <td><textarea cols="10" rows="10" name="adress"><%=rs.getString(12)%></textarea>

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
