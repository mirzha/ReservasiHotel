<section class="main-content">

	<div class="row">
		<div class="span9">
<div class='span8 offset1'>	
<?php
$kd_transaksi = $_GET['kd_transaksi'];
$totalBayar = $_GET['total_bayar'];?>

<h3> Your Reservation Has Been Processed </h2>
<h3> Booking Code : <?=$kd_transaksi;?> </h2>
<h3>Total Payment : <?=format_rupiah($totalBayar);?></h2>


</h2><br>
<h4>
	Please Proceed the Transfer to : 
</h4>
<blockquote>
	Hafiz Zhafran Adnandifa
	<br>
	BCA
	<br>
	Account Number :  3151112780
	<br>
</blockquote>
<hr>
<p>
	Complete Your Reservation :
	<ol>
	<li>Please Transfer The exact number listed on the Payment </li> 
	<li>Confirm Your Reservation by Text / Whatsapp on 08181181811 </li>
	<!-- <li>Cek status pembayaran dan pengiriman barang di halaman invoice </li> -->
	</ol>
</p>
</div>		
		</div>
<?php
include('inc/sidebar-front.php');
?>
	</div>
</section>		
