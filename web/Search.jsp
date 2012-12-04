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
<title> search</title>
</head>

<body>
<pre>&nbsp;</pre>
 <center>
   <pre>&nbsp;</pre>

 <pre><input name="View ELIGIBLE" type="submit" value="View ELIGIBLE" />       <input type="submit" name="Selected" value="View Selected" id="Selected" />
 </pre>
 </center>
</body>
</html>
s