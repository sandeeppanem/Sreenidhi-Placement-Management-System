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
<title>update profile</title>
</head>

<body>
<pre>&nbsp;</pre>
<pre>FirstName   <input type="text" name="fname" id="fname" />
</pre>
<pre>LastName    <input type="text" name="lname" id="lname" />
</pre>
<pre>StudentID   <input name="ID" type="text" id="ID" maxlength="10" />
</pre>
<pre>DOB &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;day<select name="day" id="day">     <option value="1" selected="selected">1</option>     <option value="2">2</option>     <option value="3">3</option>     <option value="4">4</option>     <option value="5">5</option>     <option value="6">6</option>     <option value="7">7</option>     <option value="8">8</option>     <option value="9">9</option>     <option value="10">10</option>     <option value="11">11</option>     <option value="12">12</option>     <option value="13">13</option>     <option value="14">14</option>     <option value="15">15</option>     <option value="16">16</option>     <option value="17">17</option>     <option value="18">18</option>     <option value="19">19</option>     <option value="20">20</option>     <option value="21">21</option>     <option value="22">22</option>     <option value="23">23</option>     <option value="24">24</option>     <option value="25">25</option>     <option value="26">26</option>     <option value="27">27</option>     <option value="28">28</option>     <option value="29">29</option>     <option value="30">30</option>     <option value="31">31</option>   </select>month<select name="month" id="month">   <option value="1" selected="selected"> 1</option>   <option value="2">2</option>   <option value="3">3</option>   <option value="4">4</option>   <option value="5">5</option>   <option value="6">6</option>   <option value="7">7</option>   <option value="8">8</option>   <option value="9">9</option>   <option value="10">10</option>   <option value="11">11</option>   <option value="12">12</option> </select>year<input name="year" type="text" id="year" size="10" maxlength="4" />
</pre>
<pre>Branch&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select name="branch" id="branch"> <option value="CSE" selected="selected">CSE</option> <option value="ECE">ECE</option> <option value="EEE">EEE</option> <option value="MECH">MECH</option> <option value="BT">BT</option> </select></pre>
<pre>SSC Marks   <input name="sscm" type="text" id="sscm" maxlength="3" />  SSC %   <input name="sscp" type="text" id="sscp" maxlength="2" />
</pre>
<pre>Inter Marks <input name="interm" type="text" id="interm" maxlength="3" />  Inter % <input name="interp" type="text" id="interp" maxlength="2" />
</pre>
<pre>I yr Marks&nbsp; <input name="Im" type="text" id="Im" maxlength="4" />  Iyr %&nbsp;&nbsp; <input name="Ip" type="text" id="Ip" maxlength="2" />
</pre>
<pre>II I Marks  <input name="IIim" type="text" id="IIim" maxlength="3" />  II I %  <input name="IIip" type="text" id="IIip" maxlength="2" />
</pre>
<pre>II II Marks <input name="IIiim" type="text" id="IIiim" maxlength="3" />  II II % <input name="IIiip" type="text" id="IIiip" maxlength="2" />
</pre>
<pre>III I Marks <input name="IIIim" type="text" id="IIIim" maxlength="3" />  III I % <input name="IIIip" type="text" id="IIIip" maxlength="2" />
</pre>
<pre>IV I Marks  <input name="IVim" type="text" id="IVim" maxlength="3" />  IV I %  <input name="IVip" type="text" id="IVip" maxlength="2" />
</pre>
<pre>IV II Marks <input name="IViim" type="text" id="IViim" maxlength="3" />  IV II % <input name="IViip" type="text" id="IViip" maxlength="2" />
</pre>
<pre>Total Marks <input type="text" name="totalm" id="totalm" />  Total%  <input name="totalp" type="text" id="totalp" maxlength="2" />
</pre>
<pre>Backlogs    <input name="backlogs" type="text" id="backlogs" value="0" maxlength="2" />
(if any)
</pre>
<pre>Selected    <input name=" selected" type="text" id=" selected" value="0" maxlength="1" />
(if any)
</pre>
<pre>Email ID1   <input type="text" name="email1" id="email1" />
</pre>
<pre>Email ID2   <input type="text" name="email2" id="email2" />
</pre>
<pre>Mobile      <input name=" mobile" type="text" id=" mobile" maxlength="10" />
</pre>
<pre>&nbsp;</pre>
<pre>        <input type="submit" name="Submit" id="Submit" value="Submit" />&nbsp;&nbsp;&nbsp;&nbsp;    <input type="reset" name="Cancel" id="Cancel" value=" Cancel" />
</pre>
</body>
</html>
