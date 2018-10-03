<?php
	$ServerName = "localhost";
	$connectionInfo = array("blindstechdb"=>"prueba_usuarios", "UID"=>"prueba2", "PWD" =>"PRUEBA23", "CaracterSet"=>"UTF-8");
	$con = sqlsrv_connect ($ServerName, $connectionInfo);

	if ($con) {
			echo "Conexion exitosa";
	}else{
		echo "Conexion Trucha";
	}
?>