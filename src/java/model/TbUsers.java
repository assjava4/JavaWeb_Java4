package model;
// Generated Dec 20, 2017 11:02:09 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * TbUsers generated by hbm2java
 */
public class TbUsers  implements java.io.Serializable {


     private Integer iduser;
     private TbQuyen tbQuyen;
     private String tenuser;
     private String matkhau;
     private String email;
     private String hoten;
     private String sodienthoai;
     private String diachi;
     private Date ngaytao;
     private String idtrangthai;
     private String avatar;
     private String randomkey;
     private Set<TbPhanhoi> tbPhanhois = new HashSet<TbPhanhoi>(0);
     private Set<TbTintuc> tbTintucs = new HashSet<TbTintuc>(0);

    public TbUsers() {
    }

	
    public TbUsers(TbQuyen tbQuyen, String tenuser, String matkhau, String email, String hoten, String sodienthoai, String idtrangthai, String avatar) {
        this.tbQuyen = tbQuyen;
        this.tenuser = tenuser;
        this.matkhau = matkhau;
        this.email = email;
        this.hoten = hoten;
        this.sodienthoai = sodienthoai;
        this.idtrangthai = idtrangthai;
        this.avatar = avatar;
    }
    public TbUsers(TbQuyen tbQuyen, String tenuser, String matkhau, String email, String hoten, String sodienthoai, String diachi, Date ngaytao, String idtrangthai, String avatar, String randomkey, Set<TbPhanhoi> tbPhanhois, Set<TbTintuc> tbTintucs) {
       this.tbQuyen = tbQuyen;
       this.tenuser = tenuser;
       this.matkhau = matkhau;
       this.email = email;
       this.hoten = hoten;
       this.sodienthoai = sodienthoai;
       this.diachi = diachi;
       this.ngaytao = ngaytao;
       this.idtrangthai = idtrangthai;
       this.avatar = avatar;
       this.randomkey = randomkey;
       this.tbPhanhois = tbPhanhois;
       this.tbTintucs = tbTintucs;
    }
   
    public Integer getIduser() {
        return this.iduser;
    }
    
    public void setIduser(Integer iduser) {
        this.iduser = iduser;
    }
    public TbQuyen getTbQuyen() {
        return this.tbQuyen;
    }
    
    public void setTbQuyen(TbQuyen tbQuyen) {
        this.tbQuyen = tbQuyen;
    }
    public String getTenuser() {
        return this.tenuser;
    }
    
    public void setTenuser(String tenuser) {
        this.tenuser = tenuser;
    }
    public String getMatkhau() {
        return this.matkhau;
    }
    
    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getHoten() {
        return this.hoten;
    }
    
    public void setHoten(String hoten) {
        this.hoten = hoten;
    }
    public String getSodienthoai() {
        return this.sodienthoai;
    }
    
    public void setSodienthoai(String sodienthoai) {
        this.sodienthoai = sodienthoai;
    }
    public String getDiachi() {
        return this.diachi;
    }
    
    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }
    public Date getNgaytao() {
        return this.ngaytao;
    }
    
    public void setNgaytao(Date ngaytao) {
        this.ngaytao = ngaytao;
    }
    public String getIdtrangthai() {
        return this.idtrangthai;
    }
    
    public void setIdtrangthai(String idtrangthai) {
        this.idtrangthai = idtrangthai;
    }
    public String getAvatar() {
        return this.avatar;
    }
    
    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
    public String getRandomkey() {
        return this.randomkey;
    }
    
    public void setRandomkey(String randomkey) {
        this.randomkey = randomkey;
    }
    public Set<TbPhanhoi> getTbPhanhois() {
        return this.tbPhanhois;
    }
    
    public void setTbPhanhois(Set<TbPhanhoi> tbPhanhois) {
        this.tbPhanhois = tbPhanhois;
    }
    public Set<TbTintuc> getTbTintucs() {
        return this.tbTintucs;
    }
    
    public void setTbTintucs(Set<TbTintuc> tbTintucs) {
        this.tbTintucs = tbTintucs;
    }




}


