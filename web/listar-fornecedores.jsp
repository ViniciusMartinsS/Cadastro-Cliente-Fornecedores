
<%@page import="br.com.fatecpg.controle.ControleF"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Fornecedores</title>
    </head>
    <body>
    <a href="incluir-fornecedor.jsp">Incluir</a>
        <%
        try{
            
           
              if(request.getParameter("remove") != null){
                int i = Integer.parseInt(request.getParameter("index"));
                ControleF.getlist().remove(i);
                response.sendRedirect(request.getRequestURI());
                }else if(request.getParameter("mudar") != null){
                int i = Integer.parseInt(request.getParameter("index"));
                ControleF.getlist().get(i).setNome("ola");
                }

        }catch(Exception ex){
        %>    
        <div>Erro ao processar o form</div>
        <%}%>
     
        <table border = "1">
            <tr>
                <th>Nome:</th>
                <th>Razão Social:</th>
                <th>CNPJ:</th>
                <th>Telefone:</th>
                <th>Email:</th>
                <th>Endereço:</th>
                <th>Funções:</th>
            </tr>
            <%try{%>
            <%int i = 0;%>
            <%for (ControleF F: ControleF.getlist()){%>
            <tr>
                <td><%= F.getNome() %></td>
                <td><%= F.getRazao() %></td>
                <td><%= F.getCnpj() %></td>
                <td><%= F.getTelefone() %></td>
                <td><%= F.getEmail() %></td>
                <td><%= F.getEndereco() %></td>
                <td>
                    <form>
                    <input type="hidden" name="index" value="<%=i++%>">
                    <input type="submit" name="alterar" value="Alterar">
                    <input type="submit" name="remove" value="Excluir">
                    </form>
                    </td>    
            </tr>    
            <%}%>
            <%}catch (Exception ex){%>
            <tr>
                <td colspan = "5">
                    Erro ao carregar a lista: <%= ex.getMessage()%> 
                </td>
            </tr>
            <%}%>
        </table>
 
    </body>
</html>
