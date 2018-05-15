
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
var params = {
	    op: "allCines"	    
	};

debugger;
$(document).ready(function() {        // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
	debugger;
	var data = {
		    op: "allCines",
		    bar: "barValue",
		    baz: "bazValue"
		};

			$.ajax({
			    type: "POST",
			    url: "http://localhost:8080/YoSoyTuCine/CineServlet",
			    contentType: "application/json", // NOT dataType!
			    data: JSON.stringify(data),
			    success: function(response){
			    	debugger;
			    	alert(response);
			    	
			    }});	
	
	
		    
			
			});


