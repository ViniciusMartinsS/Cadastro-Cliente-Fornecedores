<%@page import="br.com.fatecpg.controle.ControleF"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incluir Fornecedor</title>
    </head>
    <body>
        <a href="listar-fornecedores.jsp">Listar<a/>
        <hr>
    <center>
        <%
            try {
                if (request.getParameter("Salvar") != null) {
                    String nome = request.getParameter("nomeF");
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
            } catch (Exception ex) {
        %>    
        <div>Erro ao processar o form</div>
        <%}%>
        <h2>Incluir Fornecedor</h2>
        <form>
            <table border = "0">
                <tr>
                    <td>&emsp;Nome Fantasia:</td>
                    <td><input type="text" name="nomeF" ></td> &nbsp;
                    <td>&emsp;Razão Social:</td>
                    <td><input type="text" name="razaoF" ></td> &nbsp;
                    <td>&emsp;CNPJ:</td>
                    <td><input type="text" name="cnpjF" pattern="\d{2}.\d{3}.\d{3}\/\d{4}-\d{2}" placeholder="xx.xxx.xxx/xxxx-xx"></td> 
                </tr>
                <tr>
                    <td>&emsp;Telefone:</td>
                    <td> <input type="text" name="telefoneF" pattern="\(\d{2}\)\d{4}-\d{4}" placeholder="(xx)xxxx-xxxx" ></td> &nbsp; &nbsp;              
                    <td>&emsp;Email:</td>
                    <td> <input type="text" name="emailF" placeholder="example@example.com" > </td>&nbsp;                              
                    <td>&emsp;Endereço:</td>
                    <td><input type="text" name="enderecoF" placeholder="Endereço todo"> </td>
                </tr>
            </table>
            <br>
            <input type="submit" name="Salvar" value="Salvar Fornecedor"> &emsp; &emsp;
            <input type="reset" name="Limpar" value="Limpar Campos">
        </form>
    </center>
</body>
</html>

