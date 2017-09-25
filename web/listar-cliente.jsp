<%@include file="WEB-INF/jspf/header_2.jspf"%>
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
        
        <title>Listar Cliente</title>
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
        <h1>Listar Cliente</h1>

      </div>
    </header>
    
     <center>
        <%
            try {
                if (request.getParameter("remove") != null) {
                    int i = Integer.parseInt(request.getParameter("index"));
                    ControleCl.getlist().remove(i);
                    response.sendRedirect(request.getRequestURI());
                }else if(request.getParameter("salve")!= null){
                int i = Integer.parseInt(request.getParameter("index"));
                    String nome = request.getParameter("nnome");
                    String rg = request.getParameter("nrg");
                    String cpf = request.getParameter("ncpf");
                    String email = request.getParameter("nemail");
                    String telefone = request.getParameter("ntelefone");
                    String endereco = request.getParameter("nendereco");
                    ControleCl altera = new ControleCl();
                   if(nome != ""){
                       altera.alterar("nome", i, nome);
                   }
                   if(rg != ""){
                       altera.alterar("rg", i, rg);
                   }
                   if(cpf != ""){
                       altera.alterar("cpf", i, cpf);
                   }
                   if(email != ""){
                       altera.alterar("email", i, email);
                   }
                   if(telefone != ""){
                       altera.alterar("telefone", i, telefone);
                   }
                    if(endereco != ""){
                       altera.alterar("endereco", i, endereco);
                   }
                   
                }  
            } catch (Exception ex) {
        %>    
        <div>Erro ao Processar o Form</div>
        <%}%>
    <%//Tabela de Cliente p. alterar e excluir%>
        <br>
        <table border = "1">
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
                        <%if(request.getParameter("alterar")!= null){%>
                        <td>
                        <input type="text" name="nnome" placeholder="Nome Cliente"><br>
                        <input type="text" name="nrg" placeholder="RG"><br>
                        <input type="text" name="ncpf" placeholder="CPF - xx.xxx.xxx-xx" pattern="\d{3}.\d{3}.\d{3}\-\d{2}"><br>
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

    
          </div>
        </div>
      </div>
    </section>

   <section id="servicos">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <h2>Servicos</h2>
            <p class="lead"><a href="incluir-cliente.jsp">Incluir Cliente</a></p>
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
