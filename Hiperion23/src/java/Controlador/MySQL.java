/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Lenovv
 */
public class MySQL {

    private Connection con;
    private Statement stmt;

    /**
     * @return the con
     */
    public Connection getCon() {
        return con;
    }

    /**
     * @param con the con to set
     */
    public void setCon(Connection con) {
        this.con = con;
    }

    /**
     * @return the stmt
     */
    public Statement getStmt() {
        return stmt;
    }

    /**
     * @param stmt the stmt to set
     */
    public void setStmt(Statement stmt) {
        this.stmt = stmt;
    }

    public void conectar() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/realidad", "root", "n0m3l0");
            stmt = con.createStatement();
        } catch (SQLException e) {
            System.out.println("Exception SQL : ");
            System.out.println("Mensaje : " + e.getMessage());
            System.out.println("SQLState : " + e.getSQLState());
            System.out.println("Codigo proveedor : " + e.getErrorCode());
            e.printStackTrace();
        } catch (Exception ex) {
            System.out.println("Se a lanzado una Exception no SQL : ");
            ex.printStackTrace();
        }
    }
    
     public void abc(String sql) {
        try {
            getStmt().executeUpdate(sql);
        } catch (SQLException e) {
            System.out.println("Exception SQL : ");
            System.out.println("Mensaje : " + e.getMessage());
            System.out.println("SQLState : " + e.getSQLState());
            System.out.println("Codigo proveedor : " + e.getErrorCode());
            e.printStackTrace();
        } catch (Exception ex) {
            System.out.println("Se a lanzado una Exception no SQL : ");
            ex.printStackTrace();
        }
    }
    
     public void cerrar() {
        try {
            getStmt().close();
            getCon().close();
        } catch (SQLException e) {
            System.out.println("Exception SQL : ");
            System.out.println("Mensaje : " + e.getMessage());
            System.out.println("SQLState : " + e.getSQLState());
            System.out.println("Codigo proveedor : " + e.getErrorCode());
            e.printStackTrace();
        } catch (Exception ex) {
            System.out.println("Se a lanzado una Exception no SQL : ");
            ex.printStackTrace();
        }
    }
    
    
    

}
