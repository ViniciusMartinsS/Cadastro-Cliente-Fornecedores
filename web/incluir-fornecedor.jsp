<%@page import="br.com.fatecpg.controle.ControleF"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incluir Fornecedor</title>
    </head>
    <body>
        <%
            try{
            if(request.getParameter("Salvar") != null){
            String nome = request.getParameter("nomeF") ;  
            String razao = request.getParameter("razaoF");
            String cnpj = request.getParameter("cnpjF");
            String email = request.getParameter("emailF");
            String telefone = request.getParameter("telefoneF");
            String endereco = request.getParameter("enderecoF");
            ControleF f = new ControleF();
            f.setNome(nome);
            f.setRazao(razao);
            f.setCnpj(cnpj);
            f.setEmail(email);
            f.setTelefone(telefone);
            f.setEndereco(endereco);
            ControleF.getlist().add(f);
            response.sendRedirect(request.getRequestURI());
            }
        }catch(Exception ex){
        %>    
        <div>Erro ao processar o form</div>
        <%}%>
        <a href="listar-fornecedores.jsp">Listar Fornecedores</a>
       
        <fieldset>
            <legend>Incluir Fornecedor</legend>
            <form>
                <table border = "0">
                    <tr>
                <td>&emsp;Nome Fantasia:</td>
                <td><input type="text" name="nomeF" ></td> &nbsp;
                <td>&emsp;Razão Social:</td>
                <td><input type="text" name="razaoF" ></td> &nbsp;
                <td>&emsp;CNPJ:</td>
                <td><input type="text" name="cnpjF" ></td> 
                </tr>
                <tr>
                <td>&emsp;Telefone:</td>
                <td> <input type="text" name="telefoneF" ></td> &nbsp; &nbsp;              
                <td>&emsp;Email:</td>
                <td> <input type="text" name="emailF" > </td>&nbsp;                              
                <td>&emsp;Endereço:</td>
                <td><input type="text" name="enderecoF" > </td>
                </tr>
                </table>
                <br>
                <input type="submit" name="Salvar" value="Salvar Fornecedor"> 
                <input type="reset" name="Limpar" value="Limpar Campos">
            </form>
        </fieldset>
        
    </body>
</html>

