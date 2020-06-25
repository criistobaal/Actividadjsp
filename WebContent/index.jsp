<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>trabajo</title>
</head>
<body>
<h1>hola sdfds</h1>
<form action="clase" method="get">
<input type= "text" value = "" name ="nombre" id="nombre">
<button type="submit">llamado al metodo get</button>
</form>
<form action="clase" method="post">
<input type= "text" value = "" name ="apellido" id="apellido">
<button type="submit">llamado al metodo post</button>
</form>
<form action="index.jsp" method="post">
<h3>LLAMADO AL METODO JSP</h3>
<p>Filas:</p><input type= "text" value = "" name ="filas" id="filas"><br>
<p>Columnas:</p><input type= "text" value = "" name ="columnas" id="columnas"><br>
<button type="submit">Enviar</button>
</form>
<%
   String sFila = request.getParameter("filas");
   String sColumnas = request.getParameter("columnas");
   int  iFilas = 0;
  int  iColumnas = 0;
   if(null !=sFila && !sFila.equals("")){
	       iFilas = Integer.parseInt(sFila.toString().trim());
   }
   if(null !=sColumnas && !sColumnas.equals("")){
	      iColumnas = Integer.parseInt(sColumnas.toString().trim());
    } 

%>
<p>total de Columnas: <%= iColumnas %></p>
<p>total de filas: <%= iFilas %></p>

</body>
</html>