<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache");
%>
<html>
<body>
    <p><a href="studentlogin.jsp" target="_parent">HOME</a></p>
<p><a href="submitresume.jsp" target="mainFrame">submit resume</a></p>
<p><a href="updateresume.jsp" target="mainFrame">update resume</a></p>
<p><a href="eligible.jsp" target="mainFrame">view eligible students for online test</a></p>
<p><a href="viewonlinemarks.jsp" target="mainFrame">view online marks</a></p>
<p><a href="finalselected.jsp" target="mainFrame">view final selected students</a></p>
</body>
</html>
