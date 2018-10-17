/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author haoba
 */
public class Nhanvien {
    private String maNhanVien;
    private String tenNhanVien;
    private String chuyenMon;
    private String mucLuong;
    private String kinhNghiem;
    private String danhGia;

    public Nhanvien(String maNhanVien, String tenNhanVien, String chuyenMon, String mucLuong, String kinhNghiem, String danhGia) {
        this.maNhanVien = maNhanVien;
        this.tenNhanVien = tenNhanVien;
        this.chuyenMon = chuyenMon;
        this.mucLuong = mucLuong;
        this.kinhNghiem = kinhNghiem;
        this.danhGia = danhGia;
    }

    public Nhanvien() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getMaNhanVien() {
        return maNhanVien;
    }

    public void setMaNhanVien(String maNhanVien) {
        this.maNhanVien = maNhanVien;
    }

    public String getTenNhanVien() {
        return tenNhanVien;
    }

    public void setTenNhanVien(String tenNhanVien) {
        this.tenNhanVien = tenNhanVien;
    }

    public String getChuyenMon() {
        return chuyenMon;
    }

    public void setChuyenMon(String chuyenMon) {
        this.chuyenMon = chuyenMon;
    }

    public String getMucLuong() {
        return mucLuong;
    }

    public void setMucLuong(String mucLuong) {
        this.mucLuong = mucLuong;
    }

    public String getKinhNghiem() {
        return kinhNghiem;
    }

    public void setKinhNghiem(String kinhNghiem) {
        this.kinhNghiem = kinhNghiem;
    }

    public String getDanhGia() {
        return danhGia;
    }

    public void setDanhGia(String danhGia) {
        this.danhGia = danhGia;
    }

    @Override
    public String toString() {
        return "Nhanvien{" + "maNhanVien=" + maNhanVien + ", tenNhanVien=" + tenNhanVien + ", chuyenMon=" + chuyenMon + ", mucLuong=" + mucLuong + ", kinhNghiem=" + kinhNghiem + ", danhGia=" + danhGia + '}';
    }

    public String getListNhanvien() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
