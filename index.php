<title>ROYAL SUITE</title>
<?php
error_reporting(0);
?> 
<?php
session_start();
include('inc/function.php');
include('inc/config.php');
include('inc/header-front.php');

//content 

$pg = '';
/*
 * PHP Code untuk mendapatkan halaman view masing masing tabel
 */

if(!isset($_GET['pg'])) {
		include ('page/produk.php');
	} else {
		$mod=$_GET['mod'];
	$pg = $_GET['pg'];

	include  $mod."/". $pg . ".php";

}

include('inc/footer-front.php');



?>	