package com.Drake.DataAccess.Section1.Chapter2;

import com.Drake.DAC;
import com.Drake.business.Section1.Chapter2.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletContext.*;

public class UserDB {
    private static Connection connection;

    public static boolean insert(User user) {
        if (setConnection()) {
            //dostuff
            String sql = "INSERT INTO USER (EMAIL, FIRSTNAME, LASTNAME) VALUES('" + user.getEmail() + "', '" + user.getFirstName() + "', '" + user.getLastName() + "');";
            try {
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.executeUpdate();
                preparedStatement.close();
            } catch (SQLException e) {
                System.err.println("Error preparing the sql statement");
                return false;
            }
        } else {
            return false;
        }

        return DAC.disconnect(connection);
    }

    private static boolean setConnection() {
        try {
            connection = DAC.getConnection();
        } catch (SQLException | ClassNotFoundException e) {
            System.err.println("Error in the java connection with MariaDB");
            e.printStackTrace();
            return false;
            //comment
        }
        return true;
    }
}
