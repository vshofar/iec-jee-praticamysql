<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"   prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Categorias</title>
</head>
<body>
	<center>
		<h1>Livros</h1>        
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Lista de Categorias</h2></caption>
            <tr>
                <th>Nome</th>
                <th>Preco</th>                
            </tr>
            <c:forEach var="livro" items="${listaLivro}">
                <tr>
                    <td><c:out value="${livro.name}" /></td>
                    <td><c:out value="${livro.price}" /></td>                                    
                    
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>

</html>