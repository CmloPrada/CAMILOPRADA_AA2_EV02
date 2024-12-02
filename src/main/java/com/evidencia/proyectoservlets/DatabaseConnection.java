package com.evidencia.proyectoservlets;
    
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    
    protected static Connection initializeDatabase() 
            throws SQLException, ClassNotFoundException{
    //variables de entorno
    String dbDriver = "com.mysql.cj.jdbc.Driver" ;
    String dbURL = "jdbc:mysql://localhost:3306/";
    String dbName = "PruebaJava";
    String dbUsername = "root";
    String dbPassword = "";

    Class.forName(dbDriver);
    Connection con = DriverManager.getConnection(dbURL + dbName,dbUsername,dbPassword);
    
      return con;
    } 
}
