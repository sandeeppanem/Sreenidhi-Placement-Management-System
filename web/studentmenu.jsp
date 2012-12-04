

<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache");



%>

   
<html>
<head>

<title>studentmenu </title>
</head>

<body background="backgrnd[2].gif">


   
    <form>
        
        
    </form>
    <p><a href="MyProfile.jsp" target="mainFrame">MyProfile</a></p>
<p><a href="Updateprofile.jsp" target="mainFrame">Update </a></p>
<a href="ChangePassword.jsp" target="mainFrame">ChangePassword</a></p>
<p><a href="companies.jsp" target="_top">companies list</a></p>

<p><a href="onlinetest.jsp" target="mainFrame">write online test</a></p>

<p><a href="Logout.jsp" target="_top">Logout</a></p>
<p><a href="Help.jsp" title="Help" target="mainFrame">Help</a></p>
<p>&nbsp;</p>

</body>
</html>
