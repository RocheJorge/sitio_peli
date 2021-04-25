
//Validar numeros
function validarnumeros(e){  //e de elemento que resive

    key=e.keyCode ||  e.which;

    teclado=String.fromCharCode(key);

    numeros="0123456789";

    especiales="8-37-38-46"; //array

    teclado_especial=false;

    for(var i in especiales){

      if(key==especiales[i]){
        teclado_especial=true;
      }
    }

   if(numeros.indexOf(teclado)==-1 && !teclado_especial){
    return false;
   }
  } 

//Función solo letras en un imput
  function validarletras(e){  //e de elemento que resive

    key=e.keyCode ||  e.which;

    teclado=String.fromCharCode(key);

    letras="abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ ";

    especiales="8-37-38-46"; //array

    teclado_especial=false;

    for(var i in especiales){

      if(key==especiales[i]){
        teclado_especial=true;
      }
    }

   if(letras.indexOf(teclado)==-1 && !teclado_especial){
    return false;
    }
  }

 /*Validar El formulario de Registro
function validar_cliente()
{

   var nom1_cli=document.getElementById("nombre1");
   var ape1_cli=document.getElementById("apellido1");
   var ced_cli=document.getElementById("cedula");
   var fecha_nacimiento=document.getElementById("fecha_nacimiento");
   var tel1_cli=document.getElementById("telefono1");
   var cor_cli=document.getElementById("correo");
   var clave_cli=document.getElementById("contra");

   nom1_cli.style.borderColor="#CCCCCC";
   ape1_cli.style.borderColor="#CCCCCC";
   ced_cli.style.borderColor="#CCCCCC";
   fecha_nacimiento.style.borderColor="#CCCCCC";
   tel1_cli.style.borderColor="#CCCCCC";
   cor_cli.style.borderColor="#CCCCCC";
   clave_cli.style.borderColor="#CCCCCC";
   
   if(nom1_cli.value=="" || ape1_cli.value=="" || ced_cli.value=="" || fecha_nacimiento.value=="" || tel1_cli.value=="" 
   || cor_cli.value=="" || clave_cli.value=="")
   {
           alert("Debe llenar los campos obligatorios");

           if(nom1_cli.value=="") 
           {
               nom1_cli.style.borderColor="#FF0000";
                nom1_cli.focus(); 
                    return  
           }
               
           if(ape1_cli.value=="") 
           {	   
            ape1_cli.focus();
                ape1_cli.style.borderColor="#FF0000";	
                ape1_cli.focus();	
                    return   		
           }

           if (ced_cli.value=="") 
           {
                ced_cli.style.borderColor="#FF0000";
                ced_cli.focus();
                return
           }

           if (fecha_nacimiento.value=="") 
           {
                fecha_nacimiento.style.borderColor="#FF0000";
                fecha_nacimiento.focus();
                return
           }

           if (tel1_cli.value=="") 
           {
               tel1_cli.style.borderColor="#FF0000";
               tel1_cli.focus();
               return
           }

           if (cor_cli.value=="") 
           {
               cor_cli.style.borderColor="#FF0000";
               cor_cli.focus();
               return
           }

           if (clave_cli.value=="") 
           {
               clave_cli.style.borderColor="#FF0000";
               clave_cli.focus();
               return
           }
           
   }else
   {
	   submit() es funcion del formulario que permite enviar informacion al servidor
       //document.getElementById("form_registrar").submit();
   }	   
	
}*/