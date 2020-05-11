package Classes;

import javax.servlet.http.HttpServletRequest;

public class TAKIM {
	private String takimAdi;
	private String sehir;
	public TAKIM(String takimAdi, String sehir) {
		this.setTakimAdi(takimAdi);
		this.setSehir(sehir);
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
}
