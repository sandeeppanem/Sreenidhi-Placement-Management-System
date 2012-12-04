

package com.db;

import java.sql.*;

public class DBConnection {

private Connection conn=null;
public Connection getConnection()
{
    try
    {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 conn=DriverManager.getConnection("jdbc:odbc:acdb");
    }
catch(Exception ex)
{
    ex.printStackTrace();
}
return conn;
}

}
