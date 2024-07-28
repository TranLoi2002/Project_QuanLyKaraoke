package entity;

import java.sql.Date;
import java.util.Objects;

public class HoaDonThanhToan {
	private String maHoaDonTT;
	private Date ngayThanhToan;
	private int tongThoiGianSuDung;
	private float tienPhong;
	private float tienDichVu;
	private float tienNhan;
	private float tongTien;
	private HoaDonThuePhong hoaDonThuePhong;
	
	
	
	public HoaDonThanhToan(String maHoaDonTT) {
		super();
		this.maHoaDonTT = maHoaDonTT;
	}
	public HoaDonThanhToan() {
		super();
		// TODO Auto-generated constructor stub
	}
	public HoaDonThanhToan(String maHoaDonTT, Date ngayThanhToan, int tongThoiGianSuDung, float tienPhong,
			float tienDichVu, float tienNhan, float tongTien, HoaDonThuePhong hoaDonThuePhong) {
		super();
		this.maHoaDonTT = maHoaDonTT;
		this.ngayThanhToan = ngayThanhToan;
		this.tongThoiGianSuDung = tongThoiGianSuDung;
		this.tienPhong = tienPhong;
		this.tienDichVu = tienDichVu;
		this.tienNhan = tienNhan;
		this.tongTien = tongTien;
		this.hoaDonThuePhong = hoaDonThuePhong;
	}
	public String getMaHoaDonTT() {
		return maHoaDonTT;
	}
	public void setMaHoaDonTT(String maHoaDonTT) {
		this.maHoaDonTT = maHoaDonTT;
	}
	public Date getNgayThanhToan() {
		return ngayThanhToan;
	}
	public void setNgayThanhToan(Date ngayThanhToan) {
		this.ngayThanhToan = ngayThanhToan;
	}
	public int getTongThoiGianSuDung() {
		return tongThoiGianSuDung;
	}
	public void setTongThoiGianSuDung(int tongThoiGianSuDung) {
		this.tongThoiGianSuDung = tongThoiGianSuDung;
	}
	public float getTienPhong() {
		return tienPhong;
	}
	public void setTienPhong(float tienPhong) {
		this.tienPhong = tienPhong;
	}
	public float getTienDichVu() {
		return tienDichVu;
	}
	public void setTienDichVu(float tienDichVu) {
		this.tienDichVu = tienDichVu;
	}
	public float getTienNhan() {
		return tienNhan;
	}
	public void setTienNhan(float tienNhan) {
		this.tienNhan = tienNhan;
	}
	public float getTongTien() {
		return tongTien;
	}
	public void setTongTien(float tongTien) {
		this.tongTien = tongTien;
	}
	public HoaDonThuePhong getHoaDonThuePhong() {
		return hoaDonThuePhong;
	}
	public void setHoaDonThuePhong(HoaDonThuePhong hoaDonThuePhong) {
		this.hoaDonThuePhong = hoaDonThuePhong;
	}
	@Override
	public String toString() {
		return "HoaDonThanhToan [maHoaDonTT=" + maHoaDonTT + ", ngayThanhToan=" + ngayThanhToan
				+ ", tongThoiGianSuDung=" + tongThoiGianSuDung + ", tienPhong=" + tienPhong + ", tienDichVu="
				+ tienDichVu + ", tienNhan=" + tienNhan + ", tongTien=" + tongTien + ", hoaDonThuePhong="
				+ hoaDonThuePhong + "]";
	}
	@Override
	public int hashCode() {
		return Objects.hash(maHoaDonTT);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		HoaDonThanhToan other = (HoaDonThanhToan) obj;
		return Objects.equals(maHoaDonTT, other.maHoaDonTT);
	}
	
	
}
