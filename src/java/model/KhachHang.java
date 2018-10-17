package model;

/**
 *
 * @author haobarcacules
 */
public class KhachHang {
    String maKhachHang;
    String tenKhachHang;
    String taiKhoan;
    String matKhau;
    String diaChi;
    String tuoi;
    String gioiTinh;
    String soDienThoai;

    public KhachHang(String maKhachHang, String tenKhachHang, String taiKhoan, String matKhau, String diaChi, String tuoi, String gioiTinh, String soDienThoai) {
        this.maKhachHang = maKhachHang;
        this.tenKhachHang = tenKhachHang;
        this.taiKhoan = taiKhoan;
        this.matKhau = matKhau;
        this.diaChi = diaChi;
        this.tuoi = tuoi;
        this.gioiTinh = gioiTinh;
        this.soDienThoai = soDienThoai;
    }

    public KhachHang(String maKhachHang, String tenKhachHang, String diaChi, String gioiTinh, String soDienThoai) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getMaKhachHang() {
        return maKhachHang;
    }

    public void setMaKhachHang(String maKhachHang) {
        this.maKhachHang = maKhachHang;
    }

    public String getTenKhachHang() {
        return tenKhachHang;
    }

    public void setTenKhachHang(String tenKhachHang) {
        this.tenKhachHang = tenKhachHang;
    }

    public String getTaiKhoan() {
        return taiKhoan;
    }

    public void setTaiKhoan(String taiKhoan) {
        this.taiKhoan = taiKhoan;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }
    

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getTuoi() {
        return tuoi;
    }

    public void setTuoi(String tuoi) {
        this.tuoi = tuoi;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }
    
    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    @Override
    public String toString() {
        return "KhachHang{" + "maKhachHang=" + maKhachHang + ", tenKhachHang=" + tenKhachHang + ", diaChi=" + diaChi + ", tuoi=" + tuoi + ", gioiTinh=" + gioiTinh + ", soDienThoai=" + soDienThoai + '}';
    }
    
    
}
