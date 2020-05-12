package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Classes.TAKIM;
import Classes.TAKIM_ADLARI;
import Classes.TURNUVA_FIKSTUR;

public class KayitliTakimlar {
	
	public KayitliTakimlar() {
		
	}
	public ArrayList<TAKIM> Takimlar() {
		String connURL = "jdbc:sqlserver://localhost:1433;databaseName=DB_TURNUVA;integratedSecurity=true;";
		ArrayList<TAKIM> resultList = new ArrayList<TAKIM>();
		
		String selectQuery = "SELECT * FROM takimlar";
		try {
			Connection conn = DriverManager.getConnection(connURL);
			PreparedStatement pst = conn.prepareStatement(selectQuery);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				resultList.add(new TAKIM(rs.getInt("id"),rs.getString("takim_adi"),rs.getString("sehir")));
			}
			return resultList;
		}catch(SQLException ex) {
			ex.printStackTrace();
			return resultList;
		}
		
		
	}
	
	public ArrayList<TAKIM_ADLARI> TurnuvaFikstur() {
		String connURL = "jdbc:sqlserver://localhost:1433;databaseName=DB_TURNUVA;integratedSecurity=true;";
		ArrayList<TAKIM_ADLARI> resultList = new ArrayList<TAKIM_ADLARI>();
		TakimIsminiBul takimIsminiBul = new TakimIsminiBul();
		
		String selectQuery = "SELECT * FROM turnuva_fikstur";
		try {
			Connection conn = DriverManager.getConnection(connURL);
			PreparedStatement pst = conn.prepareStatement(selectQuery);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				//takimIsminiBul.TakimIsimBul(new TURNUVA_FIKSTUR(rs.getInt("takim1id"),rs.getInt("takim2id")));
				
				resultList.add(takimIsminiBul.TakimIsimBul(new TURNUVA_FIKSTUR(rs.getInt("takim1id"),rs.getInt("takim2id"))));
			}
			return resultList;
		}catch(SQLException ex) {
			ex.printStackTrace();
			return resultList;
		}
		
		
	}

	
}
