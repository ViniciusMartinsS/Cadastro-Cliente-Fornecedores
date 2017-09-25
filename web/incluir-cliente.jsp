<%@include file="WEB-INF/jspf/header_3.jspf"%>
<%@page import="br.com.fatecpg.controle.ControleCl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/scrolling-nav.css" rel="stylesheet">
        
        <title>Incluir Cliente</title>
    </head>
    <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Cliente</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#sobre">Sobre Nós</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#servicos">Servicos</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header class="bg-primary text-white">
      <div class="container text-center">
        <h1>Incluir Cliente</h1>
      </div>
    </header>
    </head>
    <body>
    <center>
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
                    <td><input type="text" name="cpfCC" pattern="\d{3}.\d{3}.\d{3}\-\d{2}" placeholder="xxx.xxx.xxx-xx"></td> 
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
    </center>
        <center>

    
          </div>
        </div>
      </div>
    </section>

   <section id="servicos">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <h2>Servicos</h2>
            <p class="lead"><a href="listar-cliente.jsp">Listar Cliente</a></p>
            <p class="lead"><a href="incluir-fornecedor.jsp">Incluir Fornecedor</a></p>
            <p class="lead"><a href="listar-fornecedores.jsp">Listar Fornecedores</a></p>
          </div>
        </div>
      </div>
    </section>
    
    <section id="sobre">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <h2>Sobre Nós</h2>
            <p class="lead">Fatecanos.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Fatec POO 2017</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom JavaScript for this theme -->
    <script src="js/scrolling-nav.js"></script>

</body>
</html>

