<%@ page import="java.sql.*,java.io.*,com.db.DBConnection,com.bean.user" %>
<%
DBConnection db=null;
ResultSet rs=null;
 Connection conn=null;
PreparedStatement stmt=null;
 try
{



    db=new DBConnection();
conn=db.getConnection();

stmt=conn.prepareStatement("select * from recruit " );
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

            <table bgcolor="cyan" border="1">
                <caption><strong><font color="GREEN"> COMPANIES ONLINE TEST CUTOFFS</FONT></strong> </caption>
                <TR>
                <th>COMPANY NAME</th>
                <th>CUTOFF MARKS</th>
            </TR>
            <%


while(rs.next())
    {%>
    <tr><td><%=rs.getString(4)%></td>
        <td><%=rs.getString(8)%></td>
    </tr>



<%}%>
            </table>
        </center>

    </body>


</html>
<%
stmt.close();
conn.close();

%>