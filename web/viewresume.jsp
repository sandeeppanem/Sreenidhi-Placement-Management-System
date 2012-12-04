
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache");
%>


<html>
<head><title>Submit Resume Form</title>
<link href="http://www.unavco.org/lib/style/master.css" rel="stylesheet" type="text/css">
<map name="logo">
<area alt="UNAVCO Home" coords="10,10,235,55" href="http://www.unavco.org">
</map>

</head>
<body bgcolor="CYAN" text="#000000">
    <center>
    <form method="post" action="viewresume1.jsp">
        <strong>Enter Student Rollno:</strong><input type="text" name="rollno"><br><BR><BR><Br>
    <input type="submit" value="Get Resume">
    </form>
    </center>
    </body>
</html>


