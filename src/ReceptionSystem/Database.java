/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ReceptionSystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Melanie
 */
public class Database {

    private Connection connection;

    //change this into your own username & password
    private static final String DBUSERNAME = "root";
    private static final String DBPASSWORD = "82465";

    /**
     * Creates a new instance of DBConnection
     */
    public Database() {

    }

    public void init() {
        try {
            Class.forName("com.mysql.jdbc.Driver"); // load the driver

            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/receptionsys", DBUSERNAME, DBPASSWORD
            ); // connect to the database

            System.out.println("Database connection successful.");
        } catch (Exception e) {
            System.out.println("Failed to get connection");
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        return connection;
    }

    public ResultSet sqlQuery(String sql) {
        try {
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(sql);
            return result;
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    public ResultSet getStudentInfo(String id) {
        return sqlQuery(
                "SELECT student_id, firstname, lastname, program, batch, email" + "\n"
                + "FROM student\n"
                + "WHERE student.student_id = '" + id + "';");
    }

}
