<%@ page import="java.sql.*,java.io.*,com.db.DBConnection,com.bean.user" %>

<jsp:useBean id="sum" scope="session" class="com.bean.user">


   </jsp:useBean>
 <% sum.setC("YAHOO");%>
   <html>

<title>header</title>
<head></head>
<body style="background-color:red"><br>

<marquee ><h1 style="background-color:red">Welcome To <%=sum.getC()%></h1></marquee></p>

</body>

</html>