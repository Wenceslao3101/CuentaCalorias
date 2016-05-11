package Controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Calendar;

public class Discusion {

    private int dis_key;
    private String dis_nam;
    private String dis_dat;
    private int Id_usu;
    
    public void addDiscusion(String dis_nam, 
            String dis_dat, 
            int Id_usu) {

        Connection con;
        String q;
        PreparedStatement ps;

        con = null;
        q = "";
        ps = null;

        try {
            con = Conexion.getConexion();
            q += "INSERT INTO discusion ( ";
            q += "dis_nam, ";
            q += "dis_dat, ";
            q += "Id_usu) ";
            q += "VALUES ( ";
            q += "?, ";
            q += "?, ";
            q += "?);";
            ps = con.prepareStatement(q);

            ps.setString(1, dis_nam);
            ps.setString(2, dis_dat);
            ps.setInt(3, Id_usu);
            ps.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                ps.close();
                con.close();
            } catch (Exception ex) {
            }
        }
    }
    
    public void delDiscusion(int dis_key) {

        Connection con;
        String q;
        PreparedStatement ps;

        con = null;
        q = "";
        ps = null;

        try {
            con = Conexion.getConexion();
            q += "DELETE FROM discusion ";
            q += "WHERE dis_key = ?;";
            ps = con.prepareStatement(q);

            ps.setInt(1, dis_key);
            ps.executeUpdate();
        } catch (Exception ex) {
        } finally {
            try {
                ps.close();
                con.close();
            } catch (Exception ex) {
            }
        }
    }

    public ArrayList listAll() {

        Connection con;
        String q;
        PreparedStatement ps;
        ResultSet rs;
        ArrayList dis_li;

        con = null;
        q = "";
        ps = null;
        rs = null;
        dis_li = new ArrayList();

        try {
            con = Conexion.getConexion();
            q += "SELECT * FROM discusion;";
            ps = con.prepareStatement(q);
            rs = ps.executeQuery();

            while (rs.next()) {
                Discusion dis;

                dis = new Discusion();

                dis.setDis_key(rs.getInt(1));
                dis.setDis_nam(rs.getString(2));
                dis.setDis_dat(rs.getDate(3).toString());
                dis.setId_usu(rs.getInt(4));
                dis_li.add(dis);
            }
        } catch (Exception ex) {
            dis_li = new ArrayList();
            ex.printStackTrace();
        } finally {
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (Exception ex) {
            }
        }

        return dis_li;
    }

    public Discusion open(int dis_key) {

        Connection con;
        String q;
        PreparedStatement ps;
        ResultSet rs;
        Discusion dis;

        con = null;
        q = "";
        ps = null;
        rs = null;
        dis = null;

        try {
            con = Conexion.getConexion();
            q += "SELECT * FROM discussion ";
            q += "WHERE dis_key = ?;";
            ps = con.prepareStatement(q);
            
            ps.setInt(1, dis_key);
            
            rs = ps.executeQuery();
            
            while (rs.next()) {
                dis = new Discusion();
                
                dis.setDis_key(rs.getInt(1));
                dis.setDis_nam(rs.getString(2));
                dis.setDis_dat(rs.getDate(3).toString());
                dis.setDis_key(rs.getInt(4));                
            }
        } catch (Exception ex) {
            dis = null;
        } finally {
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (Exception ex) {
            }
        }

        return dis;
    }

    public int getDis_key() {
        return dis_key;
    }

    public void setDis_key(int dis_key) {
        this.dis_key = dis_key;
    }

    public String getDis_nam() {
        return dis_nam;
    }

    public void setDis_nam(String dis_nam) {
        this.dis_nam = dis_nam;
    }

    public String getDis_dat() {
        return dis_dat;
    }

    public void setDis_dat(String dis_dat) {
        this.dis_dat = dis_dat;
    }

    public int getId_usu() {
        return Id_usu;
    }

    public void setId_usu(int Id_usu) {
        this.Id_usu = Id_usu;
    }

}
