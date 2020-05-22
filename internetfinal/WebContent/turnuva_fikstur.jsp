<%@page import="Classes.TAKIM_ADLARI"%>
<%@page import="Classes.TAKIM" %>
<%@page import="Classes.TURNUVA_FIKSTUR" %>
<%@page import="DAO.KayitliTakimlar" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.util.ArrayList" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Turnuva Fikstur</title>
<meta charset="utf-8"/>
<style>
*{
	margin:0;padding:0;
	font-family:"verdana";
}
body{
background-image:url("saha.jpg");
background-size:cover;
}

#ustmenu{
width:100%;
height:70px;
background-color:#ccc;
}
a{
text-decoration:none;
color:gray;
}
a:hover{
text-decoration:none;
color:white;
}
#sayfabtn{
height:70px;
min-width:90px;
background-color:#eee;
color:white;
text-align:center;
margin-left:8px;
text-decoration:none;
padding:0px 5px 0px 5px;
box-sizing:border-box;
line-height:70px;
float:left;
}

#sayfabtn:hover{
transition:0.2s;
background-color:#ccc;
border:1px solid #ccc;
box-shadow: 1px 2px 1px 1px gray;
}

#icerik{
width:100%;
height:100%;
background-color:#eee;
background-color: rgba(238, 238, 238, 0.8);
box-sizing:border-box;
}

p{
padding: 10px;
box-sizing:border-box;
}

table{
width: 100%;
padding-top:40px;
text-align:center;
box-sizin:border-box;

}

tr{
height:50px;
text-align:center;
}
tr:nth-child(2n-1){
background-color:#ccc;
}
tr:hover{
background-color:gray;
}
#icerikbaslik{
width:100%;
height: 60px;
text-align : center;
line-height : 60px;
background-color:#ccc;
}

</style>

<%
	KayitliTakimlar takimlar = new KayitliTakimlar();
	ArrayList<TAKIM> takimlararray = new ArrayList<TAKIM>();
	takimlararray = takimlar.Takimlar();
	
	/*
	takimlararray.add(new TAKIM("Takım1","Şehir1"));
	takimlararray.add(new TAKIM("Takım2","Şehir2"));
	takimlararray.add(new TAKIM("Takım3","Şehir3"));
	takimlararray.add(new TAKIM("Takım4","Şehir4"));
	takimlararray.add(new TAKIM("Takım5","Şehir5"));
	takimlararray.add(new TAKIM("Takım6","Şehir6"));
	takimlararray.add(new TAKIM("Takım7","Şehir7"));
	takimlararray.add(new TAKIM("Takım8","Şehir8"));
	takimlararray.add(new TAKIM("Takım9","Şehir9"));
	takimlararray.add(new TAKIM("Takım10","Şehir10"));
	takimlararray.add(new TAKIM("Takım11","Şehir11"));
	takimlararray.add(new TAKIM("Takım12","Şehir12"));
	takimlararray.add(new TAKIM("Takım13","Şehir13"));
	takimlararray.add(new TAKIM("Takım14","Şehir14"));
	takimlararray.add(new TAKIM("Takım15","Şehir15"));
	takimlararray.add(new TAKIM("Takım16","Şehir16"));	
*/
%>

</head>
<body>
	<div id="ustmenu">
		<div id="sayfabtn">
			<a href = "index.jsp">Anasayfa</a>
		</div>
		<div id="sayfabtn">
			<a href = "takim_kayit.jsp">Takım Kayıt</a>
		</div>
		<div id="sayfabtn">
			<a href = "kayitli_takimlar.jsp">Kayıtlı Takımlar</a>
		</div>
		<div id="sayfabtn">
			<a href = "turnuva_fikstur.jsp">Turnuva Fikstur</a>
		</div>
	</div>
	
	<div id="icerik">
	<div id="icerikbaslik"><b>Turnuva Fikstür</b></div>
		<% 
			if(takimlararray.size()<16){
				out.println("<p>Turnuva katılımları henüz tamamlanmadı. Katılım:"+takimlararray.size()+"/16</p>");
			}else{
				ArrayList<TAKIM_ADLARI> turnuva = new ArrayList<TAKIM_ADLARI>();
				turnuva = takimlar.TurnuvaFikstur();
				
				/*
				turnuva.add(new TAKIM_ADLARI("Takım1","Şehir9"));
				turnuva.add(new TAKIM_ADLARI("Takım2","Şehir10"));
				turnuva.add(new TAKIM_ADLARI("Takım3","Şehir11"));
				turnuva.add(new TAKIM_ADLARI("Takım4","Şehir12"));
				turnuva.add(new TAKIM_ADLARI("Takım5","Şehir13"));
				turnuva.add(new TAKIM_ADLARI("Takım6","Şehir14"));
				turnuva.add(new TAKIM_ADLARI("Takım7","Şehir15"));
				turnuva.add(new TAKIM_ADLARI("Takım8","Şehir16"));
				*/
				
				out.print("<table>");
				for(int i=0; i<turnuva.size();i++){
					out.print(
								"<tr>"+
									"<td>"+
										turnuva.get(i).getTakim1Adi() +
									"</td>"+
									"<td>"+
										turnuva.get(i).getTakim2Adi() +
									"</td>"+
										
								"</tr>"
							);
				}
				out.print("</table>");
			}
		
		%>
		
	</div>
	
	
	
</body>
</html>