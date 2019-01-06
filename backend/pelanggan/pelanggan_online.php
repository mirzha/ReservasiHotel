<?php

 if(empty($_SESSION['username'])){
			echo "<p style='color:red'>akses denied</p>";
		exit();		
	}
?>
<div>
	<h2 id="headings">  pelanggan Yang sedang Online</h2>
	<!--<a href='index.php?mod=pelanggan&pg=peta'><i class="icon-map-marker"></i>Map View</a>-->
	<table  class="table table-striped table-condensed">
		<thead>
			<th><td><b>Nama </b></td><td><b>Email</b></td><td><b>No Telp</b></td></th>
		</thead>
		<tbody>
<?php
$batas='10';
$tabel="pelanggan";
$halaman=$_GET['halaman'];
$posisi=null;
if(empty($halaman)){
$posisi=0;
$halaman=1;
}else{
$posisi=($halaman-1)* $batas;
}
$query="SELECT pelanggan.*
 from pelanggan where status='1'
 limit $posisi,$batas ";
$result=mysql_query($query) or die(mysql_error());
$no=1;
//proses menampilkan data
while($rows=mysql_fetch_object($result)){

			?>
			<tr>
				<td><?php echo $posisi+$no
				?></td>
			
				<td><?php		echo $rows -> nama;?></td>
			<td><?php		echo $rows ->email;?></td>
			<td><?php		echo $rows->telp;?></td>
			
			
			</tr>
			<?php	$no++;
	}?>

		</tbody>
	</table>


</div>
