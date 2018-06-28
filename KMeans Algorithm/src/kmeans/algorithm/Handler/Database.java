/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kmeans.algorithm.Handler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author root
 */

/**
 *
 * @author gokil
 */
public class Database {

    private static Statement stmt;
    private static Connection connect = null;

    public static Statement getStmt() {
        return stmt;
    }

    public static void setStmt(Statement stmt) {
        Database.stmt = stmt;
    }

    public static Connection getConnect() {
        return connect;
    }

    public static void setConnect(Connection connect) {
        Database.connect = connect;
    }

    // Driver JDBC
    private static final String DB_DRIVER = "com.mysql.jdbc.Driver";
    private static final String DB_NAME = "db_kuisioner";
    private static final String DB_URL = "jdbc:mysql://localhost:3306/"+DB_NAME;
    private static final String DB_USER = "gokil";
    private static final String DB_PASS = "gokil";
    

    public static Connection connect_db() {
        //String url = "jdbc:mysql://localhost:3306/kakaoIS";
        if(connect==null){
        try {
            //panggil class
            Class.forName(DB_DRIVER);
            //connect db

            connect = (Connection) DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
        } catch (Exception ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.getMessage());
        }}
        return connect;
    }

    public static int update(String sql) {
        int status = 0;
        try {
            //connect_db();
            stmt = (Statement) connect_db().createStatement();
            stmt.executeUpdate(sql);
            status = 1;
            //disconnect_db();
        } catch (Exception ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.getMessage());
        }
        //disconnect_db();
        return status;
    }

    public static ResultSet select(String sql) {
        ResultSet hasil = null;

        try {
            //connect_db();
            stmt = (Statement) connect_db().createStatement();
            hasil = stmt.executeQuery(sql);
            
            //disconnect_db();
        } catch (Exception ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.getMessage());
        }
        //disconnect_db();
        return hasil;
    }


    public static void disconnect_db() {
        if (connect != null) {
            try {
                connect.close();
            } catch (Exception ex) {
                Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
                System.out.println(ex.getMessage());
            }
        }
    }

}
