/**
 * 
 */
window.onload = function(){iniciar();}

function iniciar(){
	alert("Elige el usuario que desea actualizar");
	document.getElementById("botonActualiza").disabled="enabled";
	
	document.getElementById("botonBusca").onclick=activaActualiza;
}

function activaActualiza(){
	document.getElementById("botonActualiza").disabled="disabled";
}