
//variables globales
var jsonCines;

$( "#filtroAlfabetico").children().click(function() {
	  alert( "Handler for .click() called." );
});

$( ".stars" ).click(function() {

	$( "#myselect option:selected" );
    $.ajax({url: "demo_test.txt", success: function(result){
        $("#div1").html(result);
    }});
});
$( "#filtroEmpresas" ).click(function() {
	
    $.ajax({url: "demo_test.txt", success: function(result){
        $("#div1").html(result);
    }});
});
$( "#ordenarPor" ).change(function() {
    $.ajax({url: "demo_test.txt", success: function(result){
        $("#div1").html(result);
    }});
});
$( "#rangeHorario" ).change(function() {
    $.ajax({url: "demo_test.txt", success: function(result){
        $("#div1").html(result);
    }});
});

//Parametros que enviaremos al controlador
//asd

	
	  
	

$(document).ready(function() {
	
	//Aqui va la info que queremos pasar al servlet 
	var data = {
		    op: "allCines"};
			//Llamada al servlet 
			$.ajax({
			    type: "POST",
			    url: "http://localhost:8080/YoSoyTuCine/CineServlet",
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
			
			//Funcion para redirig a otra pagina
			$('#divCines').on('click', '.itmCine', function(){
			    //alert($(this).attr("id"));
				location.href="cartelera.jsp?op=pelisCine&idCine="+$(this).attr("id");
				//$(document).load("index.jsp");
			});
			
			$("#divCines").fadeIn(2000);
});

$(".itmCine").off('click').on("click", function(){
	alert(cine);
});

//Funciones de los filtros
function ordenAlfabetico(cines){	
	//Funcion comparadora para comparar el json y ordenadorlo
	function compare(a,b) {
		  if (a.nombre < b.nombre)
		     return -1;
		  if (a.nombre > b.nombre)
		    return 1;
		  return 0;
	}
	var cinesOrdenados=cines.sort(compare);
	buildCines(cinesOrdenados);
}

function ordenarCiudad(ciudad,cines){
	var cinesOrdenados={};
	var i=0;
	$.each(cines, function(index, cine) {
		if(cine.ciudad==ciudad){
			cinesOrdenados[i]=cine;
			i++;
		}
	});
	buildCines(cinesOrdenados);
}

function ordenarEmpresa(empresa,cines){	
	var cinesOrdenados={};
	var i=0;
	$.each(cines, function(index, cine) {
		if(cine.idEmpresa==empresa){
			cinesOrdenados[i]=cine;
			i++;
		}
	});
	buildCines(cinesOrdenados);
}


function ordenValoracion(op,cines){
	
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
	$.each(cines, function(index, product) { //Se recorren todos los cines y se crean sus componenetes
		//Div que contiene toda la info del cine
		var $divInfo= $('<div>', {
    	    id: product.idCine,
    	    class:'itmCine'
    	});		
		//Img del cine
    	var $img=$('<img>', {
    	    	src:product.logo //Hay que ver esto como esta en la base de datos
    	    	});    	
    	var $nombre=$('<p>',{
    			text:product.nombre		
    			});
    	var $direccion=$('<p>',{//Direccion---ciudad-----codigo postal---
				text:product.direccion+"   "+product.ciudad+"   "+product.codigoPostal	
				});
    	var $tel=$('<p>',{//telefono
				text:product.telefono	
				});
    	var $url=$('<a>',{//Url de la wen del cine
				text:product.nombre,
				href:product.url
				});
    	var $valoracion=$('<p>',{//valoracion en numero float
				text:product.valoracion				
				});
    	//aqui se añaden cada elemento en orden al div
    	$divInfo.append($img);       
    	$divInfo.append($nombre);
    	$divInfo.append($direccion);
    	$divInfo.append($tel);
    	$divInfo.append($url);
    	$divInfo.append($valoracion);
    	//Una vez construido se añade el div del cine al cuerpo de la pagina
    	$divInfo.appendTo($("#divCines"));         
    	i++; //como tenga que explicar esto es que no sabeis programar
    	
    	
    	
    });	
	
}
