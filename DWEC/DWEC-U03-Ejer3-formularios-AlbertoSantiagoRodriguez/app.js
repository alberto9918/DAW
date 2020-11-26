
document.addEventListener("DOMContentLoaded", function() {
        document.getElementById("btnEnviar").addEventListener('click', validarFormulario); 
        document.getElementById("nombre").addEventListener('blur', ponerMayuscula);
        document.getElementById("apellidos").addEventListener('blur', ponerMayuscula);
}, false);

var incremento = 0;

function validarFormulario(evento) {
        evento.preventDefault();
        var errores = document.getElementById('errores');
        var intentos = document.getElementById('intentos');
        incremento++;

        var nombre = document.getElementById('nombre').value;
        var apellidos = document.getElementById('apellidos').value;
        var edad = document.getElementById('edad');
        var email = document.getElementById('nif').value;
        var email = document.getElementById('email').value;
        var provincia = document.getElementById('provincia').value;
        var telefono = document.getElementById('fecha').value;
        var hora = document.getElementById('hora').value;

        if(nombre.length == 0) {
                var nodo = document.createElement("p");
                nodo.setAttribute("id","nombre")
                nodo.innerHTML = "El nombre no puede estar vacío";

                errores.appendChild(nodo);
        }

        if(edad.getAttribute('type') == 'texto'){
                edad.setAttribute('type') = 'number';
        }

        if(errores.hasChildNodes()) { 
                return;
        }
        
        
        this.submit();
}

function ponerMayuscula(){
        var primerEspacio = /^ /;
        var ultimoEspacio = / $/;

        var nombre = document.getElementById('nombre');
        var apellidos = document.getElementById('apellidos');

        nombre.value = nombre.value.replace (primerEspacio,"");
        nombre.value = nombre.value.replace (ultimoEspacio,"");
        apellidos.value = apellidos.value.replace (primerEspacio,"");
        apellidos.value = apellidos.value.replace (ultimoEspacio,"");
        
        nombre.value = nombre.value.charAt(0).toUpperCase() + nombre.value.slice(1); 
        
        apellidos.value = apellidos.value.charAt(0).toUpperCase() + apellidos.value.slice(1); 
        
}