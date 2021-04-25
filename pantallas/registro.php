<!--Llamada de conexion.php -->
<?php

include("../utilidades/conexion.php");
$query=mysqli_query($conexion, "SELECT nom_est FROM estado_cine");

?>
<!-- Fin de la Llamada de conexion.php -->

<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Registrarse</title>

    <link rel="stylesheet" href="../estilos/estilos.css">
    <link rel="stylesheet" href="../fonts/ionicons.min.css">
    <link rel="stylesheet" href="../fonts/font-awesome.min.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
</head>

<body class="colorFondo">
<!-- comienzo menu de navegacion -->
<div class="header-blue">
        <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                  
            <div class="container"><a class="navbar-brand" href="#"></a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav">
                        <li class="nav-item" role="presentation"><a class="nav-link" href="../index.html" >Inicio</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="prom_prec.html" >Promociones y Precios</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="contacto.html" >Contactanos</a></li>
                    </ul>
                    <form class="form-inline mr-auto" target="_self">
                        <div class="form-group"><label for="search-field"><i class="fa fa-search"></i></label><input class="form-control search-field" type="search" name="search" id="search-field"></div>
                    </form><span class="navbar-text"> <a href="login.html" class="login">Ingresar</a></span><a class="btn btn-light action-button" role="button" href="registro.html">Registrate</a></div>
            </div>
        </nav>
    </div>
      <!-- fin menu de navegacion -->

        <!--  Formulario de Registro -->
    <section class="container mt-5 p-5 col-lg-7">
        
        <!--  Formulario de Registro -->

        <!--  ************************** Registro de Datos Personales*********************** -->
        <div class="card" style="border-color: black;">
            <header class="card-header">
                <h4 class="card-title mt-2 text-center">FORMULARIO DE REGISTRO</h4>
            </header>
            <header class="card-header">
                <h4 class="card-title mt-2 text-center">DATOS PERSONALES</h4>
            </header>
            
            <article class="card-body">

            <form method="post" action="../utilidades/conexion.php" id="form_registrar">
                <div class="form-row col">
                    <div class="col form-group col-12 col-md-6">
                        <label>Primer Nombre*</label>
                          <input type="text" class="form-control" maxlength="50" name="nombre1" id="nombre1" onkeypress="return validarletras(event)">
                    </div>
                    <div class="form-group col-12 col-md-6">
                        <label>Segundo Nombre</label>
                          <input type="text" class="form-control" maxlength="50" name="nombre2" id="nombre2" onkeypress="return validarletras(event)">
                    </div>
                </div>
                
                <div class="form-row col">
                        <div class="form-group col-12 col-md-6">
                                <label>Primer Apellido*</label>
                                  <input type="text" class="form-control" maxlength="50" name="apellido1" id="apellido1" onkeypress="return validarletras(event)">
                            </div>
                            <div class="form-group col-12 col-md-6">
                                <label>Segundo Apellido</label>
                                  <input type="text" class="form-control" maxlength="50" name="apellido2" id="apellido2" onkeypress="return validarletras(event)">
                        </div>
                </div> 

                <div class="form-row col-12">
                        <div class="form-group col-12 col-md-6">
                            <label>Cedula*</label>
                                 <input type="text" class="form-control" maxlength="8" name="cedula" id="cedula" onkeypress="return validarnumeros(event)">
                        </div>
                         <div class="form-group col-12 col-md-6">
                            <label>Fecha de Nacimiento*</label>
                            <input type="date" class="form-control" name="fecha_nacimiento" id="fecha_nacimiento">
                         </div>
                </div> 

                <div class="form-row col-12">
                            
                        <div class="form-group col-12 col-md-6">
                            <label>Telefono 1*</label>
                            <input type="text" class="form-control" maxlength="11" name="telefono1" id="telefono1" onkeypress="return validarnumeros(event)">
                                 
                        </div>
                        
                        <div class="form-group col-12 col-md-6">
                            <label>Telefono 2</label>
                            <input type="text" class="form-control" maxlength="11" name="telefono2" id="telefono2" onkeypress="return validarnumeros(event)">
                        </div>
                        <div class="form-group col-12 col-md-6">
                            <label>Estado*</label>
                            <select id="inputState" class="form-control" name="estado" id="estado">
                            <option selected=""> Seleccione</option>

                <!--Funcion que trae los datos de la base de datos de la tabla estados -->
                            <?php
                                while ($datos = mysqli_fetch_array($query)) {
                            ?>
                                <option> <?php echo $datos['nom_est']   ?></option>
                            <?php
                               }
                            ?>
                <!--Fin de la Funcion que trae los datos de la base de datos de la tabla estados -->
                
                            </select>
                          </div>
                </div> 
             

                <!--  ************************** Fin Registro de Datos Personales*********************** -->

                <!--  ************************** Registro de Datos de Registros*********************** -->
                <header class="card-header">
                    <h4 class="card-title mt-2 text-center">DATOS DE REGISTRO</h4>
                </header>

                <div class="form-row col-md-8 mt-3">
                    <div class="col form-group">
                        <label>Correo*</label>
                             <input type="email" class="form-control" maxlength="50"  placeholder="ejemplo@ejemplo.com" name="email" id="email">
                             <small class="form-text text-muted">No Compartiremos tu Email con Nadie</small>
                    </div>

                </div> 

                <div class="form-row col-md-8">
                <div class=" col form-group">
                    <label>Contraseña*</label>
                    <input class="form-control" type="password" maxlength="20" name="contra" id="contra">
                </div> 

                <div class="col form-group">
                    <label>Confirmar Contraseña*</label>
                    <input class="form-control" type="password" maxlength="20" name="confirm_contra" id="confirm_contra">
                </div> 

                </div>

                <div class="form-group mt-5">
                    <button type="submit" class="btn btn-primary btn-block" value="Registrar" name="registrar" >Registrar</button>
                                                                               <!-- onclick="validar_cliente()" -->
                    <small class="form-text text-muted" style="font-size: 20px;">(*) Campos Obligatorios</small>
                </div> 

             <!--  ************************** Fin Registro de Datos de Registros*********************** -->                                      
            </form>

            </article> <!-- card-body end .// -->
            <div class="border-top card-body text-center">Tienes una cuenta? <a href="login.html">Presiona Aqui</a></div>
            </div> <!-- card.// -->

        
    </section>

       <!-- footer -->

       <div class="footer-basic">
            <footer>
                <div class="social"><a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a></div>
                <ul class="list-inline">
                    <li class="list-inline-item"><a class="esty_fot" href="../index.html">Inicio</a></li>
                    <li class="list-inline-item"><a class="esty_fot" href="#">Acerca de Nosotros</a></li>
                    <li class="list-inline-item"><a class="esty_fot" href="ubicacion.html">Ubicanos</a></li>
                    <li class="list-inline-item"><a class="esty_fot" href="termi_uso.html">Terminos de Servicio</a></li>
                    <li class="list-inline-item"><a class="esty_fot" href="polit_priva.html">Politica de Privacidad</a></li>
                </ul>
                <p class="copyright">Todos los Derechos Reservados © 2019</p>
            </footer>
        </div>

        <!-- fin footer -->

    <!-- Libreria bootstrap sin internet -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../js/jquery-3.3.1.slim.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.min.js"></script>
    <!-- Librerias para validaciones de jquery sin internet -->
    <script src="../js/jquery-3.1.1.js"></script>
    <script src="../js/jquery.validate.js"></script>
    <script src="../js/valid_form.js"></script>

    <!-- validar registro con la libreria de jquery.validate -->
    <script text="text/JavaScript">

        //Ojo: Muestra error de submitted
    	//	$.validator.setDefaults( {
		//	submitHandler: function () {
		//		alert( "submitted!" );
		//	}
        //} );
        
        $(document).ready(function() {
        $("#form_registrar").validate({
            rules: {
                nombre1: {
                    required: true,
                    minlength: 5
                },
                apellido1: {
                    required: true,
                    minlength: 5
                },
                cedula: {
                    required: true,
                    minlength: 8,
                    number: false
                },
                fecha_nacimiento: {
                    required: true
                },
                telefono1: {
                    required: true,
                    minlength: 11,
                    number: false
                },
                estado: {
                    required: true,
                },
                email: {
                   required: true,
                //    email: true
                },
                contra: {
                    required: true,
                    minlength: 6
                },
                confirm_contra: {
                    required: true,
                    minlength: 6,
                    equalTo: "#contra"
                },
            },
            messages:  {
					nombre1: {
						required: "Ingresa tu nombre",
						minlength: "Tu nombre debe contener un minimo de 5 caracteres"
                    },
                    apellido1: {
						required: "Ingresa tu apellido",
						minlength: "Tu apellido debe contener un minimo de 5 caracteres"
					},
					cedula: {
						required: "Ingresa tu numero de cedula",
                        minlength: "Tu cedula debe contener un minimo de 8 digitos",
                        number: "Ingresa un valor numerico valido"
					},
					fecha_nacimiento: {
						required: "Ingresa tu fecha de nacimiento",
                    },
                    telefono1: {
						required: "Ingresa tu numero de telefono",
                        minlength: "Tu numero debe contener un minimo de 11 digitos",
                        number: "Ingresa un valor numerico valido"
                    },
                    estado: {
						required: "Ingresa un estado"
                    },
                    
                    //email: "Ingresa una direccion de correo valida", 
                    
                    contra: {
						required: "Ingresa una contraseña",
						minlength: "Tu contraseña debe contener un minimo de 6 digitos"
                    },
                    confirm_contra: {
                        required: "Ingresa la contraseña",
                        minlength: "Tu contraseña debe contener un minimo de 6 digitos",
                        equalTo: "La contraseña no coincide"
					},
            },
            errorElement: "em",
				errorPlacement: function ( error, element ) {

					error.addClass( "help-block" );

					if ( element.prop( "type" ) === "checkbox" ) {
						error.insertAfter( element.parent( "label" ) );
					} else {
						error.insertAfter( element );
					}
				},
				highlight: function ( element, errorClass, validClass ) {
					$( element ).parents( ".col-sm-5" ).addClass( "has-error" ).removeClass( "has-success" );
				},
				unhighlight: function (element, errorClass, validClass) {
					$( element ).parents( ".col-sm-5" ).addClass( "has-success" ).removeClass( "has-error" );
				}
        });

    });

        </script>

</body>
</html>