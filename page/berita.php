<section class="main-content">

	<div class="row">
		<div class="span9">
<?php $id = $_GET['idberita'];
$query = " SELECT * from berita where idberita='$id'";

$result = mysql_query($query) or die(mysql_error());
$no = 1;
//proses menampilkan data
$rows = mysql_fetch_object($result);
?>

   
        <h2> 
        	<?=$rows->judul?></strong></h2>
        	 <span class="label label-success"><?=tampil_tanggal($rows -> tanggal); ?></span>
        	 <br/>
    <?php
	if (!empty($rows -> gambar)) {
		echo "<img src='upload/berita/" . $rows -> gambar . "' />";
	}
?>	
	
   
    
      
     
      <p> 
      <?=$rows -> isi ?>
        </p>
      
		
		</div>
<?php
include('inc/sidebar-front.php');
?>
	</div>
</section>		


