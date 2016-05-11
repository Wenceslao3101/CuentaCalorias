package Controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Comentario {

    private int com_key;
    private int usr_key;
    private int dis_key;
    private String com_des;

    public void addComentario(int usr_key,
            int dis_key,
            String com_des) {

        Connection con;
        String q;
        PreparedStatement ps;

        con = null;
        q = "";
        ps = null;

        try {
            con = Conexion.getConexion();
            q += "INSERT INTO comment (";
            q += "Id_usu, ";
            q += "dis_key, ";
            q += "com_nam)";
            q += "VALUES (";
            q += "?, ";
            q += "?, ";
            q += "?);";
            ps = con.prepareStatement(q);

            ps.setInt(1, usr_key);
            ps.setInt(2, dis_key);
            ps.setString(3, com_des);
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

    public void delComentario(int com_key) {

        Connection con;
        String q;
        PreparedStatement ps;

        con = null;
        q = "";
        ps = null;

        try {
            con = Conexion.getConexion();
            q += "DELETE FROM comment ";
            q += "WHERE com_key = ?;";
            ps = con.prepareStatement(q);

            ps.setInt(1, com_key);
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

    public ArrayList listarTodos() {

        Connection con;
        String q;
        PreparedStatement ps;
        ResultSet rs;
        ArrayList com_li;

        con = null;
        q = "";
        ps = null;
        rs = null;
        com_li = new ArrayList();

        try {
            con = Conexion.getConexion();
            q += "SELECT * FROM comment;";
            ps = con.prepareStatement(q);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                Comentario com;
                
                com = new Comentario();
                
                com.setCom_key(rs.getInt(1));
                com.setUsr_key(rs.getInt(2));
                com.setDis_key(rs.getInt(3));
                com.setCom_des(rs.getString(4));
                com_li.add(com);
            }
        } catch (Exception ex) {
            com_li = new ArrayList();
        } finally {
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (Exception ex) {
            }
        }

        return com_li;
    }
    
    public ArrayList listarDiscusion(int dis_key) {

        Connection con;
        String q;
        PreparedStatement ps;
        ResultSet rs;
        ArrayList com_li;

        con = null;
        q = "";
        ps = null;
        rs = null;
        com_li = new ArrayList();

        try {
            con = Conexion.getConexion();
            q += "SELECT * FROM comment ";
            q += "WHERE dis_key = ?;";
            ps = con.prepareStatement(q);
            
            ps.setInt(1, dis_key);
            
            rs = ps.executeQuery();
            
            while (rs.next()) {
                Comentario com;
                
                com = new Comentario();
                
                com.setCom_key(rs.getInt(1));
                com.setUsr_key(rs.getInt(2));
                com.setDis_key(rs.getInt(3));
                com.setCom_des(rs.getString(4));
                com_li.add(com);
            }
        } catch (Exception ex) {
            com_li = new ArrayList();
        } finally {
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (Exception ex) {
            }
        }

        return com_li;
    }

    public int getCom_key() {
        return com_key;
    }

    public void setCom_key(int com_key) {
        this.com_key = com_key;
    }

    public int getUsr_key() {
        return usr_key;
    }

    public void setUsr_key(int usr_key) {
        this.usr_key = usr_key;
    }

    public int getDis_key() {
        return dis_key;
    }

    public void setDis_key(int dis_key) {
        this.dis_key = dis_key;
    }

    public String getCom_des() {
        return com_des;
    }

    public void setCom_des(String com_des) {
        this.com_des = com_des;
    }
}
