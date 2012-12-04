<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache");
%>
<%--
    Document   : select
    Created on : Apr 9, 2010, 9:25:48 PM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<HTML><HEAD>
<TITLE>test</TITLE>
<script LANGUAGE="JavaScript">
__uid = 0;

doc = document;
function addrow(id)
{

var tbl = doc.getElementById(id);
//create a new row
var newrow = doc.createElement("TR");
var newcol , newinput;
newcol = doc.createElement("TD");
newcol.width = 200;
newinput = doc.createElement("input");
newinput.name = "date";
newinput.size = 40;
newinput.align="center";
newinput.value = doc.main.date.value
newcol.appendChild(newinput);
newrow.appendChild(newcol);
tbl.appendChild(newrow);
document.main.date.value =''
document.main.date.focus();
 ''
}

</script>
</HEAD>
<body background="backgrnd[2].gif">
    <center>
        <form name="main" method='post' action="save2.jsp">

        <table id="tbl1">
            <caption> ENTER ROLLNUMBER OF STUDENTS</caption>
            <tbody id="tbl1body">

    <tr> <td align="center"><input type='text' name='date' size=40 maxlength=200 value=""/></td></tr>
</tbody>
</table>
        <br><br>
       <input type="button" value="add" onclick="addrow('tbl1body')">
      <input type="submit" value="submit">
    </form>

    </center>
    </body>
</html>