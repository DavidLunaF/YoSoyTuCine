//variables globales
var jsonCines;
var $divInfo;




//Parametros que enviaremos al controlador
//asd

	
	  
	

$(document).ready(function() {
	
	//Aqui va la info que queremos pasar al servlet 
	var op=getUrlParameter('op');
	if(op!=undefined){
		
		if(getUrlParameter('idCine')!=undefined){
			var idCine=getUrlParameter('idCine');
			var idPeli=getUrlParameter("idPeli");
			var data = {
				    op: "cineSesion",
				    idCine:idCine,
				    idPeli:idPeli};
		}else{
			var idPeli=getUrlParameter("idPeli");
			var data = {
				    op: op,				    
				    idPeli:idPeli};
		}
		
	}
	
			//Llamada al servlet 
			$.ajax({
			    type: "POST",
			    url: "http://localhost:8080/YoSoyTuCine/PeliServlet",
			    contentType: "application/json", // NOT dataType!
			    data: JSON.stringify(data),
			    success: function(response){
			    	jsonCines=response;
					//Llamada al metodo que construye el cuerpo de los cines    
			    	buildCines(response);			    				    	
			    }});
			
			
			//Se añaden los eventos de todos los botones
			$( "#filtroAlfabetico").click(function() {
				//Funcion que tiene que pintar el div en orden alfabetico
				ordenAlfabetico(jsonCines);								  
			});
			$( "#filtroCiudad li").click(function() {
				//Funcion que tiene que pintar el div solo con los cines de esa ciudad
				ordenarCiudad($(this).attr('value'),jsonCines);
				
			});
			$( "#filtroEmpresa li").click(function() {
				//Funcion que tiene que pintar el div solo con los cines de esa ciudad
				ordenarEmpresa($(this).attr('value'),jsonCines);
				
			});
			$( "#filtroValoracion li").click(function() {
				//Funcion que tiene que pintar el div solo con los cines de esa ciudad	 
				ordenValoracion($(this).attr('value'),jsonCines);	
			});
			$( "#filtroPrecio li").click(function() {
				//Funcion que tiene que pintar el div solo con los cines de esa ciudad	 
				ordenPrecio($(this).attr('value'),jsonCines);	
			});
			
			//Funcion para redirig a otra pagina
			/*$('#divCines').on('click', '.itmCine', function(){
			    //alert($(this).attr("id"));
				location.href="cartelera.jsp?op=pelisCine&idCine="+$(this).attr("id");
				//$(document).load("index.jsp");
			});
			*/
			
});



//Funciones de los filtros
function ordenAlfabetico(cines){	
	//Funcion comparadora para comparar el json y ordenadorlo
	function compare(a,b) {
		  if (a.cine.nombre < b.cine.nombre)
		     return -1;
		  if (a.cine.nombre > b.cine.nombre)
		    return 1;
		  return 0;
	}
	var cinesOrdenados=cines.sort(compare);
	buildCines(cinesOrdenados);
}

function ordenarCiudad(ciudad,cines){
	var cinesOrdenados={};
	var i=0;
	$.each(cines, function(index, cin) {
		if(cin.cine.ciudad==ciudad){
			cinesOrdenados[i]=cin;
			i++;
		}
	});
	buildCines(cinesOrdenados);
}

function ordenarEmpresa(empresa,cines){	
	var cinesOrdenados={};
	var i=0;
	$.each(cines, function(index, cin) {
		if(cin.cine.idEmpresa==empresa){
			cinesOrdenados[i]=cin;
			i++;
		}
	});
	buildCines(cinesOrdenados);
}


function ordenValoracion(op,cines){
	
	function compareAsc(a,b) {
		  if (a.cine.valoracion < b.cine.valoracion)
		     return -1;
		  if (a.cine.valoracion > b.cine.valoracion)
		    return 1;
		  return 0;
	}
	function compareDesc(a,b) {
		  if (a.cine.valoracion > b.cine.valoracion)
		     return -1;
		  if (a.cine.valoracion < b.cine.valoracion)
		    return 1;
		  return 0;
	}
	//orden ascendente
	if(op==0){var cinesOrdenados=cines.sort(compareAsc);}
	//orden descendente	
	if(op==1){var cinesOrdenados=cines.sort(compareDesc);}
	
	buildCines(cinesOrdenados);
}
function ordenPrecio(op,cines){
	
	function compareAsc(a,b) {
		  if (a.cineSesion.precio < b.cineSesion.precio)
		     return -1;
		  if (a.cineSesion.precio > b.cineSesion.precio)
		    return 1;
		  return 0;
	}
	function compareDesc(a,b) {
		  if (a.cineSesion.precio > b.cineSesion.precio)
		     return -1;
		  if (a.cineSesion.precio < b.cineSesion.precio)
		    return 1;
		  return 0;
	}
	//orden ascendente
	if(op==0){var cinesOrdenados=cines.sort(compareAsc);}
	//orden descendente	
	if(op==1){var cinesOrdenados=cines.sort(compareDesc);}
	
	buildCines(cinesOrdenados);
}

function limpiarCines(){
	$("#divCines").empty();
}

//Construye la informacion del cine recibiendo un json de cines
function buildCines(cines){	
	$("#divCines").fadeOut(0).fadeIn(1000);
	//Limpiamos primero el div
	limpiarCines();
	var i=0; //Variable contador para contar el numero de divs y asignareles una id unica     
    //Creamos todos los div de las peliculas con sus campos 
	var idCine=0;
	$div= $('<div>', {
	    id: "cines"
	  
	});	
	$.each(cines, function(index, product) { //Se recorren todos los cines y se crean sus componenetes
		//Div que contiene toda la info del cine
		 
		//Si no hemos creado el div de ese vine se crea por primera vez
		if(idCine!=product.idcine){
			
			        
			 $divInfo= $('<div>', {
	    	    id: product.idcine,
	    	    class:'itmCine'
	    	});		
			//Img del cine
	    	var $img=$('<img>', {
	    	    	src:product.cine.logo //Hay que ver esto como esta en la base de datos
	    	    	});
	    	//nombre cine
	    	var $nombre=$('<p>',{
	    			text:product.cine.nombre,
	    			"style":"text-align: center;"
	    			});
	    	
	    	var $direccion=$('<p>',{//Direccion---ciudad-----codigo postal---
					text:"Direcciion: "+product.cine.direccion+",  "+product.cine.ciudad+",   "+product.cine.codigoPostal	
					});
	    	var $tel=$('<p>',{//telefono
					text:"Telefono: "+product.cine.telefono	
					});
	    	var $url=$('<a>',{//Url de la wen del cine
					text:product.cine.nombre,
					href:product.cine.url
					});
	    	var $valoracion=$('<p>',{//valoracion en numero float
					text:"Valoracion: "+product.cine.valoracion				
					});
	    	var $precio=$('<p>',{//valoracion en numero float
				text:"Precio de la entrada: "+product.cineSesion.precio+" $"				
				});
	    	var $sesiones=$('<p>',{
    			text:"Sesiones",
    			"style":"text-align: center;"
    			});
	    	var $hora=$('<span>',{//valoracion en numero float
				text:product.sesion.hora,
				"style":"padding-right: 10px;"
				});
	    	
	    	$divInfo.append($img);       
	    	$divInfo.append($nombre);
	    	$divInfo.append($direccion);
	    	$divInfo.append($tel);
	    	$divInfo.append($url);
	    	$divInfo.append($valoracion);
	    	$divInfo.append($precio);
	    	$divInfo.append($sesiones);
	    	$divInfo.append($hora);
	    	
	    	idCine=product.idcine;
	    	$divInfo.appendTo($("#divCines"));
		}else{
			var $horaa=$('<span>',{//valoracion en numero float
				text:product.sesion.hora,
				"style":"padding-right: 10px;"
				});
			$divInfo.append($horaa);
			idCine=product.idcine;
			$divInfo.appendTo($("#divCines"));
		}
		
    	
    	
    	//aqui se añaden cada elemento en orden al div
    	
    	//Una vez construido se añade el div del cine al cuerpo de la pagina
    	
    	i++; //como tenga que explicar esto es que no sabeis programar
    	
    	
    	
    });	
	
}
var getUrlParameter = function getUrlParameter(sParam) {
    var sPageURL = decodeURIComponent(window.location.search.substring(1)),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : sParameterName[1];
        }
    }
};
