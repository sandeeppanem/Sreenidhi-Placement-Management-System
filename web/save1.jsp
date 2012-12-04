<%@ page import="java.sql.*,java.io.*,com.db.DBConnection,com.bean.user" %>

   <jsp:useBean id="sum" scope="session" class="com.bean.user">

   </jsp:useBean>

<%

String arr[]=request.getParameterValues("date");
String company=request.getParameter("company");
 Connection conn=null;
PreparedStatement stmt=null;
  ResultSet rs=null;
DBConnection db=null;
try
{

 db=new DBConnection();
conn=db.getConnection();
int k=0;
for(int i=0;i<arr.length;i++)
    {
   stmt=conn.prepareStatement("insert into eligibleforonline values(?,?)" );
 stmt.setString(1,arr[i]);
 stmt.setString(2,company);
 int j=stmt.executeUpdate();
  k=j+1;


}
if(k==arr.length)
    {

    out.println("inserted succefully");
}
stmt.close();
conn.close();
}
catch(Exception ex)
        {

    ex.printStackTrace();

}



%>