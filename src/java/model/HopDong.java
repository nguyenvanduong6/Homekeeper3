package model;

/**
 *
 * @author haobarcacules
 */
public class HopDong {
    String maHopDong;
    String maNhanVien;
    String maKhachHang;
    String mucLuong;
    String ghiChu;

    public HopDong(String maHopDong, String maNhanVien, String maKhachHang, String mucLuong, String ghiChu) {
        this.maHopDong = maHopDong;
        this.maNhanVien = maNhanVien;
        this.maKhachHang = maKhachHang;
        this.mucLuong = mucLuong;
        this.ghiChu = ghiChu;
    }

    public String getMaHopDong() {
        return maHopDong;
    }

    public void setMaHopDong(String maHopDong) {
        this.maHopDong = maHopDong;
    }

    public String getMaNhanVien() {
        return maNhanVien;
    }

    public void setMaNhanVien(String maNhanVien) {
        this.maNhanVien = maNhanVien;
    }

    public String getMaKhachHang() {
        return maKhachHang;
    }

    public void setMaKhachHang(String maKhachHang) {
        this.maKhachHang = maKhachHang;
    }

    public String getMucLuong() {
        return mucLuong;
    }

    public void setMucLuong(String mucLuong) {
        this.mucLuong = mucLuong;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }

    @Override
    public String toString() {
        return "HopDong{" + "maHopDong=" + maHopDong + ", maNhanVien=" + maNhanVien + ", maKhachHang=" + maKhachHang + ", mucLuong=" + mucLuong + ", ghiChu=" + ghiChu + '}';
    }
    
}
