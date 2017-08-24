package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Jdbc {
    public static Connection connect() throws ClassNotFoundException, SQLException {
        Connection conn = null;
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/laiyin";
        String username = "root";
        String password = "liangbin";
        conn = DriverManager.getConnection(url, username, password);
        return conn;
    }
    public void close (Statement stat, Connection conn) throws SQLException {
        if (stat!=null){
            stat.close();
        }
        if(conn!=null){
            conn.close();
        }
    }
}
