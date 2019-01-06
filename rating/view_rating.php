<!DOCTYPE html>
<html>
<head>	
<title>Hasil Rating</title>
	<link href="../rating/css/bootstrap.css" rel="stylesheet">
	<link href="../rating/css/star-rating.min.css" media="all" rel="stylesheet" type="text/css" />
	<script src="../rating/js/jquery.min.js"></script>
	<script src="../rating/js/bootstrap.min.js"></script>
	<script src="../rating/js/star-rating.min.js"></script> 
</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Rating</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class=""><a href="index.php">Home</a></li>
            <li class="active"><a href="view_rating.php">View Rating</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="jumbotron" style="margin-top:100px;">
	<center>
	<h2>HASIL RATING</h2>
	<br/>
	<br/>
	<br/>
	
	<table border="1">
		<tr>
			<th>No Pelanggan</th>
			<th></th>
			<th></th>
			<th>Jumlah Pemberian Rating</th>
		</tr>
		<?php 
		include 'koneksi.php';
		$no = 1;
		$data = mysqli_query($koneksi,"select * from rating");
		while($d = mysqli_fetch_array($data)){
			?>
			<tr>
				<td><?php echo $no++; ?></td>
				<td></td>
				<td></td>
				<td><?php echo $d['vote']; ?></td>
			</tr>
			<?php 
		}
		?>
	</table>
</div>
</body>
</html>