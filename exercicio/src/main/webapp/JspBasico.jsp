<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

<title>JSP B�sico</title>

</head>

<body>

<h1>Um exemplo b�sico</h1>

<%

for (int i=1; i<7; i++) {

out.println("<h" + i + ">Heading " + i + "</h" + i + ">");

}

%>

</body>

</html>