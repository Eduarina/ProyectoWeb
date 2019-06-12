/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

/**
 *
 * @author 01
 */
public class Clase_conexion {
    private DataSource db;
    
    public Clase_conexion(){
        BasicDataSource bds= new BasicDataSource();
        bds.setDriverClassName("com.mysql.jdbc.Driver");
        bds.setUrl("jdbc:mysql//localhost:3306/rodlp");
        bds.setUsername("root");
        bds.setPassword("1234");
        
        this.db =bds;
    }
    
    public Connection getConexion() throws SQLException{
        return  db.getConnection(); 
    }
    
}
