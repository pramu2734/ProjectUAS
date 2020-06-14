package model;

public class user {
    String iduser,nmuser,hakakses,password;
    
    public user(String iduser,String nmuser,String hakakses,String password) {
        this.iduser = iduser;
        this.nmuser = nmuser;
        this.hakakses = hakakses;
        this.password = password;
    }
    
    public String getIduser() {
        return iduser;
    }
    
    public void setIduser(String iduser) {
        this.iduser = iduser;
    }
    
    public String getNmuser() {
        return nmuser;
    }
    
    public void setnmuser(String nmuser) {
        this.nmuser = nmuser;
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
    
    public String selectAll() {
        String sql = "select * from user";
        return sql;
    }
    
    public String select() {
        String sql = "select * from user where "
                +"id_user='"+iduser+"'";
        return sql;
    }
    
    public String toUpdate() {
        return "UPDATE user SET " +
                "nm_user='" + nmuser +
                "', hak_akses ='" + hakakses +
                "', pass ='" + password +
                "' WHERE id_user='" + iduser + "'";
    }
 
    public String toDelete() {
        return "DELETE FROM user "
                +"WHERE id_user='" + iduser + "'";
    }
 
    public String toInsert() {
        return "INSERT INTO user VALUES ('"
                + iduser + "','"
                + nmuser + "','"
                + hakakses + "','"
                + password + "')";
    }
}
