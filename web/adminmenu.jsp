<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>tpo menu</title>
</head>

<body>
<p><a href="getstudentdetails.jsp" target="mainFrame">verify student details</a></p>
<p><a href="selectonline.jsp" target="mainFrame">select eligible students for online test</a></p>
<p><a href="eligible.jsp" target="mainFrame">view eligible students to write online test</a></p>
<p><a href="eligible1.jsp" target="mainFrame">view eligible students for interview</a></p>
<p><a href="eligible2.jsp" target="mainFrame">view final selected students</a></p>
<p><a href="cutoff1.jsp" target="mainFrame">view companies cutoffs</a></p>
<p><a href="datesofcom.jsp" target="mainFrame">view companies dates of coming to coll</a></p>
<p><a href="adchangepass.jsp" target="mainFrame">ChangePassword</a></p>
<p><a href="Logout.jsp" target="_top">Logout</a></p>
</body>
</html>
