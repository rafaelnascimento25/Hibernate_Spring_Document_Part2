<%-- 
    Document   : create
    Created on : 31/05/2018, 00:29:28
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar Usuario</title>
    </head>
    <body>
        <h1>Formulario de Adicao de Usuarios</h1>
        <f:form action="usuario/tudo.html" modelAttribute="usuario">
            Nome: <input type="text" name="nome" /></br>
            <br><br>
             Senha: <input type="password" name="senha"/></br>
            <br><br>
            <input type="submit" value="Adicionar"/></br>
        </f:form>
            <br><br>
               <a href="${pageContext.request.contextPath}/index.html">
            Voltar
        </a>
            
    </body>
</html>

