package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Classes.TAKIM;
import DAO.TakimKayitIslemi;

/**
 * Servlet implementation class TakimKayitServlet
 */
@WebServlet("/TakimKayitServlet")
public class TakimKayitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public TakimKayitServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		TAKIM takim = new TAKIM(request);
		System.out.println(takim.getTakimAdi()+" - "+takim.getSehir());
		TakimKayitIslemi takimKayit = new TakimKayitIslemi();
		boolean result = takimKayit.TakimKayit(takim);
		if(result) {
			System.out.println("Başarılı: " + takim.getTakimAdi()+" - "+takim.getSehir());
		}else {
			System.out.println("Insert işleminde hata oluştu.");
		}
		
		
		
		//request.getParameter("takimadi");
		//request.getParameter("sehir");
		
		//doGet(request, response);
	}

}