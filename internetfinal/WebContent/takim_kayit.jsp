<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
padding:10px 10px 10px 30%;
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

</style>
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
	<br>
	<p class="baslik">Takım Kayıt Formu</p><br><br>
		<form name="takimkayit" action="TakimKayitServlet" method="post">
			<table>
				<tr>
					<td>Takım Adı </td>
					<td><input placeholder="Takım Adınız" id="inputtext" type="text" name="takimadi"></td>
				</tr>
				<tr>
					<td>Şehir </td>
					<td><input placeholder="Şehir" id="inputtext" type="text" name="sehir"></td>
				</tr>
				<tr>
					<td></td>
					<td><input value="Katıl" id="btn" type="submit"></td>
				</tr>
			</table>
			
		
		</form>
	</div>
	
	
	
</body>
</html>