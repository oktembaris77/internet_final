package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Classes.TAKIM;

public class TakimKayitIslemi {
	public static String connURL = "jdbc:sqlserver://localhost:1433;databaseName=DB_TURNUVA;integratedSecurity=true;";
	public boolean TakimKayit(TAKIM takim) {
		String insertQuery = "INSERT INTO takimlar (takim_adi,sehir) VALUES(?,?)";
		try {
			Connection conn = DriverManager.getConnection(connURL);
			PreparedStatement pst = conn.prepareStatement(insertQuery);
			pst.setString(1,takim.getTakimAdi());
			pst.setString(2,takim.getSehir());
			pst.execute();
			return true;
		}catch(SQLException ex) {
			ex.printStackTrace();
			return false;
		}
		
		
	}
}
