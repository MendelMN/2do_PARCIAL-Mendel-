
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Roles</h1>
        <a href="RolControlador?action=add">Nuevo </a>
        <br><br>
        <table border="1" cellspacing="0" cellpadding="2">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${rol}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td><a href="RolControlador?action=edit&id=${item.id}">Editar</td>
                    <td><a href="RolControlador?action=delete&id=${item.id}">Eliminar</td>
                </tr>
            </c:forEach>
        </table>
        <br><br>
                <a href="menu.jsp">Volver al Menu</a> 
    </body>
</html>
