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


<html>
<head><title>Submit Resume Form</title>
<link href="http://www.unavco.org/lib/style/master.css" rel="stylesheet" type="text/css">
<map name="logo">
<area alt="UNAVCO Home" coords="10,10,235,55" href="http://www.unavco.org">
</map>
<script>
 function validate(form1)
        {
           flag=true;
           if(form1.fname.value.length==0)
               {
                   alert("please enter firstname");
         flag=false;
         return flag;
           }
           if(form1.minitial.value.length==0)
               {
                   alert("please enter middlename");
         flag=false;
         return flag;
           }
   if(form1.lname.value.length==0)
               {
                   alert("please enter lastname");
         flag=false;
         return flag;
           }
if(form1.hphone.value.length==0)
               {
                   alert("please enter firstname");
         flag=false;
         return flag;
           }
if(form1.cellphone.value.length==0)
               {
                   alert("please enter firstname");
         flag=false;
         return flag;
           }
if(form1.year.value=="select one")
               {
                   alert("please select year");
         flag=false;
         return flag;
           }
           if(form1.aggregate.value.length==0)
               {
                   alert("please enter aggregate % till now");
         flag=false;
         return flag;
           }
if(form1.email.value.length==0)
               {
                   alert("please enter email");
         flag=false;
         return flag;
           }
           if(form1.adress.value.length==0)
               {
                   alert("please enter adress");
         flag=false;
         return flag;
           }
if(form1.city.value.length==0)
               {
                   alert("please enter city");
         flag=false;
         return flag;
           }
if(form1.state.value.length==0)
               {
                   alert("please enter state");
         flag=false;
         return flag;
           }
if(form1.country.value.length==0)
               {
                   alert("please enter country");
         flag=false;
         return flag;
           }
if(form1.postalcode.value.length==0)
               {
                   alert("please enter postalcode");
         flag=false;
         return flag;
           }
if(form1.skills.value.length=0)
               {
                   alert("please enter your skills");
         flag=false;
         return flag;
           }
if(form1.expsalary.value.length==0)
               {
                   alert("please enter expected salary");
         flag=false;
         return flag;
           }
if(!form1.check.checked)
               {
                   alert("please acknowledge");
         flag=false;
         return flag;
           }
}
</script>
</head>
<body bgcolor="#FFFFFF" text="#000000">
 <%
 String rollno =sum.getA();
 String company=sum.getC();
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
 <form name="form1" id="ResumeForm" method="post" action="updateresume1.jsp" onsubmit="return validate(this)">
    <table width="970" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="370"></td>

<td width="600" rowspan="2"><img src="images/microsoft1.jpg" width="500" height="95" alt="" border="0" align="center"></td>



</tr>

</table>


<p align="center">
<font color="red">* Required fields</font></p>







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










<tr>

<td colspan="3">
    <b>PLEASE READ EACH STATEMENT CAREFULLY BEFORE SIGNING</b>
<br>
<br>
I certify that all information provided in this employment application is true and complete. I understand that any false information or omission may disqualify me from further consideration for employment and may result in my dismissal if discovered at a later date.
<br>
<br>
I authorize the investigation of any or all statements contained in this application. I also authorize, whether listed or not, any person, school, current employer, past employers, and organizations to provide relevant information and opinions that may be useful in making a hiring decision. I release such persons and organizations from any legal liability in making such statements.
<br>

<br>

By checking this box, I acknowledge that I have read, understand, and agree to these statements.
<input type="checkbox" name="check" value="Y">
</td>
</tr>

	<tr>
	<td colspan="2"><hr></td>
	</tr>



	<tr>
	<td colspan="2" align="left">

	<input type="submit" name="btnSubmit" value="Submit Information">

	</td>
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















