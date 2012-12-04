<%@ page import="java.sql.*,com.db.DBConnection,com.bean.user" %>


<%
Connection conn=null;
            PreparedStatement stmt=null;
            ResultSet rs=null;
DBConnection db=null;

try
{
db=new DBConnection();
conn=db.getConnection();
stmt=conn.prepareStatement("select * from eligibleforonline " );

   rs=stmt.executeQuery();

}
catch(Exception ex)
        {
ex.printStackTrace();
}


%>
<html>
    <body>
        <center>
            <table bgcolor="cyan" cellpadding="5" cellspacing="5" border="1">
                <caption><strong><font color="green">ELIGIBLE STUDENTS FOR ONLINE TEST</font></strong></caption>
                <tr>
                <th>STUDENT ROLLNO</TH>
                <th>COMPANY NAME</th>
                </tr>
                <%while(rs.next())
                    {%>
                    <tr><td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td></tr>

                <%}%>



            </table>
        </center>
    </body>

</html>