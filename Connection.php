<?php
$HOSTNAME = 'localhost';
$USERNAME = 'root';
$PASSWORD = '';
$DATABASENAME = 'petadopt_dashboard';

$con = mysqli_connect($HOSTNAME, $USERNAME, $PASSWORD, $DATABASENAME);

if (!$con)
  exit();
?>