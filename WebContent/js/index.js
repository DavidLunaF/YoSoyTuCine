$( "#botonCiudad" ).change(function() {
    $.ajax({url: "demo_test.txt", success: function(result){
        $("#div1").html(result);
    }});
});
$( "#botonPelicula" ).change(function() {
    $.ajax({url: "demo_test.txt", success: function(result){
        $("#div1").html(result);
    }});
});
$(document).ready(function() {
	//Aqui va la info que queremos pasar al servlet 
	var data = {
		    op: "allPelis"};
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
			
			//Se añaden los eventos de todos los botones
			$( "#filtroAlfabetico").click(function() {
				//Funcion que tiene que pintar el div en orden alfabetico
				ordenAlfabetico(jsonCartelera);								  
			});
			$( "#filtroCiudad li").click(function() {
				//Funcion que tiene que pintar el div solo con los cines de esa ciudad
				ordenarCiudad($(this).attr('value'),jsonCartelera);
				
			});
			$( "#filtroEmpresa li").click(function() {
				//Funcion que tiene que pintar el div solo con los cines de esa ciudad
				ordenarEmpresa($(this).attr('value'),jsonCartelera);
				
			});
			$( "#filtroValoracion li").click(function() {
				//Funcion que tiene que pintar el div solo con los cines de esa ciudad	 
				ordenValoracion($(this).attr('value'),jsonCartelera);	
			});
			$("#divCartelera").fadeIn(2000);
});		
function limpiarPelis(){
	$("#divCartelera").empty();
}

//Construye la informacion del cine recibiendo un json de peliculas
function buildPeliculas(pelis){	
	$("#divCarteleraIndex").fadeOut(0).fadeIn(1000);
	//Limpiamos primero el div
	limpiarPelis();
	var i=0; //Variable contador para contar el numero de divs y asignareles una id unica     
    //Creamos todos los div de las peliculas con sus campos    
	$.each(pelis, function(index, product) { //Se recorren todos los cines y se crean sus componenetes
		//Div que contiene toda la info del cine
		var $divPeli= $('<div>', {
    	    id: 'peli'+i,
    	    class:'col-md-3 pelisIndex'
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
//		    	$divPeli.append($genero);
//		    	//$divPeli.append($sinopsis);
//		    	$divPeli.append($director);
//		    	$divPeli.append($valoracion);
//		    	//$divPeli.append($cartel);
	    	
	    	//Una vez construido se añade el div del cine al cuerpo de la pagina
	    	$divPeli.appendTo($("#divCarteleraIndex"));         
	    	i++; //como tenga que explicar esto es que no sabeis programar  
		//});
    });	
	
}