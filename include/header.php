
<?php
//session_start();
include_once('functions.php');
$servername = "localhost";
$username = "root";
$password = "";
$dbname="BOOKSTORE";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

if (isset($_POST['searchProducts'])){ 
	$sea = $_POST['searchFor'];
	header("Location: http://localhost/final/bookstore/products.php?category=$sea");
	
}

?>

<html>

<head>

<meta charset="utf-8"/>

<title>Alternative Bookstore</title>

<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet" href="css/bootstrap-theme.min.css">

<link rel="stylesheet" href="css/main.css">

</head>

<body>

<div class="container">

	<header>	
	  <nav class="navbar navbar-default">
	  <div class="container-fluid topper">
	  <br>
<!--
		<p class="text-center"><b>Alternative bookstore is a college bookstore for the students by the students</b>&nbsp&nbsp
		Shecky Shabaz&nbsp<small>Founder & CEO</small></p>
-->
		<?php 
          
          if(isLoggedIn()) {
              ?>
              <p class="text-center"><b>Alternative bookstore is a college bookstore for the students by the students</b>&nbsp&nbsp
		Shecky Shabaz&nbsp<small>Founder & CEO</small></p>
            
                <?= "<h4>Welcome " . $_SESSION["uname"] . "</h4>";
              
          }   else{
              ?>
              <p class="text-center"><b>Alternative bookstore is a college bookstore for the students by the students</b>&nbsp&nbsp
		Shecky Shabaz&nbsp<small>Founder & CEO</small></p>
              <?="<h4>Welcome Guest</h4>";
          }  
          ?>
	  </div>
	  <div class="container-fluid  my-navbar">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
		  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </button>
		  <a class="navbar-left" href="index.php"><img style="max-width:200px; margin-top: 7px; margin-right: 40px; margin-left: 40px" src="images/logo.jpg" alt="logo"></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		  <ul class="nav navbar-nav">
			<?php
                if(isLoggedIn()){
                    ?>
                    <li class="underline-hover" ><a href="wishlist.php?wid=<?= $_SESSION['uname'];?>" >WISH LIST</a></li>
                    <?php 
                }
                    else{
               echo ' <li class="underline-hover" ><a href="login.php">WISH LIST</a></li>';
			    // header("Location: http://localhost/final/bookstore/login.php");
                    }
                ?>
	<?php
                if(isLoggedIn()){
                    ?>
                    <li class="underline-hover" ><a href="cart.php?wid=<?= $_SESSION['uname'];?>" >CART</a></li>
                    <?php 
                }
                    else{
               echo ' <li class="underline-hover" ><a href="login.php">CART</a></li>';
			 //  header("Location: http://localhost/final/bookstore/login.php");
			                         }
                ?>
			<li class="dropdown underline-hover">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">TEXTBOOKS <span class="caret"></span></a>
			  <ul class="dropdown-menu">
			    <li><a href="products.php?category=COMPUTER SCIENCE">Computer Science</a></li>
				<li><a href="products.php?category=ENGINEERING">Engineering</a></li>
				<li><a href="products.php?category=GEOGRAPHY">Geography</a></li>
				<li><a href="products.php?category=LITERATURE">Literature</a></li>
				<li><a href="products.php?category=MATH">Math</a></li>
				<li><a href="products.php?category=MUSIC">Music</a></li>
				<li><a href="products.php?category=PHILOSOPHY">Philosophy</a></li>
				<li><a href="products.php?category=PSYCHOLOGY">Psychology</a></li>
				<li><a href="products.php?category=POLITICAL SCIENCE">Political Science</a></li>
				<!--<li role="separator" class="divider"></li>
				<li><a href="products.php">ON SALE</a></li>-->
			  </ul>
			</li>
			<li class="underline-hover"><a href="#" data-toggle="modal" data-target="#contactmodal">CONTACT US</a></li>
			<div class="modal fade" id="contactmodal">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4>Contact Us:</h4>
						</div>
						<div class="modal-body">
							<form action="index.php" method="post" class="form-horizontal"> 
							<div class="form-group">
								<label for="name" class="col-sm-2 control-label">Name:</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="name" id="name"/>
								</div>	
							</div>
							<div class="form-group">
								<label for="email" class="col-sm-2 control-label">Email:</label>
								<div class="col-sm-10">
									<input type="email" class="form-control" name="email" id="email"/>
								</div>
							</div>
							<div class="form-group">
								<label for="feedback" class="col-sm-2 control-label">Feedback:</label>
								<div class="col-sm-10">
									<textarea class="form-control" rows="8" name="feedback" id="feedback"></textarea>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-10 col-sm-push-2">
								<button type="submit" class="btn btn-default" id="InsertFeedback" name="InsertFeedback">Submit</button>
							</div>
							</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
			<?php 
              
              if(isLoggedIn()) {
               ?>
                  <li id="sign" class="underline-hover"><a href="signout.php" >LOG OUT </a></li>
              <?php 
              
              } else {
                                    
                  ?>
                                   
			<li id="sign" class="underline-hover"><a href="custsignup.php">SIGN UP</a></li>
			<li id="sign" class="underline-hover"><a href="login.php" >SIGN IN</a></li> 
                  <?php                      
              }              
              ?>
				
			
			</div>
		  </ul>
		  <form class="navbar-form navbar-right" action="index.php" method="POST">
			<div class="form-group">
			  <input type="text" class="form-control" placeholder="Search" name="searchFor" id="searchFor">
			</div>
			<button type="submit" class="btn btn-default" id="searchProducts" name="searchProducts">Submit</button>
		  </form>
		 
			

		</div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
	
	</header>