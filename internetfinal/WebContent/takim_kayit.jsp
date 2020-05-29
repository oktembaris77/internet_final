<%@page import="DAO.KayitliTakimlar" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.util.ArrayList" %>
<%@page import="Classes.TAKIM" %>
<%@page import="org.apache.catalina.startup.Tomcat.ExistingStandardWrapper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
padding:10px 10px 10px 20%;
width:100%;
height:100%;
background-color:#eee;
background-color: rgba(238, 238, 238, 0.8);
box-sizing:border-box;

}

td{
text-align:right;
}
#inputtext{
height: 27px;
width: 400px;
margin-left:30px;
padding-left:15px;
box-sizing:border-box;
}
.baslik{
font-size:30px;
}
#btn{
height:40px;
width:100px;
}
#kform{
margin-left:20%;
}
</style>
<%
	KayitliTakimlar takimlar = new KayitliTakimlar();
	ArrayList<TAKIM> takimlararray = new ArrayList<TAKIM>();
	takimlararray = takimlar.Takimlar();
%>

  <script type="text/javascript">
  	function submitform(){
  		alert("Kayıt işlemi");
  		
  	}
  
  </script>

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
	<br>
	<p>
		<%
		if(request.getParameter("d").equals("kayit")){
			out.println("<p><b><font color='green'>Kayıt işlemi gerçekleşti.</font></b></p><br><br>");
		}
		
		%>
	</p>
	<% 
			if(takimlararray.size()>=16){
				out.println("<p><font color='red'><b>Turnuva katılımları tamamlandı.</b></font></p>");
			}
			
			else{
	%>
	<p class="baslik">Takım Kayıt</p><br><br>
		<form id="kform" name="takimkayit" action="TakimKayitServlet" method="post">
			<table>
				<tr>
					<td>Takım Adı </td>
					<td><input required="required" placeholder="Takım Adınız" id="inputtext" type="text" name="takimadi"></td>
				</tr>
				<tr>
					<td>Şehir </td>
					<td><input required="required" placeholder="Şehir" id="inputtext" type="text" name="sehir"></td>
				</tr>
				<tr>
					<td></td>
					<td><input value="Katıl" id="btn" type="submit" onclick="submitform()"></td>
				</tr>
			</table>
			
		
		</form>
		<% 
			}
		%>
		<br>
		<br>
		
		<img style="border-radius:20%" src="img/ftres.jpg" >
	</div>
	
	
	
</body>
</html>