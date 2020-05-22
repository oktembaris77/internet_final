package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import Classes.TAKIM;
import java.util.Random;
public class TakimKayitIslemi {
	
	public KayitliTakimlar kayitliTakimlar = new KayitliTakimlar();
	public static String connURL = "jdbc:sqlserver://localhost:1433;databaseName=DB_TURNUVA;integratedSecurity=true;";
	public TakimKayitIslemi() {
		
	}
	public boolean TakimKayit(TAKIM takim) {
		String insertQuery = "INSERT INTO takimlar (takim_adi,sehir) VALUES(?,?)";
		try {
			
			ArrayList<TAKIM> takimlar = new ArrayList<TAKIM>();
			takimlar = kayitliTakimlar.Takimlar();
			
			if(takimlar.size()<16) {
				Connection conn = DriverManager.getConnection(connURL);
				PreparedStatement pst = conn.prepareStatement(insertQuery);
				pst.setString(1,takim.getTakimAdi());
				pst.setString(2,takim.getSehir());
				pst.execute();
				
				if(takimlar.size()==15) {
					TurnuvaFikstur(kayitliTakimlar.Takimlar());
				}
				
				return true;
			}
			else {
				return false;
			}
			
			
		}catch(SQLException ex) {
			ex.printStackTrace();
			return false;
		}
		
	}
	
	public void TurnuvaFikstur(ArrayList<TAKIM> takimlar) {
		ArrayList<TAKIM> takimlarliste = new ArrayList<TAKIM>();
		takimlarliste = takimlar;
		Random rand = new Random(); 
		String insertQuery = "INSERT INTO turnuva_fikstur (takim1id,takim2id) VALUES(?,?)";
		int takimListSize = takimlarliste.size();
		for(int i= 0; i<takimListSize/2;i++) {
			int rnd = 0;
			rnd = rand.nextInt(takimlarliste.size());
			TAKIM takim1=takimlarliste.get(rnd);
			takimlarliste.remove(rnd);
			
			rnd = rand.nextInt(takimlarliste.size());
			TAKIM takim2=takimlarliste.get(rnd);
			takimlarliste.remove(rnd);
			
			System.out.println(takim1.getTakimAdi() + " vs " + takim2.getTakimAdi());
			
			try {
				Connection conn = DriverManager.getConnection(connURL);
				PreparedStatement pst = conn.prepareStatement(insertQuery);
				pst.setInt(1, takim1.getId());
				pst.setInt(2, takim2.getId());
				
				pst.execute();
			}catch(SQLException ex) {
				ex.printStackTrace();
			}
		}
	}
}
