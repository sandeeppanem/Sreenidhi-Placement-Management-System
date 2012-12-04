<%@ page import="java.sql.*,java.io.*,com.db.DBConnection,com.bean.user" %>
<jsp:useBean id="sum" scope="session" class="com.bean.user">


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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

    <frameset rows="*" cols="200,*"  frameborder="yes" border="5" >
    <frame src="recruitermenu.jsp" name="leftFrame" />
    <frame src="welcomemenu.jsp"  name="mainFrame"  />
  </frameset>

  <body>
</body>
</html>
