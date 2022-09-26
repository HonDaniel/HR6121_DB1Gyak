package db;

import java.io.*;
import java.util.Scanner;

public class HR6121_24 {

	public static void main(String[] args) {
		

		Scanner sc = new Scanner(System.in);
		System.out.println("Add meg a fajl nevet: ");
		String filenev = sc.nextLine();
		feladat2(filenev);
		
	}
		
		public static void feladat2(String fnev) {
			String sor;
			String[] szavak;
			int sorid = 0;
			try {
				BufferedReader br = new BufferedReader(new FileReader(fnev));
				while ( (sor = br.readLine()) != null) {
					System.out.println(sor.toUpperCase());
				}
				br.close();
				System.out.println("Ok");
			}
			catch (Exception ee){
			ee.printStackTrace();
			}
		
	}

}
