/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package hibernate.dao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author thanh
 */
public class ConnectionDB {
    public Connection getConnecttion() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String URL = "jdbc:sqlserver://127.0.0.1:1433;databaseName=ResultDeclaration";
            String username = "sa";
            String password ="123456";
            return DriverManager.getConnection(URL, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
