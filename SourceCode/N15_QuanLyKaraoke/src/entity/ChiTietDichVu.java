package entity;

public class ChiTietDichVu {
	private HoaDonThuePhong hoaDonThuePhong;
	private DichVu dichVu;
	private int soLuong;
	
	
	public ChiTietDichVu() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ChiTietDichVu(HoaDonThuePhong hoaDonThuePhong, DichVu dichVu, int soLuong) {
		super();
		this.hoaDonThuePhong = hoaDonThuePhong;
		this.dichVu = dichVu;
		this.soLuong = soLuong;
	}
	public HoaDonThuePhong getHoaDonThuePhong() {
		return hoaDonThuePhong;
	}
	public void setHoaDonThuePhong(HoaDonThuePhong hoaDonThuePhong) {
		this.hoaDonThuePhong = hoaDonThuePhong;
	}
	public DichVu getDichVu() {
		return dichVu;
	}
	public void setDichVu(DichVu dichVu) {
		this.dichVu = dichVu;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	@Override
	public String toString() {
		return "ChiTietDichVu [hoaDonThuePhong=" + hoaDonThuePhong + ", dichVu=" + dichVu + ", soLuong=" + soLuong
				+ "]";
	}
	
	
}
