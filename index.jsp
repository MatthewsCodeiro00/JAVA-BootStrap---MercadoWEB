<%-- 
    Document   : index
    Created on : Apr 8, 2021, 7:39:03 PM
    Author     : matth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produto"%>
<%@page import="dao.ProdutoDAO"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crud MVC + MySql</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body>
        <div class="conteiner p-3 my3 bg-warning text-white" align="center">
            <form action="index.jsp" method="post">
                <header>
                    <img src="titulo.jpg" alt="titulo" height="80">
                </header>
            </form>
        </div>
            
        <div class="conteiner p-3 my3 bg-info text-white" align="center">
            <form>
                <img src="armaz.png" alt="armazem" width="80" height="70"> 
                <br><h1><label>BUSCAR </label></h1>

                <input type="text" name="descricao"/><br/>

                <button type="submit"> Vai!!!</button>

            </form>
        </div>
        
        <div align="center" class="conteiner p-3 my3 bg-warning text-dark">
            <form>
                <button type="submit" formaction="inserir.jsp">Cadastrar</button>
                <button type="submit" formaction="index.jsp">Listar Todos</button>
                <br>
                <br/>
            <%
                try {
                    out.print("<table>");
                    out.print("<tr>");
                    out.print("<th>Codigo</th><th>Descrição</th><th>Preço</th><th>Editar</th><th>Excluir</th>");
                    out.print("</tr>");
                    ProdutoDAO prd = new ProdutoDAO();
                    if(request.getParameter("descricao") == "" || request.getParameter("descricao") == null) {
                        ArrayList<Produto> lista = prd.listarTodos();
                        for (int num = 0; num < lista.size(); num++) {
                            out.print("<tr>");
                            out.print("<td>" + lista.get(num).getCodigo_produto() + "</td>");
                            out.print("<td>" + lista.get(num).getDescricao_produto() + "</td>");
                            out.print("<td>" + lista.get(num).getPreco_produto() + "</td>");
                            out.print("<td><a href='alterar.jsp?codigo=" + lista.get(num).getCodigo_produto() + "&descricao=" + lista.get(num).getDescricao_produto() + "&preco=" + lista.get(num).getPreco_produto() + "'>Clique |</a></td>");
                            out.print("<td><a href='excluir.jsp?codigo=" + lista.get(num).getCodigo_produto() + "&descricao=" + lista.get(num).getDescricao_produto() + "&preco=" + lista.get(num).getPreco_produto() + "'>| Clique</a></td>");
                            out.print("</tr>");
                        }
                    } else {
                        ArrayList<Produto> lista = prd.listarTodosDescricao(request.getParameter("descricao"));
                        for(int num = 0; num < lista.size(); num++){
                            out.print("<tr>");
                            out.print("<td>" + lista.get(num).getCodigo_produto() + "</td>");
                            out.print("<td>" + lista.get(num).getDescricao_produto() + "</td>");
                            out.print("<td>" + lista.get(num).getPreco_produto() + "</td>");
                            out.print("<td><a href='alterar.jsp?codigo=" + lista.get(num).getCodigo_produto() + "&descricao=" + lista.get(num).getDescricao_produto() + "&preco=" + lista.get(num).getPreco_produto() + "'>Clique</a></td>");
                            out.print("<td><a href='excluir.jsp?codigo=" + lista.get(num).getCodigo_produto() + "&descricao=" + lista.get(num).getDescricao_produto() + "&preco=" + lista.get(num).getPreco_produto() + "'>Clique</a></td>");
                            out.print("</tr>");
                        }
                    }
                    out.print("</table>");
            } catch (Exception erro) {
                throw new RuntimeException("Erro 10: " + erro);
            }
            %>
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
