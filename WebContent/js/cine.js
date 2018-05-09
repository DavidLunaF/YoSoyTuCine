<<<<<<< HEAD
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
=======
$(document).on("click", "#cine",function() {        // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
		    $.get("http://localhost:8080/YoSoyTuCine/CineServlet", function(responseJson) {          // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
		       	var cont=0;
		       	var contFilas=1;
		       	var nombreIdDivPelicula=[];
		       	var filas=[];
		       	var pelis=[];
		    	var $divGeneral = $("<div class=\"col-lg-10 col-xs-12\" >").appendTo($("#divPelis")); 	
		    	
		        //Construir div de las filas en funcion del numero de elementos recuperado
		        //la fila 0 se crea siempre
		        filas[0] = $("<div id=\"fila0\">").appendTo($divGeneral);
		        nombreIdDivPelicula[0]="fila0";
		        for(i=1;i<=responseJson.length;i++){
		        	aler(responseJson.length);
		        	if(i%5==0){
		        		filas[i]=$("<div class='row primeraFilaDePelis' id=\"fila"+contFilas+"\">"); //Se añade el nombre del id del div de pelicula
		        		//se añade al div general la fila
		        		filas[i].appendTo($divGeneral);
		        		
		        		contFilas++;
		           	}
		        }
		        
		        //Creamos todos los div de las peliculas con sus campos
		        var i=0;
		    	$.each(responseJson, function(index, product) {    // Iterate over the JSON array.
		        	pelis[i]=$('<div>', {
		        	    	html : 'Un <strong>nuevo</strong> enlace',
		        	    	'class' : 'col-lg-2 col-xs-12 pelicula',
		        	   		 id : 'pelicula'+i
		        	});
		    	
		            
		            //Se añade el div general de la peli a la fila
		            $("<div class=\"col-lg-2 col-xs-12 pelicula\">").appendTo($("#fila"+cont))
		            .append($("<div class\"DivPelicula\" id='"+product.nombrePeli+"'>")); 
		            //A este se le añade un div con un id del nombre de la peli  
		            	
		            $("<div class=\"fotoPelicula\">").appendTo($("#"+product.nombrePeli)).append($("<a href='peli.jsp'>"))
		            .append($("<img class='img-responsive' src='"+product.urlImagen+"'"));
		          
		        	$i++;
		        	
		              
		        });
		    });
			
			});
>>>>>>> f51357ef3efdb9f6b77853937e99db7a53f73f30
