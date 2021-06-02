<%-- 
    Document   : inserir
    Created on : Apr 7, 2021, 8:30:59 PM
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        <div class="conteiner p-3 my3 bg-warning text-dark" align="center">
            <header>
                <img src="titulo.jpg" alt="titulo" >
            </header>
            <form action="executa_inserir.jsp" method="post">
                <label><strong>Descrição: </strong></label><br/>
                <input type="text" name="descricao"/>

                <br/><label><strong>Preço: </strong></label><br/>
                <input type="text" name="preco"/><br/>

                <button type="submit"> OK </button> 
                <button type="submit" formaction="index.jsp">CANCELAR</button>
                
                <footer>
                    <br>
                    <br>
                    <h6 align="center">
                        ®Almost all rights reserved to Matthews Corporations®
                    </h6>
                </footer>

            </form>
        </div>
    </body>
</html>
