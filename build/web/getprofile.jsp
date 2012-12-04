<%@ page import="java.sql.*,java.io.*,com.db.DBConnection,com.bean.user" %>

<jsp:useBean id="sum" scope="session" class="com.bean.user">

   </jsp:useBean>



<%
Connection conn=null;
            PreparedStatement stmt=null;
            ResultSet rs=null;
DBConnection db=null;
String rollno = request.getParameter("rollno");





%>






    <html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>PROFILE</title>
</head>

    <body >

   <%

out.println(rollno);
  
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
ex.printStackTrace();
}

 %>
   <%
   if(rs.next())
       {%>

 <center>
     <table bgcolor="green" border="0" width="600" cellspacing="20" cellpadding="10" >
            <tr>
                <td >
                    ROLLNO
                </td>
                <td><%=rs.getString(1)%>

                </td>
            </tr>
        <tr>
                <td>
                    NAME
                </td>
                <td><%=rs.getString(2)%>

                </td>
            </tr>
         <tr>
                <td>
                    FATHERNAME
                </td>
                <td><%=rs.getString(3)%>

                </td>
            </tr>
         <tr>
                <td>
                    DATE OF BIRTH
                </td>
                <td><%=rs.getString(4)%>

                </td>
            </tr>
         <tr>
                <td>
                    YEAR
                </td>
                <td><%=rs.getString(5)%>

                </td>
            </tr>
         <tr>
                <td>
                    BRANCH
                </td>
                <td><%=rs.getString(6)%>

                </td>
            </tr>
        <tr>
                <td>
                    SECTION
                </td>
                <td><%=rs.getString(7)%>

                </td>
            </tr>
        <tr>
                <td>
                    10TH PERCENTAGE
                </td>
                <td><%=rs.getString(8)%>

                </td>
            </tr>
        <tr>
                <td>
                    INTER PERCENTAGE
                </td>
                <td><%=rs.getString(9)%>

                </td>
            </tr>
        <tr>
                <td>
                    EAMCET RANK
                </td>
                <td><%=rs.getString(10)%>

                </td>
            </tr>
        <tr>
                <td>
                    MOBILE NO
                </td>
                <td><%=rs.getString(11)%>

                </td>
            </tr>
         <tr>
                <td>
                    ADRESS
                </td>
             <td><textarea cols="10" rows="10"><%=rs.getString(12)%></textarea>

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

