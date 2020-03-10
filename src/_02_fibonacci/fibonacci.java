package _02_fibonacci;

public class fibonacci {
	public static void main(String[] args) {
		int hh=0;
		int gg=1;
		System.out.println(hh);
		System.out.println(gg);
		for (int i = 0; i < 12; i++) {
			int yy=gg+hh;
			System.out.println(yy);
			hh=gg;
			gg=yy;
		}
	}

}
