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
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet"> 
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="css/cine.css" rel="stylesheet">
    <script src="js/cine.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
</head>

<body>





<!--ESTE ES EL MENU VA DE ARRIBA ABAJO OCUPANDO 2 COLUMNAS -->
 
   	<div class="col-xs-2 menu" >
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
   	<div class="col-xs-10">
           <div class="row header"> <!-- fila entera-->
                <div class="col-xs-5 yosoytucine"><!-- izquierda-->
                
                    <div class="cabeceraFoto"></div>
                
                </div>
                    <div class="col-xs-5  botonesLoginOavatarSiestaLogeado"><!-- derecha-->
                    
                        <div class="row">
                               <ul class="ds-btn ">
            
                                   <li class="botonesEntrar">
                                        <a class="botonLogin" href="login.jsp"><!-- icono log-->
                                     <i class="glyphicon glyphicon-user pull-left"></i><span>Login</span></a> 
                                       
                                   </li>
                                   <li  class="botonesEntrar">
                                        <a class="botonLogin" href="registro.jsp"><!-- icono reg-->
                                     <i class="glyphicon glyphicon-user pull-left"></i><span>Sign up</span></a> 
                                       
                                   </li>
                                </ul>
                        </div>
                    </div>
                    
        </div>
            
       </div>


        <!-- ESTE ES EL ROW DE Los filtros-->
	 <div class="col-md-10 col-xs-12">
        <div class="row filtros">
    
            <div class="demo">
    			
    		
                <ul class="nav nav-pills">
                                                          

                    <li role="presentation" class="dropdown" id="filtroAlfabetico">
                        <a href="#" class="button" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" value="alfabetico">
                            Orden alfabetico   
                        </a>                        
                    </li>
                     <li role="presentation" class="dropdown" id="filtroCiudad">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            Ciudad
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" id="valoracion">
                            <li value="Madrid">
                                <a href="#">Madrid</a>
                            </li>
                            <li value="Valencia">
                                <a href="#">Valencia</a>
                            </li>
                             <li value="Barcelona">
                                <a href="#">Barcelona</a>
                            </li>
                        </ul>
                    </li>
                     <li role="presentation" class="dropdown" id="filtroEmpresa">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            Empresa
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" id="valoracion">
                            <li value="1">
                                <a href="#">Cinesa</a>
                            </li>
                            <li value="3">
                                <a href="#">Kinepolis</a>
                            </li>
                             <li value="2">
                                <a href="#">Yelmo</a>
                            </li>
                        </ul>
                    </li>
                    <li role="presentation" class="dropdown" id="filtroValoracion">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            Valoracion
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" id="valoracion">
                            <li value="0">
                                <a href="#">Ascendente</a>
                            </li>
                            <li value="1">
                                <a href="#">Descendente</a>
                            </li>
                           
                        </ul>
                    </li>
                   </ul>   
                  
                
    
    
                
    
    
            </div>
    
        </div>
    </div>
	





<!-- ESTE ES EL CONTENT-->


<!-- falta ponerle ids a muchos div tendran que ser id dinamicos-->

<!-- al haber hecho la division del grid 2-10 hay un problema para mostrar 3 pelis
ya que he divido 10 / 3 osea el col de 10 en cols de 3 no se...No zoy cientifico-->


 
    <div class="col-xs-10 cines" id="divCines" > <!-- Hasta el final es una col de 10 dividido en rows/filas de 5-->
    
    </div>
           
   
</body>

</html>