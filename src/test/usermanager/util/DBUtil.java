package test.usermanager.util;

import java.sql.*;

public class DBUtil {
    public static Connection getConnection(){
        String username = "root";
        String password = "wz19111yz38018";
        String url = "jdbc:mysql://localhost:3306/itat_shop";
        String driver = "com.mysql.jdbc.Driver";
        Connection connection = null;
        try {
            try {
                Class.forName(driver).newInstance();
            } catch (InstantiationException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            connection = DriverManager.getConnection(username,password,url);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public static void close(Connection connection){
        try {
            if (connection!=null){
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void close(PreparedStatement preparedStatement){
        try {
            if (preparedStatement!=null) preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void close(ResultSet rs){
        try {
            if (rs!=null) rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
