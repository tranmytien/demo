package beans;

public class ConvertNumber {
	public static String formatNumber(String num) {
		String chuyen = "" + num + "";
		char[] mang = chuyen.toCharArray();
		int count = 0;
		int count2 = 0;
		String kq = "";
		for (int i = mang.length - 1; i >= 0; i--) {
			count++;
			count2++;
			if ((count2 - mang.length) == 0) {
				kq += mang[i];
			} else if (count == 3) {

				kq += mang[i] + ".";
				count = 0;
			} else {
				kq += mang[i];
			}
		}

		char[] mang2 = kq.toCharArray();
		kq = "";
		for (int i = mang2.length - 1; i >= 0; i--) {
			kq += mang2[i];
		}
		return kq;
	}
}
