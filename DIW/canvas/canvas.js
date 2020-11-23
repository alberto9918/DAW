/*function iniciar(){
    var elemento=document.getElementById('lienzo');
    lienzo=elemento.getContext('2d');

    lienzo.beginPath();
    lienzo.arc(100,100,50,0,Math.PI*2, false);
    lienzo.stroke();

}

window.addEventListener("load", iniciar, false);

function iniciar(){  
    var elemento=document.getElementById('lienzo');
    lienzo=elemento.getContext('2d');  
    var imagen=new Image();  imagen.src="https://i.blogs.es/6c558d/luna-400mpx/450_1000.jpg"; 

    imagen.addEventListener("load", function(){
            lienzo.drawImage(imagen,135,30,50,50,0,0,200,200)    
        }, false);
}*/

function iniciar(){  
    var elemento=document.getElementById('lienzo');
    lienzo=elemento.getContext('2d');  
    var imagen=new Image();  

    imagen.crossOrigin = "";
    
    imagen.src="http://www.formasterminds.com/content/snow.jpg";  
    imagen.addEventListener("load", modificarimagen, false);
}

function modificarimagen(e){  
    imagen=e.target;  
    lienzo.drawImage(imagen,0,0);  
    var info=lienzo.getImageData(0,0,175,262);  
    var pos;

    for(x=0;x<=175;x++){    
        for(y=0;y<=262;y++){
            pos=(info.width*4*y)+(x*4);      
            info.data[pos]=255-info.data[pos];      
            info.data[pos+1]=255-info.data[pos+1];      
            info.data[pos+2]=255-info.data[pos+2];    
        }  
    }  
    lienzo.putImageData(info,0,0);
}

window.addEventListener("load", iniciar, false);