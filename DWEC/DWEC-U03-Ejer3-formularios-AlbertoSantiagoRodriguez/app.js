
document.addEventListener("DOMContentLoaded", function() {
        document.formulario.addEventListener('submit', validarFormulario); 
        document.getElementById("nombre").addEventListener('blur', ponerMayuscula);
        document.getElementById("apellidos").addEventListener('blur', ponerMayuscula);
}, false);

var incremento = 0;

function validarFormulario(evento) {
        evento.preventDefault();
        incremento++;

        //Array para guardar los mensajes de los campos que no pasan la validación.
        var campos = [];

        var errores = document.getElementById('errores');
        var intentos = document.getElementById('intentos');

        //Esto lo hago para borrar todos los mensajes de error que hayan salido. Así, consigo que una vez validado correctamente 
        //el formulario, se borren los mensajes de error que puedan haber salido, y además evito que se repitan en caso de que 
        //no se complete un campo de forma correcta de forma reiterada.
        errores.innerHTML = "";

        var nombre = document.getElementById('nombre');
        var apellidos = document.getElementById('apellidos');
        var edad = document.getElementById('edad');
        var dni = document.getElementById('nif');
        var email = document.getElementById('email');
        var provincia = document.getElementById('provincia');
        var fecha = document.getElementById('fecha');
        var telefono = document.getElementById('telefono');
        var hora = document.getElementById('hora').value;

        nombre.setAttribute("class","");

        if(nombre.value.length == 0) {
                campos['nombre'] = 'El nombre no puede estar vacío';
                nombre.setAttribute("class","error");
        }

        if(apellidos.value.length == 0){
                campos['apellidos'] = 'Los apellidos no pueden estar vacíos';
                apellidos.setAttribute("class","error");
        }

        if(edad.type == 'text'){
                campos['edad'] = 'La edad solo puede contener números.';

                edad.type = 'number';
                edad.max = 105;
                edad.min = 0;
                edad.value = 0;

                edad.setAttribute("class","error");
        }

        if(!comprobarNIF(dni.value)){
                campos['dni'] = 'El DNI introducido no es válido.';
                dni.setAttribute("class","error");
        }

        if(!comprobarCorreo(email.value)){
                campos['correo'] = 'El correo introducido no es válido.';
                email.setAttribute("class","error");
        }

        if(provincia.value == 0){
                campos['provincia'] = 'No ha seleccionado una provincia.';
                provincia.setAttribute("class","error");
        }

        if(!comprobarTelefono(telefono.value)){
                campos['telefono'] = 'El teléfono introducido no es válido.';
                telefono.setAttribute("class","error");
        }

        
        //Con este bloque se indica que en el caso de que el array de campos no esté vacío, es decir,
        //que existan errores en la validación, se muestren todos los mensajes de error guardados en 
        //ese array, y que no permita enviar el formulario.
        if(Object.keys(campos).length !== 0){
                for (var campo in campos) {
                        let nodo = document.createElement("p");
                        nodo.innerHTML = campos[campo];

                        errores.appendChild(nodo);
                }
                return;
        }
        
        
        
        this.submit();
}

function ponerMayuscula(){
        var primerEspacio = /^ /;
        var ultimoEspacio = / $/;

        nombre.value = nombre.value.replace (primerEspacio,"");
        nombre.value = nombre.value.replace (ultimoEspacio,"");
        apellidos.value = apellidos.value.replace (primerEspacio,"");
        apellidos.value = apellidos.value.replace (ultimoEspacio,"");
        
        nombre.value = nombre.value.charAt(0).toUpperCase() + nombre.value.slice(1); 
        
        apellidos.value = apellidos.value.charAt(0).toUpperCase() + apellidos.value.slice(1); 
        
}

function comprobarNIF(nif) {
        var numero;
        var letra;
        var comprobarLetra;
        var expresion_regular_nif
       
        expresion_regular_nif = /^\d{8}-[a-zA-Z]$/;
       
        if(expresion_regular_nif.test(nif) == true){
                numero = nif.substr(0,nif.length-3);
                letra = nif.substr(nif.length-1,1);
                numero = numero % 23;
                comprobarLetra='TRWAGMYFPDXBNJZSQVHLCKET';
                comprobarLetra=comprobarLetra.substring(numero,numero+1);

                if (letra!=letra.toUpperCase()) {
                        return false;
                }else{
                        return true;
                }
        }else{
                return false;
        }
}

function comprobarCorreo(correo){
        if(/^([\da-z_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,4})$/.test(correo) == true){
                return true;
        }else{
                return false;
        }
}

function comprobarTelefono(telefono){
        if(/^\d{9}$/.test(telefono) == true){
                return true;
        }else{
                return false;
        }
}