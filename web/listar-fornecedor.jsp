<%@include file="WEB-INF/jspf/header.jspf"%>
<%@page import="br.com.fatecpg.controle.ControleF"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Fornecedores</title>
    </head>
    <body>
    <center>
        <font color="#007BFF"> <h2>Lista de Forncedores</h2></font>
        <%
            try {
                if (request.getParameter("remove") != null) {
                    int i = Integer.parseInt(request.getParameter("index"));
                    ControleF.getlist().remove(i);
                    response.sendRedirect(request.getRequestURI());
                } else if (request.getParameter("salve") != null) {
                    int i = Integer.parseInt(request.getParameter("index"));
                    String nome = request.getParameter("nnome");
                    String razao = request.getParameter("nrazao");
                    String cnpj = request.getParameter("ncnpj");
                    String email = request.getParameter("nemail");
                    String telefone = request.getParameter("ntelefone");
                    String endereco = request.getParameter("nendereco");
                    ControleF altera = new ControleF();
                    if (nome != "") {
                        altera.alterar("nome", i, nome);
                    }
                    if (razao != "") {
                        altera.alterar("razao", i, razao);
                    }
                    if (cnpj != "") {
                        altera.alterar("cnpj", i, cnpj);
                    }
                    if (email != "") {
                        altera.alterar("email", i, email);
                    }
                    if (telefone != "") {
                        altera.alterar("telefone", i, telefone);
                    }
                    if (endereco != "") {
                        altera.alterar("endereco", i, endereco);
                    }

                }
            } catch (Exception ex) {
        %>    
        <div>Erro ao Processar o Form</div>
        <%}%>
        <!Table com as informações dos Forncedores + Funcção de Alterar e Excluir>
        <br>
        <table border = "2">
            <tr>
                <th>Nome:</th>
                <th>Razão Social:</th>
                <th>CNPJ:</th>
                <th>Telefone:</th>
                <th>Email:</th>
                <th>Endereço:</th>
                <th>Funções:</th>
                    <%if (request.getParameter("alterar") != null) {%>
                <th>Alteração:</th>
                    <%}%>
            </tr>
            <%try {%>
            <%int i = 0;%>
            <%for (ControleF F : ControleF.getlist()) {%>
            <tr>
                <td><%= F.getNome()%></td>
                <td><%= F.getRazao()%></td>
                <td><%= F.getCnpj()%></td>
                <td><%= F.getTelefone()%></td>
                <td><%= F.getEmail()%></td>
                <td><%= F.getEndereco()%></td>
                <td>
                    <form>
                        <input type="hidden" name="index" value="<%=i++%>">
                        <input type="submit" name="alterar" value="Alterar">
                        <input type="submit" name="remove" value="Excluir"><br>
                        </td>
                        <%if (request.getParameter("alterar") != null) {%>
                        <td>
                            <input type="text" name="nnome" placeholder="Nome Fornecedor"><br>
                            <input type="text" name="nrazao" placeholder="Razão Social"><br>
                            <input type="text" name="ncnpj" placeholder="CNPJ - xx.xxx.xxx/xxxx-xx" pattern="\d{2}.\d{3}.\d{3}\/\d{4}-\d{2}"><br>
                            <input type="text" name="ntelefone" placeholder="Telefone - (xx)xxxx-xxxx" pattern="\(\d{2}\)\d{4}-\d{4}"><br>
                            <input type="text" name="nemail" placeholder="Email"><br>
                            <input type="text" name="nendereco" placeholder="Endereço"><br>&nbsp;&nbsp; &nbsp;
                            <input type="submit" name="salve" value="Salvar"> &nbsp;
                            <input type="submit" name="cancelar" value="Cancelar"> 
                            <%}%>
                    </form>
                </td>    
            </tr>    
            <%}%>
            <%} catch (Exception ex) {%>
            <tr>
                <td colspan = "5">
                    Erro ao Carregar a Lista: <%= ex.getMessage()%> 
                </td>
            </tr>
            <%}%>
        </table>
    </center>
    <center>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
