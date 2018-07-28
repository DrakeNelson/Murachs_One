package com.Drake.JDBC.Lesson;

import com.Drake.DAC;

import java.sql.*;

public class TestStaticSQL {
    private static Connection conn = null;
    private static Statement stmt = null;
    private static PreparedStatement pstmt = null;
    private static ResultSet rs = null;

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        try {
            Class.forName("org.mariadb.jdbc.Driver");

            conn = DAC.getConnection();

            stmt = conn.createStatement();
            rs = stmt.executeQuery("SELECT * FROM countries");
            rs.last();
            System.out.println("Total Rows : " + rs.getRow());


            System.out.println();
            System.out.println();

            stmt = conn.createStatement();

            rs = stmt.executeQuery("Select * from employee");

            String format = "%-4s%-20s%-20s%-10s\n";
            while (rs.next()) {
                System.out.format(format, rs.getString("id"), rs.getString("firstname"), rs.getString("lastname"), rs.getString("salary"));
            }

            System.out.println();

            //prepared statement select with parameter
            pstmt = conn.prepareStatement("select * from employee where firstname = ?");
            pstmt.setString(1, "John");

            rs = pstmt.executeQuery();

            while (rs.next()) {
                System.out.format(format, rs.getString("id"), rs.getString("firstname"), rs.getString("lastname"), rs.getString("salary"));
            }
            rs.last();
            System.out.println("total Employees : " + rs.getRow());

            System.out.println();

            String sql = "insert into employee (firstname, lastname, dept, salary) values(?,?,?,?)";
            pstmt.close();
            rs.close();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, "Aaron");
            pstmt.setString(2, "westlake");
            pstmt.setString(3, "IT");
            pstmt.setInt(4, 70000);

            int insertResult = pstmt.executeUpdate();
            if (insertResult == 1) {
                System.out.println("successful insert of 1 record aaron westlake");

            } else {
                System.out.println("failure in insert of 1 record");

            }

            //updating result set
            stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stmt.executeQuery("Select * from employee");
            rs.last();
            rs.deleteRow();

            System.out.println("deleted the last record in the table ");

            System.out.println();


            sql = "update employee set salary = ? where id = 8";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, 8);
            pstmt.setInt(1, 80000);

            pstmt.executeUpdate();
            int updateResult = pstmt.executeUpdate();
            if (updateResult == 1) {
                System.out.println("successful update of aaron westlake salary");
            } else {
                System.out.println("failure in update of 1 record");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            DAC.disconnect(conn, rs, stmt, pstmt);
        }
    }
}
