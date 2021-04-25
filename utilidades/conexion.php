<?php
//Conexion con la base de datos
$conexion = mysqli_connect("localhost","root","","sistema_cine") or die ("Error en conectar con la base de datos");
	//$echo "Error en conectar con la base de datos";

//Registro de los datos del cliente en la base de datos

if(isset($_POST['registrar'])){
       

	$cedula=$_POST['cedula'];
	$nombre1=$_POST['nombre1'];
	$nombre2=$_POST['nombre2'];
	$apellido1=$_POST['apellido1'];
	$apellido2=$_POST['apellido2'];
	$telefono1=$_POST['telefono1'];
	$telefono2=$_POST['telefono2'];
	$estado=$_POST['estado'];
	$correo=$_POST['correo'];
	$fecha_nacimiento=$_POST['fecha_nacimiento'];
	$contra=$_POST['contra'];

	

	 $consulta = "SELECT ced_cli FROM cliente WHERE ced_cli='$cedula'";
	 $ejecutar = mysqli_query($conexion,$consulta);
	 $coincidencias = mysqli_num_rows($ejecutar); 

	 if($coincidencias>0)
	 {
	 echo "<script>alert('El usuario ya se encuentra registrado');location.href='../pantallas/registro.php'</script>";
	 }else{

	 $insertar = "INSERT INTO cliente (ced_cli,nom1_cli,nom2_cli,ape1_cli,ape2_cli,tel1_cli,tel2_cli,dir_cli,cor_cli,fec_nac_cli,clave_cli)
	  VALUES ('$cedula','$nombre1','$nombre2','$apellido1','$apellido2','$telefono1','$telefono2','$estado','$correo','$fecha_nacimiento','$contra')";

	 $ejecutar = mysqli_query($conexion,$insertar);
	 if($ejecutar){
	  echo "<script>alert('Registro Satisfactorio');location.href='../index.html'</script>";
		 }
	 }

}

// Inicio de sesion del cliente

if(isset($_POST['ingresar'])){

	$usuario=$_POST['correo'];
	$clave=$_POST['contra'];

	$consulta1="SELECT * FROM cliente WHERE cor_cli='$usuario' and clave_cli='$clave'";
	$resultado1=mysqli_query($conexion,$consulta1);

	$coincidencias1=mysqli_num_rows($resultado1);

if($coincidencias1>0)
{

   while($guardar = mysqli_fetch_array($resultado1))
   {
   
	   session_start();

	   $_SESSION['cor_cli'] = $guardar['cor_cli'];
	   $_SESSION['nom1_cli'] = $guardar['nom1_cli'];
	   $_SESSION['ape1_cli'] = $guardar['ape1_cli'];
	   $_SESSION['dir_cli'] = $guardar['dir_cli'];
	   $_SESSION['tel1_cli'] = $guardar['tel1_cli'];
	   $_SESSION['clave_cli'] = $guardar['clave_cli'];

   }
?>
        <script language="javascript">
         alert("Bienvenido usuario: <?php echo $_SESSION['nom1_cli']?>");
         location.href='../index.html';
        </script>

    <?php
     }
     else{

	 echo "<script>alert('Usuario o clave no registrado');location.href='../pantallas/login.html'</script>";
         }
	}
?>

