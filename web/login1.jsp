<%@ page import="java.sql.*,com.db.DBConnection,com.bean.user" %>

<jsp:useBean id="sum" scope="session" class="com.bean.user">
    <jsp:setProperty name="sum" property="a" param="username"/>
    <jsp:setProperty name="sum" property="b" param="password"/>

</jsp:useBean>



<%
String uname=null;
String pwd=null;
Connection conn=null;
            PreparedStatement stmt=null;
            ResultSet rs=null;
DBConnection db=null;
 uname=sum.getA();
 pwd=sum.getB();
String company;
try
{
db=new DBConnection();
conn=db.getConnection();
stmt=conn.prepareStatement("select * from recruit where uname=? and pwd=?" );
 stmt.setString(1,uname);
 stmt.setString(2,pwd);
  rs=stmt.executeQuery();
while(rs.next())
    {
company=rs.getString(4);
sum.setD(company);
}
}
catch(Exception ex)
        {
ex.printStackTrace();
}


%>


<%           uname = request.getParameter("username");
             pwd = request.getParameter("password");
            String type=request.getParameter("type");

            
        if(uname!=null&&pwd!=null)
            {

            try
            {
            db=new DBConnection();
conn=db.getConnection();



           if(type.equalsIgnoreCase("student"))
               {
           stmt=conn.prepareStatement("select uname,pwd from login where uname=? and pwd=?");
            stmt.setString(1,uname);
            stmt.setString(2,pwd);
               rs=stmt.executeQuery();

               if(rs.next())
            {
               RequestDispatcher dispatch = request.getRequestDispatcher("studentlogin.jsp");

dispatch.forward(request, response);
} else
           {
           out.println("u have not logged in");
           }

           }
               if(type.equalsIgnoreCase("administrator"))
               {
           stmt=conn.prepareStatement("select uname,pwd from admin where uname=? and pwd=?");
            stmt.setString(1,uname);
            stmt.setString(2,pwd);
               rs=stmt.executeQuery();
            if(rs.next())
            {
                  
                 String encodedURL=response.encodeRedirectURL("admin.jsp");
response.sendRedirect(encodedURL);
} else
           {
           out.println("u have not logged in");
           }

               }
if(type.equalsIgnoreCase("recruiter"))
               {
            stmt=conn.prepareStatement("select uname,pwd from recruit where uname=? and pwd=?");
            stmt.setString(1,uname);
            stmt.setString(2,pwd);
               rs=stmt.executeQuery();
            if(rs.next())
            {
               response.sendRedirect("recruiterlogin.jsp");
            }
 else
           {
           out.println("u have not logged in");
           }
}





conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}

}
            %>