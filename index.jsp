<!--INFO

-si alguien pone ids que recuerde que son unicas y que en casos como
el de las peliculas tendrian que ser posibles sere generadas su ids con un for



-las clases de bootstrap estan respetadas pero añadiendo una clase nueva a continuacion
para poder gestionarla desde ahi sintocar el bootstrap por lo que vi en el ej
de la plantilla bootstrap el pavito tb lo hace asi osea que se puede hacer

ej: <div class="col-md-4 menu">
-->


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>YSTC - www.YoSoyTuCine.com</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet"> 
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <script src="js/geolocalizacion.js"></script>

   
</head>

<body onload="getLocation()">



<!--este p es de prueba y es para pintar los datos de geo, genera un pekeño espacio al inicio de a web pero si quitamos el p desaparece -->

<p id="demo"></p>
<!-- ESTE ES EL SCRIPT DE GEO Y SE IRA A SU JS CUANDO DEBA-->

<script>
    var x = document.getElementById("demo");

    function getLocation() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(showPosition);
        } else {
            x.innerHTML = "Geolocation is not supported by this browser.";
        }
    }

    function showPosition(position) {
        x.innerHTML = "Latitude: " + position.coords.latitude +
            "<br>Longitude: " + position.coords.longitude;
    }
</script>


<!--ESTE ES EL MENU VA DE ARRIBA ABAJO OCUPANDO 2 COLUMNAS -->
 
   	<div class="col-lg-2 col-xs-12 menu" >
        <a href="index.jsp"><div class="logo"></div></a>
        
        <ul class="seccionesMenu">
            <li class="seccion">
                <a href="index.jsp">Inicio</a>
            </li>
            <li class="seccion">
                <a href="cartelera.jsp">Cartelera</a>
            </li>
            <li class="seccion">
                <a href="cine.jsp">Cine</a>
            </li>
            <li class="seccion">
                <a href="social.jsp">Social</a>
            </li>
            <li class="seccion">
                <a href="about.jsp">About</a>
            </li>
        </ul>
        <ul class="social-media-list">
                <li class="iconoSocial"><a href="https://twitter.com/mark_heath"><img src="./img/twitterIcon.svg" alt="Twitter" title="Twitter"></a></li>
                <li class="iconoSocial"><a href="https://www.pluralsight.com/author/mark-heath"><img src="./img/facebookIcon.svg" alt="Facebook" title="Facebook"></a></a></li>
                <li class="iconoSocial"><a href="https://www.youtube.com/channel/UChV2-HyJ9XzsKLQRztd7Pmw"><img src="./img/instagramIcon.svg" alt="Instagram" title="Instagram"></a></li>
        </ul>
            
  	
       </div>
       
        <!-- ESTE ES EL HEADER DE ARRIBA DONDE VAN EL NOMBRE COMPLETO Y EL LOGIN O EL AVATAR-->
   	<div class="col-md-10">
           <div class="row header"> <!-- fila entera-->
                <div class="col-md-5 col-xs-12 yosoytucine"><!-- izquierda-->
                
                    <div class="cabeceraFoto"></div>
                
                </div>
                    <div class="col-md-5 col-xs-6 botonesLoginOavatarSiestaLogeado"><!-- derecha-->
                    
                        <div class="row">
                            <ul class="ds-btn ">
                            
                                <li class="botonesEntrar">
                                    <a class="botonLogin" href="login.jsp">
                                        <!-- icono log-->
                                        <i class="glyphicon glyphicon-user pull-left"></i>
                                        <span>Login</span>
                                    </a>
                            
                                </li>
                                <li class="botonesEntrar">
                                    <a class="botonLogin" href="registro.jsp">
                                        <!-- icono reg-->
                                        <i class="glyphicon glyphicon-user pull-left"></i>
                                        <span>Sign up</span>
                                    </a>
                            
                                </li>
                            </ul>
                        </div>
                    </div>
                    
        </div>
            
       </div>
<!-- ESTE ES EL ROW DE LAS 2 BARRAS DE BUSQUEDA-->
        <div class="col-md-10 col-xs-12">
            <div class="row rowbuscadores">
            <div class="col-md-3">
                <form id="mega-search" class="buscador">
                    <div class="input-group"><!-- ESTA CLASE de bootstrap AGRUPA EL BOTON Y EL INPUT TEXT-->
        <!--id -->      <input type="text" id="buscaCiudad" class="form-control" placeholder="Ciudad"><!--La clase form control de bootstrap hace que se vea como un buscador y no una caja de texto sucia-->
                        <span class="input-group-btn">
             <!--onclick -->    <button class="btn btn-default" type="button">
                                <i class="glyphicon glyphicon-search"></i><!--No sale el icono, abra que agregar el gliphycon-->
                            </button>
                        </span>
                  </div>  
                </form>
        
        
            </div>
            <div class="col-md-3">
                <form id="mega-search" class="buscador">
                    <div class="input-group">
                        <input type="text" id="buscaPeli" class="form-control" placeholder="Pelicula">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">
                                <i class="glyphicon glyphicon-search"></i>
                            </button>
                        </span>
                    </div>
                </form>
        
        
            </div>
        </div>
        </div>




<!-- ESTE ES EL CONTENT-->


<!-- falta ponerle ids a muchos div tendran que ser id dinamicos-->

<!-- al haber hecho la division del grid 2-10 hay un problema para mostrar 3 pelis
ya que he divido 10 / 3 osea el col de 10 en cols de 3 no se...No zoy cientifico-->



            <div class="col-lg-10 col-xs-12"> <!-- Hasta el final es una col de 10 dividido en rows/filas de 5-->
                <div class="row primeraFilaDePelis">
                 <div class="col-lg-2 col-xs-12 pelicula"> <!--peli-->
                    <div class="DivPelicula">
                        <div class="fotoPelicula">
                        <a href="peli.jsp">
                            <img class="img-responsive" src="https://www.cinesa.es/Manager/Peliculas/elpasajero/cartelera.jpg">
                        </a>
                         </div>
                        <div class="divCalificacionNotaMediaYtwitter">
                             <div id="infoHoverSinLogearse1">

                             </div>
                             <div id="infoHoverLogeado1">

                             </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-xs-12 pelicula"> <!--peli-->
                    <div class="DivPelicula">
                        <div class="fotoPelicula">
                    <a href="peli.jsp">
                        <img class="img-responsive" src="https://www.cinesa.es/Manager/Peliculas/elpasajero/cartelera.jpg">
                    </a>
                         </div>
                        <div class="divCalificacionNotaMediaYtwitter">
                             <div id="infoHoverSinLogearse1">

                             </div>
                             <div id="infoHoverLogeado1">

                             </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-xs-12 pelicula">
                    <!--peli-->
                    <div class="DivPelicula">
                        <div class="fotoPelicula">
                            <a href="peli.jsp">
                                <img class="img-responsive" src="https://www.cinesa.es/Manager/Peliculas/callmebyyourname/cartelera.jpg">
                            </a>
                        </div>
                        <div class="divCalificacionNotaMediaYtwitter">
                            <div id="infoHoverSinLogearse2">
                
                            </div>
                            <div id="infoHoverLogeado2">
                
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-2 col-xs-12 pelicula">
                    <!--peli-->
                    <div class="DivPelicula">
                        <div class="fotoPelicula">
                            <a href="peli.jsp">
                             <img class="img-responsive" src="https://www.cinesa.es/Manager/Peliculas/elcorredordellaberintolacuramortal/cartelera.jpg">
                            </a>
                        </div>
                        <div class="divCalificacionNotaMediaYtwitter">
                            <div id="infoHoverSinLogearse3">
                
                            </div>
                            <div id="infoHoverLogeado3">
                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-xs-12 pelicula">
                        <!--peli-->
                        <div class="DivPelicula">
                            <div class="fotoPelicula">
                                <a href="peli.jsp">
                                    <img class="img-responsive" src="https://www.cinesa.es/Manager/Peliculas/elcorredordellaberintolacuramortal/cartelera.jpg">
                                </a>
                            </div>
                            <div class="divCalificacionNotaMediaYtwitter">
                                <div id="infoHoverSinLogearse3">
                    
                                </div>
                                <div id="infoHoverLogeado3">
                    
                                </div>
                            </div>
                        </div>
                    </div>
              </div>

                <div class="row segundaFilaDePelis"><!--segunda fila loco-->
            
               
            
                        <div class="col-lg-2 col-xs-12 pelicula"> <!--peli-->
                            <div class="DivPelicula">
                                <div class="fotoPelicula">
                                <a href="peli.jsp">
                                    <img class="img-responsive" src="https://www.cinesa.es/Manager/Peliculas/elpasajero/cartelera.jpg">
                                </a>
                                 </div>
                                <div class="divCalificacionNotaMediaYtwitter">
                                     <div id="infoHoverSinLogearse1">
        
                                     </div>
                                     <div id="infoHoverLogeado1">
        
                                     </div>
                                </div>
                            </div>
                        </div>
        
                        <div class="col-lg-2 pelicula">
                            <!--peli-->
                            <div class="DivPelicula">
                                <div class="fotoPelicula">
                                    <a href="peli.jsp">
                                        <img class="img-responsive" src="https://www.cinesa.es/Manager/Peliculas/callmebyyourname/cartelera.jpg">
                                    </a>
                                </div>
                                <div class="divCalificacionNotaMediaYtwitter">
                                    <div id="infoHoverSinLogearse2">
                        
                                    </div>
                                    <div id="infoHoverLogeado2">
                        
                                    </div>
                                </div>
                            </div>
                        </div>
        
                        <div class="col-lg-2 pelicula">
                            <!--peli-->
                            <div class="DivPelicula">
                                <div class="fotoPelicula">
                                    <a href="peli.jsp">
                                        <img class="img-responsive" src="https://www.cinesa.es/Manager/Peliculas/elcorredordellaberintolacuramortal/cartelera.jpg">
                                    </a>
                                </div>
                                <div class="divCalificacionNotaMediaYtwitter">
                                    <div id="infoHoverSinLogearse3">
                        
                                    </div>
                                    <div id="infoHoverLogeado3">
                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 pelicula">
                                <!--peli-->
                                <div class="DivPelicula">
                                    <div class="fotoPelicula">
                                    <a href="peli.jsp">
                                        <img class="img-responsive" src="https://www.cinesa.es/Manager/Peliculas/elcorredordellaberintolacuramortal/cartelera.jpg">
                                    </a>
                                    </div>
                                    <div class="divCalificacionNotaMediaYtwitter">
                                        <div id="infoHoverSinLogearse3">
                            
                                        </div>
                                        <div id="infoHoverLogeado3">
                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2 pelicula">
                                <!--peli-->
                                <div class="DivPelicula">
                                    <div class="fotoPelicula">
                                        <a href="peli.jsp">
                                            <img class="img-responsive" src="https://www.cinesa.es/Manager/Peliculas/elcorredordellaberintolacuramortal/cartelera.jpg">
                                        </a>
                                    </div>
                                    <div class="divCalificacionNotaMediaYtwitter">
                                        <div id="infoHoverSinLogearse3">
                            
                                        </div>
                                        <div id="infoHoverLogeado3">
                            
                                        </div>
                                    </div>
                                </div>
                            </div>

            </div>
    </div>
           
  
   

   
</body>

</html>