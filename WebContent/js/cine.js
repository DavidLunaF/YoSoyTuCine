
//variables globales
var jsonCines;

$( "#rangeHorario" ).change(function() {
    $.ajax({url: "demo_test.txt", success: function(result){
        $("#div1").html(result);
    }});
});
$( "#estrellitas" ).change(function() {
    $.ajax({url: "demo_test.txt", success: function(result){
        $("#div1").html(result);
    }});
});
$( "#filtroEmpresas" ).change(function() {
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
//asdasdasd



$(document).ready(function() {        // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
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
			});



//Construye la informacion del cine recibiendo un json de cines
function buildCines(cines){	
	var i=0; //Variable contador para contar el numero de divs y asignareles una id unica     
    //Creamos todos los div de las peliculas con sus campos    
	$.each(cines, function(index, product) { //Se recorren todos los cines y se crean sus componenetes
		//Div que contiene toda la info del cine
		var $divInfo= $('<div>', {
    	    id: 'info'+i,
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
    	var $url=$('<p>',{//Url de la wen del cine
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
