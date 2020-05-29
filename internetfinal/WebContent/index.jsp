<%@page import="DAO.KayitliTakimlar" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.util.ArrayList" %>
<%@page import="Classes.TAKIM" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Takım Kayıt</title>
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
padding:50px 10px 10px 20%;
width:100%;
height:100%;
background-color:#eee;
background-color: rgba(238, 238, 238, 0.8);
box-sizing:border-box;
}
#yazi1{
font-size:24px;
color:green;
}
#yazi2{
font-size:21px;
margin-top:30px;
margin-bottom:100px;
padding-right:200px;
box-sizing:border-box;
}
#res{
margin-bottom:40px;
margin-left:200px;

}
</style>
<%
	KayitliTakimlar takimlar = new KayitliTakimlar();
	ArrayList<TAKIM> takimlararray = new ArrayList<TAKIM>();
	takimlararray = takimlar.Takimlar();
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
	<% 
		if(takimlararray.size()>=16){
			out.println("<p id='yazi1'><b>Turnuva katılımları tamamlandı. Bütün takımlarımıza başarılar dileriz.</b></p>");
		}
		
		else{
	%>
		<p id="yazi1">
			<b>Turnuva katılımları devam ediyor ! <br> Hemen katılın ve büyük ödülün sahibi olun !</b>
		</p>
	<% 
		}
	%>
		<br>
		<br>
		<img style="border-radius:20%" src="ftres.jpg" >
		
		<p id="yazi2">
		
		Bu sene dördüncüsünü düzenleyeceğimiz Gençlig-Yardımseverlig İstanbulda 16 takımın katılımı ile gerçekleşecektir.
		 Bu turnuvaya özel olarak 2 yıldır bu ligde uygulanan sistem ile takımların attıkları her gol için ve 
		sergiledikleri her centilmence hareket için Yardımseverlig kasasına TÜGVA tarafından 5 TL aktarılacak, Turnuva boyunca YardımseverLig kasasına 
		aktarılan paralar Kızılay İstanbul şubesi ile yapılacak olan protokol ile 81 il 81 anaokulu projesine toplanan para bağışlanacaktır. GençLig-YardımseverLig 
		projesi ile TÜGVA liseli öğrencilere sporun kardeşlik dostluk ve yardımlaşmayı gerektirdiğini hatırlatmak istiyoruz.
		
		</p>
		<img id="res" style="border-radius:20%" src="bilgi1.png" >
		<img id="res" style="border-radius:20%" src="bilgi2.png" >
		<img id="res" style="border-radius:20%" src="bilgi3.png" >
		<img id="res" style="border-radius:20%" src="bilgi4.png" >
		<img id="res" style="border-radius:20%" src="bilgi5.png" >
		
	</div>
	
	
	
</body>
</html>