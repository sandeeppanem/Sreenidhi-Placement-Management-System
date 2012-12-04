

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
<title>welcome note</title>
</head>

    <body background="backgrnd[2].gif">
<br />
<br />
<table align="center" border="0" cellpadding="0" cellspacing="0" width="460">
  <tbody>
    <tr>
      <td><em><strong>some text<br>
      </strong></td>
    </tr>

  </tbody>
</table>
<br />
</body>
</html>
