
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
 <script type="text/javascript">
 	jQuery(document).ready(function() {        // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    $.get("../src/Controladores/ServletGeneral.java", function(responseJson) {          // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
        var $table = $("<table>").appendTo($("#miDiv")); 	 // Create HTML <table> element and append it to HTML DOM element with ID "somediv".
        $.each(responseJson, function(index, product) {    // Iterate over the JSON array.
            $("<tr>").appendTo($table)                     // Create HTML <tr> element, set its text content with currently iterated item and append it to the <table>.
                .append($("<td>").text(product.idCine));        // Create HTML <td> element, set its text content with id of currently iterated product and append it to the <tr>.
                      // Create HTML <td> element, set its text content with name of currently iterated product and append it to the <tr>.
                    // Create HTML <td> element, set its text content with price of currently iterated product and append it to the <tr>.
        });
    });
	alert("asd");
	});

</script>
</head>
<body>
   



<button id="somebutton" class="somebutton">Dale</button>
<div id="miDiv">
</div>
</body>
</html>