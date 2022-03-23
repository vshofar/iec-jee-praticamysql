<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"   prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserir Produto</title>
</head>
<body>
    <center>
		<h1>Inserir Produto</h1>
		<form action="./salvar-produto" method="POST">
			<table>
				<tr>					
					<td>Categoria</td>
					<td>
						<select name="categoria" id="categoria">
							<c:forEach var="categoria" items="${listaCategoria}">
								<c:out value="${categoria.nome}" />		
								<option>
									<c:out value="${categoria.nome}" />		
								</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>					
					<td>Nome:</td>
					<td>
						<input type="text" name="nome" id="nome">
					</td>
				</tr>
				<tr>
					<td>Preço:</td>
					<td>
						<input type="text" name="preco" id="preco">
					</td>
				</tr>				
				<tr>
					<td></td>
					<td align="right">
						<input type="submit" value="Inserir">
					</td>
				</tr>				
			</table>	
			
			
		</form>
		<a href="/praticamysql/index.jsp"> Voltar </a>
	</center>
</body>
</html>