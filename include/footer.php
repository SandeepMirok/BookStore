<nav class="navbar navbar-default">
<div class="container">
	  <div class="container-fluid">

		  <ul class="nav navbar-nav">
			<!--<li class="underline-hover"><a href="#" data-toggle="modal" data-target="#customermodal">WISH LIST</a></li>
			<li class="underline-hover"><a href="#" data-toggle="modal" data-target="#customermodal">CART</a></li>-->
			
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
				<li class="underline-hover"><a href="#" data-toggle="modal" data-target="#contactmodal">CONTACT US</a></li>
		  </ul>
		  <form class="navbar-form navbar-right" action="index.php" method="post">
			<div class="form-group">
			  <input type="text" class="form-control" id="subEmail" name="subEmail" placeholder="Email Address">
			</div>
			<button type="submit" class="btn btn-default" id="subscribe" name="subscribe">Subscribe</button>
		  </form>
		 
			

		</div>
		<footer class="col-sm-12 topper"><br>
			<p class="text-center"><b>&copy; Copyright Alternative Bookstore 2017</b></p>
		</footer>
	</nav>

</div>

<script src="js/jquery.min.js"></script>

<script src="js/bootstrap.min.js"></script>

</body>

</html>