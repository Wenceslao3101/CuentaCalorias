package Controlador;

import java.sql.*;
import java.util.LinkedList;

public class Usuario {

    private int cve_person;
    private String nom_per;
    private String app_per;
    private String apm_per;
    private String cor_person;
    private int Id_usu;
    private int cve_pri;
    private String con_usu;
    private String nick;

    public Usuario() {

    }

    public Usuario verificarUsuario(String user, String clave) {
        Usuario u = null;
        MySQL bd = new MySQL();
        bd.conectar();
        ResultSet rs = null;
        try {
            String sql1 = "CALL sp_verifSesion('"+user+"','"+clave+"');";
            rs = bd.getStmt().executeQuery(sql1);
            if(rs.next()) {
                u = new Usuario();
                u.setId_usu(rs.getInt("Id_usu"));
                u.setNom_per(rs.getString("nom_per"));
                u.setApm_per(rs.getString("apm_per"));
                u.setApp_per(rs.getString("app_per"));
                u.setCor_person(rs.getString("cor_person"));
                u.setCve_pri(rs.getInt("cve_pri"));
                u.setCon_usu(rs.getString("con_usu"));
            }

            rs.close();
            bd.cerrar();
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
        return u;
    }
    

public LinkedList<Usuario>  ObtenerUsuarios() {
  
        MySQL bd = new MySQL();
        bd.conectar();
        ResultSet rs = null;
        LinkedList<Usuario> usuarios=new LinkedList<Usuario>();
        try {
            String sql = "SELECT * FROM Usuario where cve_pri=1;";
            rs = bd.getStmt().executeQuery(sql);
            while (rs.next()) {
               Usuario u = new Usuario();
            //u.setId_usu(rs.getInt("Id_usu"));
              //  u.setNom_per(rs.getString("nom_per"));
               // u.setApm_per(rs.getString("apm_per"));
                //u.setApp_per(rs.getString("app_per"));
                u.setCor_person(rs.getString("cor_person"));
                u.setNick(rs.getString("nick"));
               // u.setCve_pri(rs.getInt("cve_pri"));
                //u.setCon_usu(rs.getString("con_usu"));
                usuarios.add(u);
            }

            rs.close();
            bd.cerrar();
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
        return usuarios;
    }



   /* public Usuario obtenerDatos(String ID) {
        Usuario u = null;
        Connection cn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;

        try {
            cn = Conexion.getConexion();
            Statement stmt = cn.createStatement();
            String sql = "SELECT * FROM Usuario U, Persona P WHERE U.ID_usu=? AND P.cve_person=U.cve_person";
            pr = cn.prepareStatement(sql);
            pr.setString(1, ID);

            rs = pr.executeQuery();
            System.out.println(sql);
            if (rs.next()) {
                u = new Usuario();
                u.setId_usu(rs.getString("Id_usu"));
                u.setNom_per(rs.getString("nom_per"));
                u.setApm_per(rs.getString("apm_per"));
                u.setApp_per(rs.getString("app_per"));
                u.setCor_person(rs.getString("cor_person"));
                u.setCve_pri(rs.getInt("cve_pri"));
                u.setCon_usu(rs.getString("con_usu"));
                u.setCve_person(rs.getInt("cve_person"));

            }
            System.out.println(u.getCve_person() + " " + u.getCon_usu() + " " + u.getCor_person() + " " + u.getApm_per() + " " + u.getNom_per() + " " + u.getApp_per() + " " + u.getId_usu() + " " + u.getCve_pri());
        } catch (SQLException ex) {
            System.out.println("Ex1" + ex);
            u = null;
        } finally {
            try {
                rs.close();
                pr.close();
                rs.close();

            } catch (SQLException ex) {
                System.out.println("Ex 2 " + ex);
            } finally {

                System.out.println("Entro!!");
                System.out.println(u);
                return u;
            }
        }
    }
*/
    
    public void registrarPersona(String nick, String nombre, String app, String apm, String correo, String contra) {
        Usuario u = null;
        Connection cn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            //cn = Conexion.getConexion();
            cn = Conexion.getConexion();
            Statement stmt = cn.createStatement();
            String sql = "INSERT INTO Usuario(nick, nom_per, app_per, apm_per, cor_person, con_usu, cve_pri) VALUES('" + nick + "','" + nombre + "','" + app + "','" + apm + "','" + correo + "','" + contra + "',1);";

            stmt.execute(sql);
            stmt.close();

        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {

                rs.close();
                pr.close();
                rs.close();
                cn.close();

            } catch (SQLException ex) {

            }

        }
    }

    public void registrarUsuario(String contra, String correo, int foro, int privilegio, String nick) {

        Usuario u = null;

        Connection cn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            cn = Conexion.getConexion();
            Statement stmt = cn.createStatement();
            String sqlcon = "SELECT cve_person FROM Persona where cor_person='" + correo + "'";

            rs = stmt.executeQuery(sqlcon);

            int cve = 0;
            while (rs.next()) {
                cve = rs.getInt("cve_person");
            }
            stmt.cancel();

            String sql = "INSERT INTO Usuario (cve_person, con_usu, cve_foro, cve_pri, nick) VALUES(" + cve + ",'" + contra + "'," + foro + "," + privilegio + ",'" + nick + "')";
            //System.out.println(sql);
            stmt.execute(sql);

        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                rs.close();
                pr.close();
                rs.close();
                cn.close();
            } catch (SQLException ex) {

            }

        }

    }

    public void registrarAlumno(String contra, String correo, int foro, int privilegio, String nick) {

        Usuario u = null;
        int genero;
        Connection cn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            cn = Conexion.getConexion();
            Statement stmt = cn.createStatement();
            String sqlcon = "SELECT cve_person FROM Persona where cor_person='" + correo + "'";

            rs = stmt.executeQuery(sqlcon);
            int cve = 0;
            while (rs.next()) {
                cve = rs.getInt("cve_person");
            }
            stmt.cancel();
            String sql = "INSERT INTO Usuario (cve_person, con_usu, cve_foro, cve_pri, nick) VALUES(" + cve + ",'" + contra + "'," + foro + ",2,'" + nick + "')";
            //System.out.println(sql);
            stmt.execute(sql);

        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                rs.close();
                pr.close();
                rs.close();
                cn.close();
            } catch (SQLException ex) {

            }

        }

    }

    public void registrarAdmin(String contra, String correo, int foro, int privilegio, String nick) {

        Usuario u = null;
        int genero;
        Connection cn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;
        try {
            cn = Conexion.getConexion();
            Statement stmt = cn.createStatement();
            String sqlcon = "SELECT cve_person FROM Persona where cor_person='" + correo + "'";

            rs = stmt.executeQuery(sqlcon);
            int cve = 0;
            while (rs.next()) {
                cve = rs.getInt("cve_person");
            }
            stmt.cancel();
            String sql = "INSERT INTO Usuario (cve_person, con_usu, cve_foro, cve_pri, nick) VALUES(" + cve + ",'" + contra + "'," + foro + ",3,'" + nick + "')";
            //System.out.println(sql);
            stmt.execute(sql);

        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                rs.close();
                pr.close();
                rs.close();
                cn.close();
            } catch (SQLException ex) {

            }

        }

    }

    public void subirVideo(String name, String user) {

        Usuario u = null;
        int genero;
        Connection cn = null;
        PreparedStatement pr = null;
        ResultSet rs = null;

        try {
            cn = Conexion.getConexion();
            Statement stmt = cn.createStatement();

            String sql = "INSERT INTO video (Id_vid, videoName, videoPostDate, User_idUser) VALUES(UUID(),'" + name + "',NOW(),'" + user + "');";
            //System.out.println(sql);
            stmt.execute(sql);

        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                rs.close();
                pr.close();
                rs.close();
                cn.close();
            } catch (SQLException ex) {

            }

        }

    }

    public void modCon_usu(int Id_usu,
            String con_usu) {

        Connection con;
        String q;
        PreparedStatement ps;
        Usuario u = null;

        con = null;
        q = "";
        ps = null;

        try {
            con = Conexion.getConexion();
            q = "UPDATE usuario SET con_usu = ?  WHERE Id_usu = ?;";
            ps = con.prepareStatement(q);

            ps.setString(1, con_usu);
            ps.setInt(2, Id_usu);
            ps.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
            } catch (Exception ex) {
            }
        }
    }

    public void modNick(int Id_usu,
            String nick) {

        Connection con;
        String q;
        PreparedStatement ps;

        con = null;
        q = "";
        ps = null;

        try {
            con = Conexion.getConexion();
            q += "UPDATE usuario SET nick=? WHERE Id_usu =?;";
            ps = con.prepareStatement(q);

            ps.setString(1, nick);
            ps.setInt(2, Id_usu);
            ps.executeUpdate();
        } catch (Exception ex) {
        } finally {
            try {
            } catch (Exception ex) {
            }
        }
    }

    public void Eliminar_usuario(String nick) {
        Usuario u = null;
        Connection con;
        String q;
        PreparedStatement ps;

        try {
            con = Conexion.getConexion();
            q = "DELETE from usuario where id_usu=?;";
            ps = con.prepareStatement(q);

            ps.setString(1, nick);
            ps.executeUpdate();
        } catch (Exception ex) {
        } finally {
            try {
            } catch (Exception ex) {
            }
        }
    }

    public int getCve_person() {
        return this.cve_person;
    }

    public void setCve_person(int cve_person) {
        this.cve_person = cve_person;
    }

    public String getNom_per() {
        return this.nom_per;
    }

    public void setNom_per(String nom_per) {
        this.nom_per = nom_per;
    }

    public String getApp_per() {
        return this.app_per;
    }

    public void setApp_per(String app_per) {
        this.app_per = app_per;
    }

    public String getApm_per() {
        return this.apm_per;
    }

    public void setApm_per(String apm_per) {
        this.apm_per = apm_per;
    }

    public String getCor_person() {
        return this.cor_person;
    }

    public void setCor_person(String cor_person) {
        this.cor_person = cor_person;
    }

    public int getId_usu() {
        return this.Id_usu;
    }

    public void setId_usu(int ID_usu) {
        this.Id_usu = ID_usu;
    }

    public int getCve_pri() {
        return this.cve_pri;
    }

    public void setCve_pri(int cve_pri) {
        this.cve_pri = cve_pri;
    }

    public String getCon_usu() {
        return con_usu;
    }

    public void setCon_usu(String con_usu) {
        this.con_usu = con_usu;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

}
