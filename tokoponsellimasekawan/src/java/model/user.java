package model;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import control.koneksi;
import java.util.logging.Level;
import java.util.logging.Logger;

public class user {
   
    private String id;
    private String iduser;
    private String namauser;
    private String hakakses;
    private String password;
    koneksi db = null;
    
    public user (){
        try {
            db = new koneksi();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(user.class.getName()).log(Level.SEVERE, null, ex);
        }
   }
   
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    
    public String getIduser() {
        return iduser;
    }
    
    public void setIduser(String iduser) {
        this.iduser = iduser;
    }
    
    public String getNamauser() {
        return namauser;
    }
    
    public void setNamauser(String namauser) {
        this.namauser = namauser;
    }
    
    public String getHakakses() {
        return hakakses;
    }
    
    public void setHakakses(String hakakses) {
        this.hakakses = hakakses;
    }
    
    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    public List LoginUser(String user, String password) {
        List data = new ArrayList();
        ResultSet rs = null;
        try {
            String sql = "SELECT * FROM user where id_user='" + user + "'"
                    + "and pass='" + password + "'";
            rs = db.ambilData(sql);
            
            while (rs.next()) {
                user am = new user();
                am.setId(rs.getString("id"));
                am.setIduser(rs.getString("id_user"));
                am.setPassword(rs.getString("pass"));
                am.setHakakses(rs.getString("hak_akses"));
                data.add(am);
            }
            db.diskonek(rs);
        } catch (Exception a) {
    System.out.println("Terjadi kesalahan cari login user, pada :\n" + a);
        }
        return data;
    }
}