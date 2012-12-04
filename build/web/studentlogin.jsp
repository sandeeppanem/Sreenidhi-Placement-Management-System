<%@ page import="java.sql.*,java.io.*,com.db.DBConnection,com.bean.user" %>
<jsp:useBean id="sum" scope="session" class="com.bean.user">

<jsp:getProperty name="sum" property="a" />
</jsp:useBean>

<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title> student login</title>
</head>

    <frameset rows="40,*" cols="*" frameborder="yes" border="10" framespacing="10" >
  <frame src="header1.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame"  />
  <frameset rows="*" cols="145,*" framespacing="10" frameborder="yes" border="10">
    <frame src="studentmenu.jsp" name="leftFrame" target="_blank" scrolling="No" noresize="noresize" id="leftFrame" title="leftFrame" />
    <frame src="welcomemenu.jsp" name="mainFrame" id="mainFrame" title="mainFrame" />
  </frameset>
</frameset>
<noframes><body>
</body></noframes>

</html>
