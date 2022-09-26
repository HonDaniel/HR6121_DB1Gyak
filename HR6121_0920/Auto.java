package db;
import java.io.*;

public class Auto implements Serializable {
	private static final long serialVersionUID = 1L;
	String rsz;
	String tipus;
	int ar;
		public Auto (String r, String t, int a){
			this.rsz = r;
			this.tipus = t;
			this.ar = a;
		}
}
