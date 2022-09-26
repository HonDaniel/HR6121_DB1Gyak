package db;

import java.io.*;
import java.util.Scanner;

public class HDFileIr {
	public static void main(String[] args) throws IOException{
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("Adatok szama = ");
		int db = sc.nextInt();
		int[] x = new int[db];
		
		for (int i = 0; i < db; i++) {
			System.out.print(i + ". adat = ");
			x[i] = sc.nextInt();
		}
		
		File fajl = new File("honti.txt");
		FileWriter ki_stream = new FileWriter("honti.txt");
		
		for(int i = 0; i < db; i++) {
			ki_stream.write(x[i] + "\n");
		}
		
		ki_stream.close();
	}
}
