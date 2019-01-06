<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Rating Hotel</title>
<link href="../rating/css/bootstrap.css" rel="stylesheet">
<link href="../rating/css/star-rating.min.css" media="all" rel="stylesheet" type="text/css" />
<script src="../rating/js/jquery.min.js"></script>
<script src="../rating/js/bootstrap.min.js"></script>
<script src="../rating/js/star-rating.min.js"></script> 
</head>
<body>
<?php include_once('rating.php') ?>

  <!-- Fixed navbar -->
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
            <li class="active"><a href="index.php">Home</a></li>
            <li class=""><a href="view_rating.php">View Rating</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container theme-showcase" role="main">

      <div class="jumbotron" style="margin-top:100px;">
        <h2>Rating</h2>
        <p>Dengan diberikan rating, maka diharapkan bisa meningkatkan kualitas dari Hotel kami</p>
      </div>

       
          <div class="col-md-12">
            <center>
              <img src="img/royaltretes.jpg" height="180">
              <br>
              <br>
              <input value="<?= getRatingByProductId(connect(), 1); ?>" type="number" class="rating" min=0 max=5 step=0.1 data-size="md" data-stars="5" productId=1>
              </center>
          </div>
          <!-- <div class="col-md-6">
           <center>
            <img src="img/royal.jpg">
            <input value="<?= getRatingByProductId(connect(), 2); ?>" type="number" class="rating" min=0 max=5 step=0.1 data-size="md" data-stars="5" productId=2>
            </center>
          </div> -->
       

    </div>

  <script type="text/javascript">
    $(function(){
      $('.rating').on('rating.change', function(event, value, caption) {
      productId = $(this).attr('productId');
      $.ajax({
            url: "rating.php",
            dataType: "json",
            data: {vote:value, productId:productId, type:'save'},
            success: function( data ) {
            alert("rating saved");
          },
        error: function(e) {
        console.log(e);
      },
        timeout: 30000  
      });
    });
  });
  </script>
</body>
</html>