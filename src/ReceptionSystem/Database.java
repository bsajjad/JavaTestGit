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
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.Random;
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
    private static final String DBPASSWORD = "";

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
            if (result == null) {

            }
            return result;
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    public ResultSet getStudentInfo(String id) {
        return sqlQuery(
                "SELECT student.student_id, firstname, lastname, program, batch, email, "
                + "count(visit.student_id) AS 'Total Visits', max(visit.date) AS 'Last Visit', photopath\n"
                + "FROM visit\n"
                + "RIGHT JOIN student ON student.student_id=visit.student_id\n"
                + "WHERE student.student_id = '" + id + "'\n"
                + "GROUP BY student_id;");
    }

    public ResultSet getLastVisitReason(String id, String date) {
        return sqlQuery(
                "SELECT reasoncategory.category AS 'Last Reason'\n"
                + "FROM visit\n"
                + "JOIN reasoncategory ON visit.category_id = reasoncategory.category_id\n"
                + "WHERE student_id = '" + id + "' AND " + "visit.date = '" + date + "';\n");
    }

    public ArrayList<String> getAllReasonCategoryName() throws SQLException {
        ArrayList<String> names = new ArrayList<String>();
        ResultSet result = sqlQuery(
                "SELECT reasoncategory.category\n"
                + "FROM reasoncategory");
        while (result.next()) {
            names.add(result.getString("category"));
        }
        return names;
    }
    

    public String login(String username) throws SQLException {
        ResultSet r = sqlQuery("SELECT password FROM user WHERE username = '" + username + "';");
        String password = "";
        if (r.next()) {
            password = (String) r.getString("password");
        } else {
            password = "";
        }
        return password;
    }

    public void addStudentInfo(String ID, String fname, String lname, String Pro, String Batch, String email) throws SQLException {
        Statement statement = connection.createStatement();
        statement.executeUpdate(
                "INSERT INTO receptionsys.student (student_ID,firstname, lastname,program, batch, email)\n"
                + "VALUES ('" + ID + "','" + fname + "','" + lname + "','" + Pro + "','" + Batch + "','" + email + "');\n");
        statement.close();

    }

    public void addVisit(String student_id, String category, String detail) throws SQLException{
        String category_id = "";
        ResultSet result = sqlQuery(
                "SELECT reasoncategory.category_id\n"
                + "FROM reasoncategory\n"
                + "WHERE reasoncategory.category = '" + category + "';\n");
        result.first();
        category_id = result.getString("category_id");
        
        GregorianCalendar dt = new GregorianCalendar();
        java.sql.Timestamp rdTime = new java.sql.Timestamp(dt.getTimeInMillis());
        String currentTime = rdTime.toString().substring(0, 19);
        
        Statement statement = connection.createStatement();
        statement.executeUpdate(
                "INSERT INTO receptionsys.visit (student_ID, date, category_id, detailreason)\n"
                + "VALUES ('" + student_id + "','"+ currentTime +"','"+ category_id +  "','" + detail + "');\n");
        statement.close();
    }
    
    public ResultSet SearchID(String id) {
        return sqlQuery(
                "SELECT * \n"
                + "FROM student\n"
                + "WHERE student_id = '" + id + "';\n");

    }
    //following were used to randomize visit data in database
//    public void randomVisitData() throws SQLException {
//        ResultSet categories = sqlQuery("SELECT category_id FROM reasoncategory;\n");
//        ResultSet studentid = sqlQuery("SELECT student_id FROM student;\n");
//
//        studentid.last();
//        int rownum = studentid.getRow();
//        studentid.beforeFirst();
//
//        ArrayList<String> cate = new ArrayList<String>();
//        while (categories.next()) {
//            cate.add(categories.getString(1));
//        }
//
//        ArrayList<String> stu = new ArrayList<String>();
//        while (studentid.next()) {
//            stu.add(studentid.getString(1));
//        }
//
//        Random rd = new Random();
//        
//        for (int i = 0; i < 100; i++) {
//            int rdRowC = rd.nextInt(9);
//            int rdRowS = rd.nextInt(rownum);
//            
//            GregorianCalendar dt = new GregorianCalendar(2014, rdnum(8, 11), rdnum(1, 30), rdnum(9, 17), rdnum(0, 59), rdnum(0, 59));
//            java.sql.Timestamp rdTime = new java.sql.Timestamp(dt.getTimeInMillis());
//            String time = rdTime.toString().substring(0, 19);
//            Statement statement = connection.createStatement();
//            statement.executeUpdate(
//                    "INSERT INTO visit (student_id,date,category_id)\n"
//                    + "VALUES ('" + stu.get(rdRowS) + "','" + time + "','" + cate.get(rdRowC) + "');\n");
//            statement.close();
//        }
//    }
//
    public int rdnum(int start, int end) {
        return start + (int) (Math.random() * (end - start + 1));
    }

}
