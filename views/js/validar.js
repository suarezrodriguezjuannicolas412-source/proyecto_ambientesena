var usuarioExiste = false;
var emailExiste = false;
var editarEmailExiste = false;

///VALIDAR USUARIO UNICO CON AJAS///
$('#nombreRegistro').change(function () {
    var usuario = $('#nombreRegistro').val();
    var datos = new FormData();
    datos.append('varusuario', usuario);

    $.ajax({
        url: 'http://localhost/proyectoseguridad/views/modules/ajax.php',
        method: 'POST',
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        success: function (respuesta) {
            if (respuesta == 1) {
                usuarioExiste = true;
                $("#error-nombre").html('Este usuario ya Existe');
            }
            else {
                $("#error-nombre").html('');
                usuarioExiste = false;
            }
        }
    });
});

///VALIDAR EMAIL UNICO CON AJAX///
$("#emailRegistro").change(function () {
    var email = $("#emailRegistro").val();
    var datos = new FormData();
    datos.append('email', email);
    $.ajax({
        url: 'http://localhost/proyectoseguridad/views/modules/ajax.php',
        method: 'POST',
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        success: function (respuesta) {
            if (respuesta == 1) {
                emailExiste = true;
                $("#error-email").html('Este Correo ya Existe');
            }
            else {
                $("#error-email").html('');
                emailExiste = false;
            }
        }
    });
});

///VALIDAR EDITAR EMAIL UNICO CON AJAX///
$("#editaremail").change(function () {
    var editaremail = $("#editaremail").val();
    var datos = new FormData();
    datos.append('editaremail', editaremail);

    $.ajax({
        url: 'http://localhost/proyectoseguridad/views/modules/ajax.php',
        method: 'POST',
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        success: function (respuesta) {
            if (respuesta == 1) {
                editarEmailExiste = true;
                $("#error-email").html('Este Correo ya Existe');
            }
            else {
                $("#error-email").html('');
                editarEmailExiste = false;
            }
        }
    });
});

///FUNCION PARA VALIDAR REGISTRO USUARIO///
function validarRegistroUsuario() {
    var nombre = document.querySelector('#nombreRegistro');
    var email = document.querySelector('#emailRegistro');
    var clave = document.querySelector('#claveRegistro');
    var terminos = document.querySelector('#terminos');

    ///EXPRESIONES///
    var nombreExpresion = /^[A-Za-z]{1,18}$/;
    var emailExpresion = /^[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$/;
    var claveExpresion = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}$/;

    ///VALIDAR NOMBRE USUARIO///
    if (nombre.value.trim() !== '') {
        if (nombre.value.length > 18) {
            document.querySelector('#error-nombre').innerHTML = 'Por favor, digite maximo 18 caracteres.';
            return false;
        }
        if (!nombreExpresion.test(nombre.value)) {
            document.querySelector('#error-nombre').innerHTML = 'Por favor, digite solo letras.'
            return false;
        }
    } else {
        document.querySelector("#error-nombre").innerHTML = '¡Este campo es OBLIGATORIO!';
    }

    ///VALIDAR EMAIL USUARIO///
    if (email.value.trim() == '') {
        document.querySelector("#error-email").innerHTML = '¡Este campo es OBLIGATORIO!';
    }
    else if (!emailExpresion.test(email.value)) {
        document.querySelector("#error-email").innerHTML = 'Por favor, ingrese una direccion de correo valida';
        return false;
    }

    ///VALIDAR CLAVE USUARIO///
    if (clave.value.trim() == '') {
        document.querySelector("#error-clave").innerHTML = '¡Este campo es OBLIGATORIO!';
        return false;
    }
    else if (clave.value.length < 6) {
        document.querySelector('#error-clave').innerHTML = 'Por favor, digite minimo 6 caracteres.';
        return false;
    }
    else if (!claveExpresion.test(clave.value)) {
        document.querySelector("#error-clave").innerHTML = 'Por favor, debe contener al menos un numero y una letra mayuscula y minuscula, y al menos 6 o mas caracteres.';
        return false;
    }

    ///VALIDAR TERMINOS Y CONDICIONES///
    if (!terminos.checked) {
        document.querySelector("#error-terminos").innerHTML = 'Debe aceptar los terminos y condiciones.';
        document.querySelector('#nombreRegistro') = nombre;
        document.querySelector('#emailRegistro') = email;
        document.querySelector('#editaremail') = email;
        return false;
    }
    if(usuarioExiste){
        return false;
    }
    if(emailExiste){
        return false;
    }
    if(editarEmailExiste){
        return false;
    }
    return true;
}