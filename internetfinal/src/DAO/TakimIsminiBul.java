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

public class TakimIsminiBul {
	public TakimIsminiBul() {
		
	}
	
	public TAKIM_ADLARI TakimIsimBul(TURNUVA_FIKSTUR takimlarid) {
		String takim1Adi="";
		String takim2Adi="";
		KayitliTakimlar kayitliTakimlar = new KayitliTakimlar();
		ArrayList<TAKIM> takimlar = new ArrayList<TAKIM>();
		takimlar = kayitliTakimlar.Takimlar();
		
		for(int i = 0; i<takimlar.size(); i++) {
			if(takim1Adi != "" && takim2Adi != "") {
				break;
			}
			for(int k = 0;k<takimlar.size();k++) {
				if(takimlarid.getTakim1id() == takimlar.get(k).getId()) {
					takim1Adi = takimlar.get(k).getTakimAdi();
				}else if(takimlarid.getTakim2id() == takimlar.get(k).getId()) {
					takim2Adi = takimlar.get(k).getTakimAdi();
				}
			}
		}
		
		TAKIM_ADLARI takimadlari = new TAKIM_ADLARI(takim1Adi,takim2Adi);
		return takimadlari;
	}
	
}
