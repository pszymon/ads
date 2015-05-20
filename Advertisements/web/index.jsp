<%-- 
    Document   : index
    Created on : 2015-05-20, 16:33:15
    Author     : Mariusz
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Document</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/style2.css">
    </head>
    <body>


        <!-- Widoczne tylko po zalogowaniu -->

        <c:if test="${sessionScope.LogEmail != null}">

            <div class="zalogowany">
                <div class="container text-center">
                    <div class="row hidden-xs">
                        <div class="col-sm-6">
                            <span class="glyphicon glyphicon-user"></span>pomykacz.sz@gmail.com
                        </div>
                        <div class="col-sm-6">
                            <span class="glyphicon glyphicon-log-out"></span><a href="logout">wyloguj się</a>
                        </div>
                    </div>

                    <div class="row visible-xs">
                        <div class="col-xs-8">
                            <span class="glyphicon glyphicon-user"></span>pomykacz.sz@gmail.com
                        </div>
                        <div class="col-xs-4">
                            <span class="glyphicon glyphicon-log-out"></span><a href="logout">wyloguj</a>
                        </div>
                    </div>

                </div>
            </div>

        </c:if>



        <nav class="navbar navbar-default nawigacja" style="background-color: white; border-bottom: 1px solid grey;">
            <div class="container menu">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="#"><img alt="logo" src="img/logo.png"></a>
                </div>

                <div class="collapse navbar-collapse" id="main-menu">
                    <ul class="nav navbar-nav navbar-right text-center">
                        <li><a href="#" class="active-li">Home</a></li>
                        <li><a href="#">Dodaj ogłoszenie</a></li>
                        <li><a href="#">Kontakt</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container">
            <div class="row" >

                <div class="col-md-6">
                    <div class="input-group szukaj">
                        <input type="text" class="form-control" placeholder="Search for...">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span> Szukaj</button>
                        </span>
                    </div><!-- /input-group -->
                </div><!-- /.col-lg-6 -->
                <div class="col-md-2">
                    <select class="form-control pole_wyboru">
                        <option>Wszystkio</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <select class="form-control pole_wyboru">
                        <option>Wszystkio</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <select class="form-control pole_wyboru">
                        <option>Wszystkio</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </div>
            </div>
        </div>




        <div class="slider">
            <div id="tlo">
                <c:if test="${sessionScope.LogEmail == null}">
                    <div class="container">

                        <div class="row">


                            <div class="col-md-7">
                                <!-- <img class="img-responsive" src="img/girls.png" />-->
                            </div>

                            <div class="col-md-5 jumbotron pudlo">
                                <div class="pudlo2">
                                    <form role="form" action="login" method="POST">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Adres E-mail</label>
                                            <input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="E-mail">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Hasło</label>
                                            <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Hasło">
                                        </div>
                                        <div class="checkbox pull-left">
                                            <label>
                                                <input type="checkbox"> Zapamiętaj hasło
                                            </label>
                                        </div>
                                        <button class="btn btn-default pull-right rejestracja" data-toggle="modal" data-target="#okienkoRejestracji">Rejestracja</button>
                                        <button id="zalogoj" type="submit" class="btn btn-default pull-right zaloguj">Zaloguj</button>
                                    </form>
                                </div>

                            </div> 

                            <div class="modal fade" id="okienkoRejestracji" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top: 5%">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Zamknij</span></button>
                                            <h3 class="modal-title text-center" id="myModalLabel">Rejestracja</h3>
                                        </div>
                                        <form method="post" action="register">
                                            <div class="modal-body">
                                                <input type="text" class="form-control" placeholder="Twój login">
                                                <input type="text" class="form-control" placeholder="Twój e-mail">
                                                <input type="password" class="form-control" placeholder="Podaj swoje hasło">
                                                <input type="password" class="form-control" placeholder="Powtórz hasło">
                                            </div>
                                            <div class="modal-footer">
                                                <label class="pull-left"><input type="checkbox"> Akceptuję regulamin serwisu</label>
                                                <button type="button" class="btn btn-primary">Zarejestruj się</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </c:if>


            </div>

        </div>



        <div class="container kolumny3">

            <div class="row">

                <div class="col-md-4">
                    <div id="kolumna">

                        <div id="naglowek">
                            <img src="img/ico1.png">
                            <h4>Nagłówek</h4>
                        </div>

                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum voluptate dolore facilis reprehenderit tempora non illo consequuntur alias iste. Repellat provident, omnis debitis dignissimos molestiae quia quas autem voluptas placeat.</p>
                    </div>

                </div>

                <div class="col-md-4" >
                    <div id="kolumna">
                        <div id="naglowek">
                            <img src="img/ico2.png">
                            <h4>Nagłówek</h4>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum voluptate dolore facilis reprehenderit tempora non illo consequuntur alias iste. Repellat provident, omnis debitis dignissimos molestiae quia quas autem voluptas placeat.</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div id="kolumna">
                        <div id="naglowek">
                            <img src="img/ico3.png">
                            <h4>Nagłówek</h4>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum voluptate dolore facilis reprehenderit tempora non illo consequuntur alias iste. Repellat provident, omnis debitis dignissimos molestiae quia quas autem voluptas placeat.</p>
                    </div>
                </div>

            </div>
        </div>

        <div id="pasek_srodek">
            <div id="srodek_tlo">
                <div class="container box_container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="input-group szukaj">
                                <input type="text" class="form-control" placeholder="Search for...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span> Szukaj</button>
                                </span>
                            </div><!-- /input-group -->
                        </div><!-- /.col-lg-6 -->
                        <div class="col-md-2">
                            <select class="form-control pole_wyboru">
                                <option>Wszystkio</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                        <div class="col-md-2">
                            <select class="form-control pole_wyboru">
                                <option>Wszystkio</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                        <div class="col-md-2">
                            <select class="form-control pole_wyboru">
                                <option>Wszystkio</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>



                    </div>
                </div><!-- /.row -->
            </div>
        </div>
    </div>

    <div id="content">
        <div class="container">
            <div class="row">
                <div class="col-md-3">


                    <div class="kategorie">
                        <div id="kat1">
                            <h4><span class="glyphicon glyphicon-user" aria-hidden="true"> Praca</h4> 
                        </div>
                        <div id="podkategorie">
                            <ul>
                                <li><a href="#">pierwsze cos</a></li>
                                <li><a href="#">jako tako</a></li>
                                <li><a href="#">ciężka praca</a></li>
                                <li><a href="#">sprzątaczka</a></li>
                                <li><a href="#">pani lekkich obyczajów</a></li>
                                <li><a href="#">no juz nie co</a></li>
                                <li><a href="#">sprzątaczka</a></li>
                                <li><a href="#">pani lekkich obyczajów</a></li>
                                <li><a href="#">no juz nie co</a></li>
                            </ul>
                        </div>          
                    </div>

                    <div class="kategorie">
                        <div id="kat1">
                            <h4><span class="glyphicon glyphicon-home" aria-hidden="true"> Nieruchomości</h4>
                        </div>
                        <div id="podkategorie">
                            <ul>
                                <li><a href="#">pierwsze cos</a></li>
                                <li><a href="#">jako tako</a></li>
                                <li><a href="#">ciężka praca</a></li>
                                <li><a href="#">sprzątaczka</a></li>
                                <li><a href="#">pani lekkich obyczajów</a></li>
                                <li><a href="#">no juz nie co</a></li>
                            </ul>
                        </div>  
                    </div>

                    <div class="kategorie">
                        <div id="kat1">
                            <h4><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"> Kupię/Sprzedam</h4>
                        </div>
                        <div id="podkategorie">
                            <ul>
                                <li><a href="#">pierwsze cos</a></li>
                                <li><a href="#">jako tako</a></li>
                                <li><a href="#">ciężka praca</a></li>
                                <li><a href="#">sprzątaczka</a></li>
                                <li><a href="#">pani lekkich obyczajów</a></li>
                                <li><a href="#">no juz nie co</a></li>
                                <li><a href="#">sprzątaczka</a></li>
                                <li><a href="#">pani lekkich obyczajów</a></li>
                                <li><a href="#">no juz nie co</a></li>
                            </ul>
                        </div>  
                    </div>

                </div>


                <div class="col-md-9">
                    <div class="ogloszenie_box">
                        <a href="#"><h4>maciej3772</h4></a>
                        <h4>Zlece wykonanie prostej strony www</h4>
                        <h4 id="data">2014-12-19</h4>

                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                            Ea inventore ipsam quibusdam beatae obcaecati quos ab, eius dolores, 
                            consectetur temporibus, ex quisquam debitis illum perspiciatis deleniti veniam. 
                            Error aperiam veritatis ad vero tenetur reiciendis est, consequuntur nisi ex, 
                            ipsam obcaecati.Error aperiam veritatis ad vero tenetur reiciendis est, consequuntur nisi ex, 
                            ipsam obcaecati.Error aperiam veritatis ad vero tenetur reiciendis est, consequuntur nisi ex, 
                            ipsam obcaecati.<a id="zobacz_wiecej" href="#">Zobacz więcej...</a></p> 

                    </div>
                    <div class="ogloszenie_box">
                        <a href="#"><h4>mateooo3</h4></a>
                        <h4>Szukam taniej ładnej sprzątaczki. Przyjmę od zaraz :))</h4>
                        <h4 id="data">2014-12-18</h4>

                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                            Ea inventore ipsam quibusdam beatae obcaecati quos ab, eius dolores, 
                            consectetur temporibus, ex quisquam debitis illum perspiciatis deleniti veniam. 
                            Error aperiam veritatis ad vero tenetur reiciendis est, consequuntur nisi ex, 
                            ipsam obcaecati.Error aperiam veritatis ad vero tenetur reiciendis est, consequuntur nisi ex, 
                            ipsam obcaecati.Error aperiam veritatis ad vero tenetur reiciendis est, consequuntur nisi ex, 
                            ipsam obcaecati.<a id="zobacz_wiecej" href="#">Zobacz więcej...</a></p> 

                    </div>
                    <div class="ogloszenie_box">
                        <a href="#"><h4>płotka</h4></a>
                        <h4>Sprzedam akwarium z żywymi rybkami!</h4>
                        <h4 id="data">2014-12-18</h4>

                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                            Ea inventore ipsam quibusdam beatae obcaecati quos ab, eius dolores, 
                            consectetur temporibus, ex quisquam debitis illum perspiciatis deleniti veniam. 
                            Error aperiam veritatis ad vero tenetur reiciendis est, consequuntur nisi ex, 
                            ipsam obcaecati.Error aperiam veritatis ad vero tenetur reiciendis est, consequuntur nisi ex, 
                            ipsam obcaecati.Error aperiam veritatis ad vero tenetur reiciendis est, consequuntur nisi ex, 
                            ipsam obcaecati.<a id="zobacz_wiecej" href="#">Zobacz więcej...</a></p> 

                    </div>
                    <div class="ogloszenie_box">
                        <a href="#"><h4>nataliaHaH69</h4></a>
                        <h4>Zatrudnię kucharza który umie robić pieroga</h4>
                        <h4 id="data">2014-12-19</h4>

                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                            Ea inventore ipsam quibusdam beatae obcaecati quos ab, eius dolores, 
                            consectetur temporibus, ex quisquam debitis illum perspiciatis deleniti veniam. 
                            Error aperiam veritatis ad vero tenetur reiciendis est, consequuntur nisi ex, 
                            ipsam obcaecati.Error aperiam veritatis ad vero tenetur reiciendis est, consequuntur nisi ex, 
                            ipsam obcaecati.Error aperiam veritatis ad vero tenetur reiciendis est, consequuntur nisi ex, 
                            ipsam obcaecati.<a id="zobacz_wiecej" href="#">Zobacz więcej...</a></p> 

                    </div>
                    <div class="ogloszenie_box">
                        <a href="#"><h4>maciej3772</h4></a>
                        <h4>Zlece wykonanie prostej strony www</h4>
                        <h4 id="data">2014-12-19</h4>

                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                            Ea inventore ipsam quibusdam beatae obcaecati quos ab, eius dolores, 
                            consectetur temporibus, ex quisquam debitis illum perspiciatis deleniti veniam. 
                            Error aperiam veritatis ad vero tenetur reiciendis est, consequuntur nisi ex, 
                            ipsam obcaecati.Error aperiam veritatis ad vero tenetur reiciendis est, consequuntur nisi ex, 
                            ipsam obcaecati.Error aperiam veritatis ad vero tenetur reiciendis est, consequuntur nisi ex, 
                            ipsam obcaecati.<a id="zobacz_wiecej" href="#">Zobacz więcej...</a></p> 

                    </div>

                    <nav id="nav_numer">
                        <ul class="pagination">
                            <li><a href="#"><span aria-hidden="true">&laquo;</span><span class="sr-only">Previous</span></a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#"><span aria-hidden="true">&raquo;</span><span class="sr-only">Next</span></a></li>
                        </ul>
                    </nav>
                </div>

            </div>
        </div>
    </div>

    <div id="oddzielenie"></div>




    <div id="strzalka"><a href="#"><img src="img/strzalka.png" ></a></div>

    <div id="footer">
        <div id="footer_czarny">
            <div class="content_f">
                <div class="row">

                    <div class="col-md-4 foot">
                        <div id="srodek_f">
                            <h2>Co możemy powiedzieć o nas..</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt at odio, assumenda voluptas aperiam commodi aliquam laudantium nam placeat veritatis? </p>
                            <ul>
                                <li><a href="#">pierwsze cos</a></li>
                                <li><a href="#">jako tako</a></li>
                                <li><a href="#">ciężka praca</a></li>
                                <li><a href="#">sprzątaczka</a></li>
                                <li><a href="#">pani lekkich obyczajów</a></li>
                                <li><a href="#">no juz nie co</a></li>
                                <li><a href="#">sprzątaczka</a></li>
                                <li><a href="#">pani lekkich obyczajów</a></li>
                                <li><a href="#">no juz nie co</a></li>
                            </ul>

                            <h2>Dlaczego?</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, repudiandae.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt at odio, assumenda voluptas aperiam commodi aliquam laudantium nam placeat veritatis? </p>

                        </div>
                    </div>

                    <div class="col-md-4 foot">
                        <div id="srodek_f">
                            <h2>Informacje kontaktowe..</h2>
                            <p class="pKontakt"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span> 600-121-888</p>
                            <p class="pKontakt"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span> 14-88-92-182</p>
                            <p class="pKontakt"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> kontakt@ogloszenia.pl</p>
                            <p class="pKontakt"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> pomoc_techniczna@ogloszenia.pl</p>
                            <p class="pKontakt"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> pawel@ogloszenia.pl</p>


                            <form role="form">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Podaj twój e-mail</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="e-mail">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Zadaj szybkie pytanie</label>
                                    <textarea class="form-control" rows="3" placeholder="wpisz swoje pytanie.."></textarea>
                                </div>
                                <button type="submit" class="btn btn-default pytanie pull-right">Wyślij</button>
                            </form>

                        </div>
                    </div>

                    <div class="col-md-4 foot">
                        <div id="srodek_f">
                            <h2>Humor na dzisiaj ;)</h2>
                            <div class="embed-responsive embed-responsive-16by9">
                                <iframe class="embed-responsive-item" src="//www.youtube.com/embed/HQ9W7fGVU9Q"></iframe>
                            </div>
                            <h2>Dowcip dnia..</h2>
                            <p class="kawal">Idzie gówno z dupą ciemnym korytarzem, nagle gówno mówi:</p>
                            <p class="kawal">-Tyyy ciemno tu jak w dupe</p>
                            <p class="kawal">dupa sie wkurwiła i mówi:</p>
                            <p class="kawal">-Ja też gówno widze!</p>
                            <p class="kawal">hahahahahahahahahahahahah ;)</p>




                        </div>
                    </div>

                </div>
            </div>


        </div>

    </div>



    <script src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>

</body>
</html>
