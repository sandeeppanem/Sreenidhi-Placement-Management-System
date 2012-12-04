<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache");
%>
<html>
<body>
<table border="0"  cellspacing="80" >
<tr>
<td>
<a href="microsoft.jsp"  target="_self"><img src="images/microsoft.jpg" width="150" height="120" ></a>
</td>
<td>
<a href="tcs.jsp"  target="_self"><img src="images/tcs.jpg" width="150" height="120" ></a>
</td>
<td>
<a href="delloite.jsp"  target="_self"><img src="images/delloite.jpg" width="150" height="120" ></a>
</td>
<td>
<a href="google.jsp"  target="_self"><img src="images/google.jpg" width="150" height="120" ></a>
</td>
</tr>
<tr>
<td>
<a href="ibm.jsp"  target="_self"><img src="images/ibm.jpg" width="150" height="120" ></a>
</td>
<td>
<a href="infosys.jsp"  target="_self""><img src="images/infosys.jpg" width="150" height="120" ></a>
</td>
<td>
<a href="ingrammicro.jsp"  target="_self"><img src="images/ingrammicro.jpg" width="150" height="120" ></a>
</td>
<td>
<a href="intergraph.jsp"  target="_self"><img src="images/intergraph.jpg" width="150" height="120" ></a>
</td>
</tr>
<tr>
<td>
<a href="oracle.jsp"  target="_self"><img src="images/oracle.jpg" width="150" height="120"></a>
</td>
<td>
<a href="satyam.jsp"  target="_self"><img src="images/satyam.jpg" width="150" height="120" ></a>
</td>
<td>
<a href="wipro.jsp"  target="_self"><img src="images/wipro.jpg" width="150" height="120" ></a>
</td>
<td>
<a href="yahoo.jsp"  target="_self"><img src="images/yahoo.jpg" width="150" height="120" ></a>
</td>
</tr>
</table>



</body>
</html>