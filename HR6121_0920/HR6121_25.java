package db;

import java.io.*;
import java.util.Scanner;

public class HR6121_25 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.println("Add meg a forras fajl nevet: ");
		String forras = sc.nextLine();
		System.out.println("Add meg a masolo fajl nevet:");
		String masol = sc.nextLine();
		feladat3(forras,masol);
		
		
	}
		public static void feladat3 (String fnevbe, String fnevki) {
			String sor;
			String[] szavak;
			String[] k1 = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "0" };
			String[] k2 = { " egy ", " kettõ ", " három ", " négy ", " öt ", " hat ", " hét ",
			"nyolc ", "kilenc ", " nulla" };
			int sorid = 0 ;
				try {
					BufferedWriter bw = new BufferedWriter(new FileWriter(fnevki));
					BufferedReader br = new BufferedReader(new FileReader(fnevbe));
					while ( (sor = br.readLine()) != null) {
						for (int i=0; i<10; i++){
							sor = sor.replace(k1[i],k2[i]);
						}
						bw.write(sor);
						bw.newLine();
					}
					br.close();
					bw.close();
					System.out.println("Ok");
				} 
				catch (Exception ee){
					ee.printStackTrace();
			}
		}
	}
