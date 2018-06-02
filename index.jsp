<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Oficina Spring com Hibernate</title>
    </head>

    <body>
       <center><h1> Bemvindo a Oficina Spring com Hibernate </h1></center>
         <a href="usuario/tudo.html">Atualizar Lista</a><hr>
         <table style="border-collapse: collapse" cellpadding="7px" border="1">
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>Senha</th>
            </tr>
            <c:forEach items="${lst}" var="em">
            <tr>
                <td>${em.id}</td>
                <td>${em.nome}</td>
                <td>${em.senha}</td>
              </tr>
            </c:forEach>
        </table>       
           <a href="create.html">Adicionar Usuario</a>  <br><br>
               <a href="${pageContext.request.contextPath}/index.html">
            OK
               </a>
       </body>
</html>
