<%-- 
    Document   : executa_alterar
    Created on : Apr 7, 2021, 7:47:01 PM
    Author     : matth
--%>

<%@page import="dao.ProdutoDAO"%>
<%@page import="model.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controlador = executa_alterar</title>
    </head>
    <body>
        <%
            try {
                Produto pro = new Produto();
                ProdutoDAO prd = new ProdutoDAO();
                    if (request.getParameter("descricao").equals("") || request.getParameter("preco").equals("")) {
                        response.sendRedirect("index.jsp");
                    } else {
                        pro.setDescricao_produto(request.getParameter("descricao"));
                        pro.setPreco_produto(Double.parseDouble(request.getParameter("preco")));
                        pro.setCodigo_produto(Integer.parseInt(request.getParameter("codigo")));
                        prd.alterar(pro);
                        response.sendRedirect("index.jsp");
                    }
            } catch (Exception erro) {
                throw new RuntimeException("Erro 8: " + erro);
            }
        %>
    </body>
</html>
