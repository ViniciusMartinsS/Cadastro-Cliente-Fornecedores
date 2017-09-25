<%@include file="WEB-INF/jspf/header_2.jspf"%>
<%@page import="br.com.fatecpg.controle.ControleCl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <title>Listar Cliente</title>
    </head>
    <body>    
    <center>
        <font color="#007BFF"><h2>Lista de Clientes</h2></font>
        <%
            try {
                if (request.getParameter("remove") != null) {
                    int i = Integer.parseInt(request.getParameter("index"));
                    ControleCl.getlist().remove(i);
                    response.sendRedirect(request.getRequestURI());
                } else if (request.getParameter("salve") != null) {
                    int i = Integer.parseInt(request.getParameter("index"));
                    String nome = request.getParameter("nnome");
                    String rg = request.getParameter("nrg");
                    String cpf = request.getParameter("ncpf");
                    String email = request.getParameter("nemail");
                    String telefone = request.getParameter("ntelefone");
                    String endereco = request.getParameter("nendereco");
                    ControleCl altera = new ControleCl();
                    if (nome != "") {
                        altera.alterar("nome", i, nome);
                    }
                    if (rg != "") {
                        altera.alterar("rg", i, rg);
                    }
                    if (cpf != "") {
                        altera.alterar("cpf", i, cpf);
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
        <%//Tabela de Cliente p. alterar e excluir%>
        <br>
        <table border = "2">
            <tr>
                <th>Nome:</th>
                <th>RG:</th>
                <th>CPF:</th>
                <th>Telefone:</th>
                <th>Email:</th>
                <th>Endereço:</th>
                <th>Ações:</th>
                    <%if(request.getParameter("alterar")!= null){%>
                <th>Alteração:</th>
                    <%}%>
            </tr>
            <%try {%>
            <%int i = 0;%>
            <%for (ControleCl CC : ControleCl.getlist()) {%>
            <tr>
                <td><%= CC.getNome()%></td>
                <td><%= CC.getRg()%></td>
                <td><%= CC.getCpf()%></td>
                <td><%= CC.getTelefone()%></td>
                <td><%= CC.getEmail()%></td>
                <td><%= CC.getEndereco()%></td>
                <td>
                    <form>
                        <input type="hidden" name="index" value="<%=i++%>">
                        <input type="submit" name="alterar" value="Alterar">
                        <input type="submit" name="remove" value="Excluir"><br>
                        </td>
                        <%if (request.getParameter("alterar") != null) {%>
                        <td>
                            <input type="text" name="nnome" placeholder="Nome Cliente"><br>
                            <input type="text" name="nrg" placeholder="RG"><br>
                            <input type="text" name="ncpf" placeholder="CPF - xx.xxx.xxx-xx" pattern="\d{3}\.\d{3}\.\d{3}-\d{2}"><br>
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
            <%}
            catch (Exception ex) {%>
            <tr>
                <td colspan = "5">
                    Erro ao Carregar a Lista: <%= ex.getMessage()%> 
                </td>
            </tr>
            <%}%>
        </table>
    </center>
    <%@include file="WEB-INF/jspf/footer.jspf"%>
</body>
</html>
