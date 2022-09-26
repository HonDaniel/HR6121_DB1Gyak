package db;

import java.io.*;

public class HR6121_23 {

	public static void main(String[] args) {
			
		String sor;
		String[] szavak;
		String filenev = null;
		int sorid = 0;
		
		try {
			BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
			BufferedWriter bw = null;
			while ( sorid >= 0) {
				sor = br.readLine();
					if (sorid == 0) {
						bw = new BufferedWriter(new FileWriter(sor + ".txt"));
						filenev = (sor + ".txt");
					}
					else {
						bw.write(sor);
						bw.newLine();
					}
				sorid = sorid + 1;
				szavak = sor.split(" ");
				for (String sz : szavak){
					System.out.println(sz+":");
					if (sz.compareTo("end") == 0 ) {
						br.close();
						sorid = -1;
					}
				}
			}
			bw.close();
			System.out.println("Ok");
		} catch (Exception ee){
			ee.printStackTrace();
		}
	}
}
