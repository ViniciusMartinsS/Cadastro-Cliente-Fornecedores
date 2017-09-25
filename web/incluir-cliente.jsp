<%@include file="WEB-INF/jspf/header_3.jspf"%>
<%@page import="br.com.fatecpg.controle.ControleCl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <title>Incluir Cliente</title>
    </head>
    <body>
    <center>
        <font color="#007BFF"><h2>Incluir Cliente</h2></font>
        <%
            try {
                if (request.getParameter("Salvar") != null) {
                    String nome = request.getParameter("nomeCC");
                    String rg = request.getParameter("rgCC");
                    String cpf = request.getParameter("cpfCC");
                    String email = request.getParameter("emailCC");
                    String telefone = request.getParameter("telefoneCC");
                    String endereco = request.getParameter("enderecoCC");
                    ControleCl C = new ControleCl();
                    C.setNome(nome);
                    C.setRg(rg);
                    C.setCpf(cpf);
                    C.setEmail(email);
                    C.setTelefone(telefone);
                    C.setEndereco(endereco);
                    ControleCl.getlist().add(C);
                    response.sendRedirect(request.getRequestURI());
                }
            } catch (Exception ex) {
        %>    
        <div>Erro ao processar o form</div>
        <%}%>
        <form>
            <table border = "0">
                <tr>
                    <td>&emsp;Nome Cliente:</td>
                    <td><input type="text" name="nomeCC"placeholder="Nome Cliente" ></td> &nbsp;
                    <td>&emsp;RG:</td>
                    <td><input type="text" name="rgCC"placeholder="RG" ></td> &nbsp;
                    <td>&emsp;CPF:</td>
                    <td><input type="text" name="cpfCC" pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" placeholder="xxx.xxx.xxx-xx"></td> 
                </tr>
                <tr>
                    <td>&emsp;Telefone:</td>
                    <td> <input type="text" name="telefoneCC" pattern="\(\d{2}\)\d{4}-\d{4}" placeholder="(xx)xxxx-xxxx" ></td> &nbsp; &nbsp;              
                    <td>&emsp;Email:</td>
                    <td> <input type="text" name="emailCC" placeholder="example@example.com" > </td>&nbsp;                              
                    <td>&emsp;Endereço:</td>
                    <td><input type="text" name="enderecoCC" placeholder="Endereço Completo"> </td>
                </tr>
            </table>
            <br>
            <input type="submit" name="Salvar" value="Salvar Cliente"> &emsp; &emsp;
            <input type="reset" name="Limpar" value="Limpar Campos">
        </form>
    </center>
</table>
<%@include file="WEB-INF/jspf/footer.jspf"%>
</body>
</html>

