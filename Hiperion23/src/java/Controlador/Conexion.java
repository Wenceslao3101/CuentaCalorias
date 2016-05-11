package Controlador;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexion {

    public static Connection getConexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/realidad";
            String usuario = "root";
            String clave = "n0m3l0";
            return DriverManager.getConnection(url, usuario, clave);
        } catch (SQLException ex) {
            ex.printStackTrace();
            System.out.println("No se pudo -1");
        } catch (Exception ex) {
            System.out.println(ex);
            System.out.println("No se pudo -2" + ex);

        }
        return null;
    }
}
