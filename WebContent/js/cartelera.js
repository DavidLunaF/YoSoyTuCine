//variables globales
var jsonCartelera;

$( "#filtroAlfabetico").children().click(function() {
    alert( "Handler for .click() called." );
});

$( "#eligeGenero" ).change(function() {
    $.ajax({url: "demo_test.txt", success: function(result){
        $("#div1").html(result);
    }});
});
$( "#eligeEdad" ).change(function() {
    $.ajax({url: "demo_test.txt", success: function(result){
        $("#div1").html(result);
    }});
});
$( "#valoracion" ).change(function() {
    $.ajax({url: "demo_test.txt", success: function(result){
        $("#div1").html(result);
    }});
});

$(document).ready(function() {
	//Aqui va la info que queremos pasar al servlet
	var op=getUrlParameter('op');
	if(op!=undefined){
		var idCine=getUrlParameter("idCine");
		var data = {
			    op: op,
			    idCine:idCine};
	}else{
		var data = {
			    op: "allPelis"};
	}
	
	
			//Llamada al servlet 
			$.ajax({
			    type: "POST",
			    url: "http://localhost:8080/YoSoyTuCine/CarteleraServlet",
			    contentType: "application/json", // NOT dataType!
			    data: JSON.stringify(data),
			    success: function(response){
			    	jsonCartelera=response;
					//Llamada al metodo que construye el cuerpo de los cines    
			    	buildPeliculas(response);			    				    	
			    }});
			
			$('#divCartelera').on('click', '.itmCine', function(){
			    //alert($(this).attr("id"));
				if(getUrlParameter('idCine')!=undefined){
					location.href="peli.jsp?op=allCines&idPeli="+$(this).attr("id")+"&idCine="+getUrlParameter('idCine');
				}else{
					location.href="peli.jsp?op=allCines&idPeli="+$(this).attr("id");
				}
				
				
				
			});
			
			//Se añaden los eventos de todos los botones
			$( "#filtroAlfabetico").click(function() {
				//Funcion que tiene que pintar el div en orden alfabetico
				ordenAlfabetico(jsonCartelera);								  
			});
			$( "#filtroGenero li").click(function() {
				//Funcion que tiene que pintar el div solo con los cines de esa ciudad
				ordenarGenero($(this).attr('value'),jsonCartelera);
				
			});
			$( "#filtroValoracion li").click(function() {
				//Funcion que tiene que pintar el div solo con los cines de esa ciudad	 
				ordenValoracion($(this).attr('value'),jsonCartelera);	
			});
			$("#divCartelera").fadeIn(2000);
});	
//Funciones de los filtros
function ordenAlfabetico(pelis){	
	//Funcion comparadora para comparar el json y ordenadorlo
	function compare(a,b) {
		  if (a.nombre < b.nombre)
		     return -1;
		  if (a.nombre > b.nombre)
		    return 1;
		  return 0;
	}
	var pelisOrdenadas=pelis.sort(compare);
	buildPeliculas(pelisOrdenadas);
}

function ordenarGenero(genero,pelis){
	var pelisOrdenadas={};
	var i=0;

	$.each(pelis, function(index, peli) {
		
		if(peli.genero==genero){
			pelisOrdenadas[i]=peli;
			i++;
		}
	});
	buildPeliculas(pelisOrdenadas);
}

function ordenValoracion(op,pelis){
	
	function compareAsc(a,b) {
		  if (a.valoracion < b.valoracion)
		     return -1;
		  if (a.valoracion > b.valoracion)
		    return 1;
		  return 0;
	}
	function compareDesc(a,b) {
		  if (a.valoracion > b.valoracion)
		     return -1;
		  if (a.valoracion < b.valoracion)
		    return 1;
		  return 0;
	}
	//orden ascendente
	if(op==0){var pelisOrdenadas=pelis.sort(compareAsc);}
	//orden descendente	
	if(op==1){var pelisOrdenadas=pelis.sort(compareDesc);}
	
	buildPeliculas(pelisOrdenadas);
}



function limpiarPelis(){
	$("#divCartelera").empty();
}

//Construye la informacion del cine recibiendo un json de peliculas
function buildPeliculas(pelis){	
	$("#divCartelera").fadeOut(0).fadeIn(1000);
	//Limpiamos primero el div
	limpiarPelis();
	var i=0; //Variable contador para contar el numero de divs y asignareles una id unica     
    //Creamos todos los div de las peliculas con sus campos    
	$.each(pelis, function(index, product) { //Se recorren todos los cines y se crean sus componenetes
		//Div que contiene toda la info del cine
		var $divPeli= $('<div>', {
    	    id:product.idPelicula,
    	    class:'itmCine'
    	});		
		
			//Img del cine
		    	var $img=$('<img>', {
		    	    	src:product.cartel //Hay que ver esto como esta en la base de datos
		    	    	});    	
		    	var $nombre=$('<p>',{
		    			text:product.nombre		
		    			});
		    	var $genero=$('<p>',{//Direccion---ciudad-----codigo postal---
		    			text:product.genero
						});
		    	var $duracion=$('<p>',{//telefono
					text:"Duración: "+product.duracion	
				});
		    	var $edad=$('<p>',{//telefono
					text:"Edad: "+product.edadRecomendada	
					});
		    	var $sinopsis=$('<p>',{//telefono
						text:product.sinopsis	
						});
		    	var $director=$('<p>',{//Url de la wen del cine
						text:"Director: "+product.director
						});
		    	var $valoracion=$('<p>',{//valoracion en numero float
						text:"Valoración: "+product.valoracion				
						});
		    	var $cartel=$('<p>',{//valoracion en numero float
					text:product.cartel				
					});
	    	//aqui se añaden cada elemento en orden al div
		    	$divPeli.append($img);       
		    	$divPeli.append($nombre);
		    	$divPeli.append($genero);
		    	//$divPeli.append($sinopsis);
		    	$divPeli.append($director);
		    	$divPeli.append($valoracion);
		    	//$divPeli.append($cartel);
	    	
	    	//Una vez construido se añade el div del cine al cuerpo de la pagina
	    	$divPeli.appendTo($("#divCartelera"));         
	    	i++; //como tenga que explicar esto es que no sabeis programar  
		//});
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
