package Classes;

import javax.servlet.http.HttpServletRequest;

public class TAKIM {
	private String takimAdi;
	private String sehir;
	private int id;
	
	public TAKIM(String takimAdi, String sehir) {
		this.setTakimAdi(takimAdi);
		this.setSehir(sehir);
	}
	public TAKIM(int id, String takimAdi, String sehir) {
		this.setTakimAdi(takimAdi);
		this.setSehir(sehir);
		this.setId(id);
	}
	public TAKIM(HttpServletRequest request) {
		this.setTakimAdi(request.getParameter("takimadi"));
		this.setSehir(request.getParameter("sehir"));
	}
	public String getTakimAdi() {
		return takimAdi;
	}
	public void setTakimAdi(String takimAdi) {
		this.takimAdi = takimAdi;
	}
	public String getSehir() {
		return sehir;
	}
	public void setSehir(String sehir) {
		this.sehir = sehir;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
}
