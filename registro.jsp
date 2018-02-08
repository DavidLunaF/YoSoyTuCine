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
    <link href="css/registro.css" rel="stylesheet">
   

   
</head>

<body>


<!--ESTE ES EL MENU VA DE ARRIBA ABAJO OCUPANDO 2 COLUMNAS -->
 
   	<div class="col-lg-2 col-xs-12 menu" >
        <a href="index.jsp"><div class="logo"></div></a>
        
        <ul class="seccionesMenu">
            <li class="seccion"><a href="index.jsp">Inicio</a></li>
            <li class="seccion"><a href="cartelera.jsp">Cartelera</a></li>
            <li class="seccion"><a href="cine.jsp">Cine</a></li>
            <li class="seccion"><a href="social.jsp">Social</a></li>
            <li class="seccion"><a href="about.jsp">About</a></li>
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





<!-- ESTE ES EL CONTENT-->


<!-- falta ponerle ids a muchos div tendran que ser id dinamicos-->

<!-- al haber hecho la division del grid 2-10 hay un problema para mostrar 3 pelis
ya que he divido 10 / 3 osea el col de 10 en cols de 3 no se...No zoy cientifico-->
<div class="elRegistro col-md-10">
        <div class="row cajitaRegistro">
            <div class="col col-md-5">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">
                            Crea tu cuenta
                        </h4>
                    </div>
                    <div class="modal-body">
                        <form novalidate="novalidate" id="formSignUp">
                            <div id="errorSignUp">

                            </div>
                <div class="form-group">
                    <label class="control-label" for="text">Nombre</label>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-user"></span>
                        </span>
                        <input class="form-control" placeholder="Yurita del Amor" name="emailSignUp" id="emailSignUp" type="email"> 
                    </div>
                </div>
                            <div class="form-group">
                                <label class="control-label" for="email">Email</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-envelope"></span>
                                    </span>
                                    <input class="form-control" placeholder="email@ejemplo.com" name="emailSignUp" id="emailSignUp" type="email">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label" for="password">Password</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-lock"></span>
                                    </span>
                                    <input class="form-control" placeholder="password" name="passwordSignUp" id="passwordSignUp" type="password">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label" for="password">Confirma password</label>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-lock"></span>
                                    </span>
                                    <input class="form-control" placeholder="confirma password" name="passwordConfirmSignUp" id="passwordConfirmSignUp" type="password">
                                </div>
                            </div>

                        <!-- 
                            CHECKBOX DE TERMINOS DE CONDICIONES NO NOS INTERESA   
                            <div class="checkbox">
                                <label>
                                    <input id="term" type="checkbox"> I have read and accepted
                                    <a target="_blank" href="#">the terms and conditions of use.</a>
                                </label>
                            </div> -->

                            <button type="submit" id="btnSignUp" class="botonLogin" style="width: 157px;">Crear cuenta</button>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <small>¿Ya tienes cuenta?
                            <a class="alreadySignUp" href="login.jsp">Pincha aqui</a>
                        </small>
                    </div>
                </div>
            </div>
        </div>
  
</div>
  
   

   
</body>

</html>