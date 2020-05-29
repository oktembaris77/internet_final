<%@page import="DAO.TakimKayitIslemi"%>
<%@page import="Classes.TAKIM" %>
<%@page import="DAO.KayitliTakimlar" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.util.ArrayList" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Kayıtlı Takımlar</title>
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

#tablo{
width:100%;
border: 2px;
}
tr{
height:50px;
text-align:center;
}
tr:nth-child(2n){
background-color:gray;
}
tr:hover{
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
			<a href = "takim_kayit.jsp?d">Takım Kayıt</a>
		</div>
		<div id="sayfabtn">
			<a href = "kayitli_takimlar.jsp">Kayıtlı Takımlar</a>
		</div>
		<div id="sayfabtn">
			<a href = "turnuva_fikstur.jsp">Turnuva Fikstur</a>
		</div>
	</div>
	
	<div id="icerik">
		<table id="tablo">
				<tr id="satirlar">
					<th>Takım Adı </th>
					<th>Şehir </th>
				</tr>
				<%
				for(int i = 0; i< takimlararray.size(); i ++){
					out.println
					("<tr><td>"+takimlararray.get(i).getTakimAdi()+"</td><td>"+takimlararray.get(i).getSehir()+"</td></tr>");
				}
				/*
				TakimKayitIslemi t = new TakimKayitIslemi();
				t.TurnuvaFikstur(takimlararray);*/
				%>
			</table>
	</div>
	
	
	
</body>
</html>