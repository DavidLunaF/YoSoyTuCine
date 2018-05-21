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