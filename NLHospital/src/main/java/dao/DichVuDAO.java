package dao;

import java.util.ArrayList;

import model.Database;
import model.DichVu;

public class DichVuDAO {
static Database db= Database.create();
	public static ArrayList<DichVu> datLich(DichVu dv) {
		ArrayList<DichVu> list = new ArrayList<DichVu>();
		String command = "insert into datlich values ('" + dv.getTentk()
				+ "', '" + dv.getHoten() + "', '" + dv.getCnnd() + "', '"
				+ dv.getTinhtrang() + "', '" 
				+ dv.getNgaymuonkham() + "', '" + dv.getGiokham()
				+ "', '" + dv.getKhoa() + "', '" + dv.getbsi()
				+ "', '" + dv.getSdt() + "')";
		list.add(dv);
		try {
			if (db.update(command) > 0 ) {
				return list;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
