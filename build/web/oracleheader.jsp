<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache");
%>
<%@ page import="java.sql.*,java.io.*,com.db.DBConnection,com.bean.user" %>

<jsp:useBean id="sum" scope="session" class="com.bean.user">


   </jsp:useBean>
 <% sum.setC("ORACLE");%>
   <html>

<title>header</title>
<head></head>
<body style="background-color:red"><br>

<marquee ><h1 style="background-color:red">Welcome To <%=sum.getC()%></h1></marquee></p>

</body>

</html>