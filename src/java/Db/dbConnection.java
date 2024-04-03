/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author user
 */
public class dbConnection {
    private static final String URL = "jdbc:postgresql://localhost:5432/BlackJack";
        private static final String USER = "postgres";
        private static final String PASS = "sanaazbadi";

    public static Connection getConnection() {
        Connection connection = null;
        try {

            Class.forName("org.postgresql.Driver");

            connection = DriverManager.getConnection(URL, USER, PASS);

        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("Erreur lors de la connexion à la base de données : " + e.getMessage());
        }
        return connection;
    }
}
