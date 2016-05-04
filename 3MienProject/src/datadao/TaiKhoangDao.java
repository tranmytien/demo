package datadao;

public class TaiKhoangDao {
	private TaiKhoan tk = new TaiKhoan();
	public TaiKhoan getTk() {
		return tk;
	}
	public void setTk(TaiKhoan tk) {
		this.tk = tk;
	}
	public TaiKhoangDao(){
		tk = new TaiKhoan();
	}
	public TaiKhoangDao(TaiKhoan tk) {
		this.tk = tk;
	}
	public boolean addTk(TaiKhoan taiKhoan){
		tk = new TaiKhoan(taiKhoan.getid(),taiKhoan.gettaikhoan(), taiKhoan.getmatkhau(),taiKhoan.getSodutk());
		return true;
	}
}
