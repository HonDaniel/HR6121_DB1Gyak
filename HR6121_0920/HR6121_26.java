package db;

import java.io.*;

public class HR6121_26 {

	public static void main(String[] args) {
		
	System.out.println("hello");
	
			String sor;
			Auto[] autoim = {new Auto("R11","Opel",333),new Auto("R12","Fiat",233), new Auto("R14","Skoda",364)};
				try {
					ObjectOutputStream kifile = new ObjectOutputStream(new FileOutputStream ("Autok.dat"));
					for (Auto auto : autoim) {
						kifile.writeObject(auto);
					}
					kifile.close();
				} catch (Exception e) {
					e.printStackTrace();
					System.out.println ("File nyitasi hiba");
				}
				System.out.println ("OK");
	
	
	}

}