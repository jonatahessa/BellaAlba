<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./_resources/estiloPaginaInicial.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="./_imagens/favicon1.ico" />
        <script type="text/javascript" src="./_resources/domPaginaInicial.js"></script>
        <script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script>
        <link href="https://fonts.googleapis.com/css?family=Kalam:700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Cambay" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
        <title>Bella Alba</title>
    </head>
    <body>
        <header class="static-header">
            <div class="inside-header">
              <nav class="font-cambay">
                    <a href="#section1"><strong>Home</strong></a>
                    <a href="#section2"><strong>Promoções</strong></a>
                    <a href="#section3"><strong>Cardápio</strong></a>
                    <a href="#section4"><strong>Localização</strong></a>
                    <a href="#section5"><strong>Contato</strong></a>
                </nav>
            </div>
        </header>

        <header class="fixed-header">
            <div class="fheader__container">
                <nav class="font-cambay">
                    <a href="#section1"><strong>Home</strong></a>
                    <a href="#section2"><strong>Promoções</strong></a>
                    <a href="#section3"><strong>Cardápio</strong></a>
                    <a href="#section4"><strong>Localização</strong></a>
                    <a href="#section5"><strong>Contato</strong></a>
                </nav>
            </div>
        </header>
        <div class="container-fluid">

          <div class="row">
            <div class="col-12 font-pacifico">
              <h1 class="text-center text-success display-1 logo">Bella Alba</h1>
              <h3 class="text-center font-kalam">Forneria</h3>
              <h2 class="text-center text-light logo display-4">
                  <a class="text-light logo" href="tel:01156774005"><strong>5677-4005</strong></a> / <a class="text-light logo" href="tel:01141119170"><strong>4111-9170</strong></a><br>
                  <a class="text-light logo" href="tel:011987435391"><strong>98743-5391</strong></a><img class="img-fluid col-1" src="./_imagens/whatsapp.png" alt="whatsapp imagem">
              </h2>
            </div>
          </div>

            <div class="row justify-content-center">
                <div id="section1" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section1">
                    <h1 class="font-kalam sessoes">Home</h1>
                    <hr/>
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <img class="img-fluid col-12" src="./_imagens/logo.jpg" alt="imagem de uma pizza">
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 font-cambay">
                            <p>Tradicional na região, a <strong>BELLA ALBA</strong> vem unindo a tradição da pizza com a sofisticação informal. E não para de crescer, evoluir, adotando sempre o lema: “Atender à expectativa dos clientes” como sinônimo de qualidade.</p>
                            <p>Com investimento constante nas instalações, produtos e serviços, faz com que a <strong>BELLA ALBA</strong> seja considerada um novo clássico na terra das pizzarias.</p>
                            <p>Todos os recursos são colocados à disposição dos funcionários, para que a filosofia desde a fundação continue sempre a ser: SERVIR PIZZAS COM CARINHO, DEDICAÇÃO E ALEGRIA.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <div id="section2" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section2">
                    <h1 class="font-kalam sessoes">Promoções</h1>
                    <hr/>
                    <c:forEach var="promocao" items="${promocoes}">
                        <div class="row justify-content-center font-cambay">
                            <div class="paineis col-xs-12 col-sm-12 col-md-8 col-lg-6 border border-danger text-center promo-padding">
                                <h2 class="text-danger">${promocao.nome}</h2>
                                <h3 class="text-dark">${promocao.descricao}</h3>
                                <h1 class="text-success">${promocao.preco}</h1>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <div class="row justify-content-center">
                <div id="section3" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section3">
                    <h1 class="font-kalam sessoes">Cardápio</h1>
                    <hr/>
                    <div class="row justify-content-center">
                        <div class="col-xs-12 col-sm-12 col-lg-8">
                            <button type="button" class="col-12 botoes-menu" data-toggle="modal" data-target="#modal-pizzas">
                                <img class="col-5" src="./_imagens/pizzasalgada.png" alt="Foto de uma pizza salgada"><h3 class="font-kalam text-danger">Clique para abrir as Pizzas Salgadas</h3>
                            </button>
                        </div>
                    </div>

                    <div class="row justify-content-center">
                        <div class="col-xs-12 col-sm-12 col-lg-8">
                            <button type="button" class="col-12 botoes-menu" data-toggle="modal" data-target="#modal-doces">
                                <img class="col-5" src="./_imagens/pizzadoce.png" alt="Foto de uma pizza doce"><h3 class="font-kalam text-danger">Clique para abrir as Pizzas Doces</h3>
                            </button>
                        </div>
                    </div>

                    <div class="row justify-content-center">
                        <div class="col-xs-12 col-sm-12 col-lg-8">
                            <button type="button" class="col-12 botoes-menu" data-toggle="modal" data-target="#modal-bebidas">
                                <img class="col-5" src="./_imagens/bebidas.png" alt="Foto das bebidas"><h3 class="font-kalam text-danger">Clique para abrir as Bebidas</h3>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <div id="section4" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section4">
                    <h1 class="font-kalam sessoes">Localização</h1>
                    <hr/>
                    <h3 class="text-center">Rua Alba, 1200, Vila Parque Jabaquara - São Paulo - SP</h3>
                    <iframe class="col-12" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d456.8521490453049!2d-46.65946281480083!3d-23.646716980198146!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5a90954e19f7%3A0x56d0f48ab5f73f0b!2sBella+Alba!5e0!3m2!1spt-BR!2sbr!4v1522248019482" height="500" allowfullscreen></iframe>
                  </div>
            </div>

            <div class="row justify-content-center">
                <div id="section5" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section5">
                    <h1 class="font-kalam sessoes">Contato</h1>
                    <hr/>
                    <div class="row justify-content-center">
                        <div class="col-12">
                            <h2 class="text-center display-4">
                                <a class="text-dark" href="tel:01156774005"><strong>5677-4005</strong></a><br/>
                                <a class="text-dark" href="tel:01141119170"><strong>4111-9170</strong></a><br/>
                                <a class="text-dark" href="tel:011987435391"><strong>98743-5391</strong></a><img class="img-fluid col-1" src="./_imagens/whatsapp.png" alt="whatsapp imagem">
                            </h2>
                            <h3 class="text-center">Horário de funcionamento</h3>
                            <h4 class="text-center">De Segunda a Quinta e Domingo das 18h às 23:00h</h4>
                            <h4 class="text-center">Sexta e Sábado das 18h às 00h</h4>
                            <p class="text-center">Copyright (c) Pizzaria Bella Alba Copyright Holder All Rights Reserved.</p>
                            <p class="text-center">Developed by Jonata Hessa</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="modal-pizzas" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Pizzas</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <ul class="col-12 cardapios">
                          <p class="grande-broto">Broto</p>
                          <p class="grande-broto">Grande</p>
                            <c:forEach var="pizza" items="${pizzas}">
                                <li class="menu-category titulopreco">
                                    <div class="font-cambay">
                                        <p class="titulo">${pizza.codigo} - ${pizza.nome}</p>
                                        <p class="preco">${pizza.broto}</p>
                                        <p class="preco">${pizza.preco}</p>
                                        <p class="descricao">${pizza.descricao}</p>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar Cardapio</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="modal-doces" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Pizzas Doces</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <ul class="col-12 cardapios">
                          <p class="grande-broto">Broto</p>
                          <p class="grande-broto">Grande</p>
                            <c:forEach var="doce" items="${doces}">
                                <li class="menu-category titulopreco">
                                    <div class="font-cambay">
                                        <p class="titulo">${doce.codigo} - ${doce.nome}</p>
                                        <p class="preco">${doce.broto}</p>
                                        <p class="preco">${doce.preco}</p>
                                        <p class="descricao">${doce.descricao}</p>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar Cardapio</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="modal-bebidas" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Bebidas</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <ul class="col-12 cardapios">
                            <c:forEach var="bebida" items="${bebidas}">
                                <li class="menu-category titulopreco">
                                    <div class="font-cambay">
                                        <h5 class="titulo">${bebida.nome}</h5>
                                        <h5 class="preco">${bebida.preco}</h5>
                                        <p class="descricao">${bebida.descricao}</p>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar Cardapio</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
