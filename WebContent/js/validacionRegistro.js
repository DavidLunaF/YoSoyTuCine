function validaNombre() {
    var nombre = document.getElementById("campoNombre")

    var resultadoNombre = document.getElementById("resultadoNombre")

    let nombreOK = false;

    if (/^([A-ZÁÉÍÓÚ]*[a-zñáéíóú]+[\s]*){3,15}$/.test(nombre.value)) {
        nombre.style.backgroundColor = "green";
        nombre.style.color = "white";
        resultadoNombre.innerHTML = "";

        nombreOK = true;
    } else {
        nombre.style.backgroundColor = "#d63031";
        resultadoNombre.innerHTML = "Utiliza un nombre real";

    }
}

function validaEmail() {
    var email = document.getElementById("campoEmail")
    var resultadoEmail = document.getElementById("resultadoEmail")

    let emailOK = false;

    if (/^\w+([-+.\']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test(email.value)) {
        email.style.backgroundColor = "green";
        email.style.color = "white";
        resultadoEmail.innerHTML = "";
        emailOK = true;

    } else {
        email.style.backgroundColor = "#d63031";
        resultadoEmail.innerHTML = "Utiliza un email correcto";

    }
}

function validaPassword() {
    var pass = document.getElementById("campoPassword")
    let passOK = false;
    var textMal = "La contraseña tiene que tener más de 5 carácteres y menos de 8";
    var longMal = true;
    var letrasMal = true;

    if (/([A-Z])+([a-z])+([0-9]+){5,8}/.test(pass.value)) {
        pass.style.backgroundColor = "green";
        pass.style.color = "white";
        pass.innerHTML = "";
        passOK = true;

    } else {
        pass.style.backgroundColor = "#d63031";

        if (pass.value.length < 5 || pass.value.length > 8) {
            longMal = false;
            resultadoPassword.innerHTML = textMal;
        }
        if (/([A-Za-z0-9]+){5,8}/.test(pass.value)) {
            letrasMal = false;
        }

        if (letrasMal) {
            resultadoPassword.innerHTML = "La contraseña tiene que tener letras mayúsculas minúsculas y números";
        }
        if (longMal) {
            resultadoPassword.innerHTML += "<br>" + textMal;
        }
        alert(letrasMal)
        alert(longMal)
    }
}


function validaConfirmaPassword() {
    var confirmaPass = document.getElementById("campoConfirmaPassword")
    var pass = document.getElementById("campoPassword")
    var resultadoConfirmaPassword = document.getElementById("resultadoConfirmaPassword")

    if (confirmaPass.value !== pass.value) {
        confirmaPass.style.backgroundColor = "#d63031"
        resultadoConfirmaPassword.innerHTML = "Las contraseñas no coinciden"
    }
}