package model;
// Generated Dec 19, 2017 1:46:37 PM by Hibernate Tools 4.3.1



/**
 * TbBinhluan generated by hbm2java
 */
public class TbBinhluan  implements java.io.Serializable {


     private int idbinhluan;
     private TbTintuc tbTintuc;
     private String noidung;
     private int hoten;
     private String email;

    public TbBinhluan() {
    }

    public TbBinhluan(int idbinhluan, TbTintuc tbTintuc, String noidung, int hoten, String email) {
       this.idbinhluan = idbinhluan;
       this.tbTintuc = tbTintuc;
       this.noidung = noidung;
       this.hoten = hoten;
       this.email = email;
    }
   
    public int getIdbinhluan() {
        return this.idbinhluan;
    }
    
    public void setIdbinhluan(int idbinhluan) {
        this.idbinhluan = idbinhluan;
    }
    public TbTintuc getTbTintuc() {
        return this.tbTintuc;
    }
    
    public void setTbTintuc(TbTintuc tbTintuc) {
        this.tbTintuc = tbTintuc;
    }
    public String getNoidung() {
        return this.noidung;
    }
    
    public void setNoidung(String noidung) {
        this.noidung = noidung;
    }
    public int getHoten() {
        return this.hoten;
    }
    
    public void setHoten(int hoten) {
        this.hoten = hoten;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }




}


