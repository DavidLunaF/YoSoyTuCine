<!--INFO

-si alguien pone ids que recuerde que son unicas y que en casos como
el de las peliculas tendrian que ser posibles sere generadas su ids con un for



-las clases de bootstrap estan respetadas pero aÃ±adiendo una clase nueva a continuacion
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
    <link href="css/about.css" rel="stylesheet">
   

   
</head>

<body>


<!--ESTE ES EL MENU VA DE ARRIBA ABAJO OCUPANDO 2 COLUMNAS -->
 
   	<div class="col-lg-2 col-xs-12 menu" >
        <a href="index.html"><div class="logo"></div></a>
        
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
   <div class="col-xs-2"><script src="//platform.linkedin.com/in.js" type="text/javascript"></script>
<script type="IN/MemberProfile" data-id="https://www.linkedin.com/in/davidlunafernandez" data-format="inline" data-related="false"></script><script src="//platform.linkedin.com/in.js" type="text/javascript"></script>
<script type="IN/MemberProfile" data-id="https://www.linkedin.com/in/sergio-cobos-garcia" data-format="inline" data-related="false"></script>
<script src="//platform.linkedin.com/in.js" type="text/javascript"></script>
<script type="IN/MemberProfile" data-id="https://www.linkedin.com/in/yura-turlay-3145a794" data-format="inline" data-related="false"></script>
   </div>             
        
        <div class="botonesEntrar col-xs-8">YoSoyTuCine es un buscador/comparador de cines, no de películas.
Entender esta idea es básica para comprender el proyecto que abordamos ya que comparadores y buscadores de películas hay muchos e imposible de competir con ellos debido a su gran comunidad de usuarios, véase FilmAffinity.
La idea del proyecto es poder tener en simple vistazo, gracias a la geolocalización, tu cine más cercano.
Por ejemplo, Google, a fecha de entrega de este proyecto, si buscas una película, la información que te propone son las sesiones y cines disponibles, pero no tu cine más cercano.
 

La idea de YoSoyTuCine es además ordenar las películas primeramente por cercanía a tu ubicación en todo momento, y con posibilidad a hacerlo en base a las valoraciones dadas a los cines por la comunidad de usuarios de YoSoyTuCine.

Otro punto a destacar de YoSoyTuCine es que evidentemente al no poder competir con buscadores omnipotente como Google, intentamos ofrecer la información buscada por el usuario en un menor número de clic, esa es la ventaja que proponemos, ya que simplemente al entrar en la web, serás preguntado por tu ubicación, tendrás ante tus ojos lo carteles de las películas en cartelera actualmente y simplemente pinchando en el cartel tendrás todos los cines a tu alrededor ordenados por distancia y la información de las sesiones, cines y película en la que acabas de hacer clic.
   </div> 
     
         
       </div>





<!-- ESTE ES EL CONTENT-->


<!-- falta ponerle ids a muchos div tendran que ser id dinamicos-->

<!-- al haber hecho la division del grid 2-10 hay un problema para mostrar 3 pelis
ya que he divido 10 / 3 osea el col de 10 en cols de 3 no se...No zoy cientifico-->



</body>

</html>