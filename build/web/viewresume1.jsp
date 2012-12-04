<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache");
%>
<%@ page import="java.sql.*,java.io.*,com.db.DBConnection,com.bean.user" %>
   <jsp:useBean id="sum" scope="session" class="com.bean.user">


   </jsp:useBean>


<html>
<head><title>Submit Resume Form</title>
<link href="http://www.unavco.org/lib/style/master.css" rel="stylesheet" type="text/css">
<map name="logo">
<area alt="UNAVCO Home" coords="10,10,235,55" href="http://www.unavco.org">
</map>

</head>
<body background="backgrnd[2].gif" text="#000000">
 <%
 String rollno =request.getParameter("rollno");
 String company=sum.getD();
 
 Connection conn=null;
PreparedStatement stmt=null;
  ResultSet rs=null;
DBConnection db=null;
try
{


    db=new DBConnection();
conn=db.getConnection();
stmt=conn.prepareStatement("select * from resume where rollno=? and company=?" );
 stmt.setString(1,rollno);
 stmt.setString(2,company);
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
 <form name="form1" >
  
<table align="center" width="500" border="0" cellpadding="2" cellspacing="4" bgcolor="silver">

	<tr>
	<td align="left"><B>First Name:<font color="red" size="-2"><i>*</i></font></B></td>

        <td><input type="text" name="fname" value="<%=rs.getString(3)%>" size="40" maxlength="50"></td>
	</tr>
	<tr>
	<td align="left"><B>Middle Initial:</B></td>
        <td><input type="text" name="minitial" value="<%=rs.getString(4)%>" size="1" maxlength="1"></td>
	</tr>
	<tr>
	<td align="left"><B>Last Name:<font color="red" size="-2"><i>*</i></font></B></td>

        <td><input name="lname" size="40" value="<%=rs.getString(5)%>" maxlength="50"></td>
	</tr>
	<tr>
	<td align="left"><B>Home Phone:<font color="red" size="-2"><i>*</i></font></B></td>
        <td><input name="hphone" size="40" value="<%=rs.getString(6)%>" maxlength="50"></td>
	</tr>

	<tr>
	<td align="left"><B>Cell Phone:</B></td>
        <td><input name="cellphone" size="40" value="<%=rs.getString(7)%>" maxlength="50"></td>
	</tr>
	<tr>
	<td align="left" valign="top"><B>select year:<font color="red" size="-2"><i>*</i></font></B></td>

	<td><select name="year"  >
                <option selected="true" value="<%=rs.getString(8)%>">select one</option>
	<option value="3">3rd year</option>
	<option value="4">4th year</option>

	</select></td>
	</tr>
<tr>
<td><B>aggregate:</B><font color="red" size="-2"><i>*</i></font></td>
<td><input type="text" name="aggregate" value="<%=rs.getString(9)%>"></td>
</tr>
	<tr>
	<td align="left"><B>Email:<font color="red" size="-2"><i>*</i></font></B></td>
        <td><input name="email" size="40" value="<%=rs.getString(10)%>" maxlength="100"></td>
	</tr>
	<tr>
	<td align="left"><B>Address:<font color="red" size="-2"><i>*</i></font></B></td>
        <td><input name="adress" size="40" value="<%=rs.getString(11)%>" maxlength="100"></td>

	</tr>
	<tr>
	<td align="left"><B>City:<font color="red" size="-2"><i>*</i></font></B></td>
        <td><input name="city" size="40" value="<%=rs.getString(12)%>" maxlength="100"></td>
	</tr>
	<tr>
	<td align="left"><B>State/Province:</B></td>

        <td><input name="state" size="40" value="<%=rs.getString(13)%>" maxlength="50"></td>
	</tr>
	<tr>
	<td align="left"><B>Country:<font color="red" size="-2"><i>*</i></font></B></td>
	<td><input name="country" size="40" maxlength="50" value="<%=rs.getString(14)%>"></td>
	</tr>
	<tr>
	<td align="left"><B>Postal Code:<font color="red" size="-2"><i>*</i></font></B></td>

        <td><input name="postalcode" size="40" value="<%=rs.getString(15)%>" maxlength="50"></td>
	</tr>

	<tr>
<td colspan="3"><B>SKILLS:</B></td>
</tr>
<tr><td colspan="3"><textarea name="skills" rows="10" cols="50"   ><%=rs.getString(16)%></textarea></td></tr>









	<tr>
	<td align="left" colspan="2"><B>What approximate salary do you expect:<font color="red" size="-2"><i>*</i></font></B></td>
	</tr>

	<tr>
            <td colspan="2"><input name="expsalary" size="40" value="<%=rs.getString(17)%>" maxlength="50"></td>
	</tr>


</table>
</form>
<%}
else
    {
out.println("u have not submitted any resume..");
}
stmt.close();
conn.close();
%>
</body>
</html>















