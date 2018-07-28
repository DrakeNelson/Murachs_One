package com.Drake.JDBC.Lesson;

import com.Drake.DAC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(DAC.dburl, DAC.userName, DAC.password);
    }


}
