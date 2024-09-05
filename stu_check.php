
<?php
error_reporting(0);
session_start();
?>
<?php
require 'config.php';
$_SESSION["id"]=1;
$sessionId=$_SESSION['id'];
$eml=$_SESSION["tuseml"];

$teeml=$_SESSION["tea_eml"];
$user=mysqli_fetch_assoc(mysqli_query($conn,"SELECT * FROM add_stu WHERE tea_eml='$teeml' and stu_eml='$eml'"));
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible"
		content="IE=edge">
	<meta name="viewport"
		content="width=device-width, 
				initial-scale=1.0">
	<title>TushTEAM</title>
	<link rel="stylesheet"
		href="stu_check.css">
	<link rel="stylesheet"
		href="responsive.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>



	<!-- for header part -->
	<header>

		
			<div class="logo">
         <label class="limg"><img src="tush.png" height="43px"></label>
        <label class="text1">TushTEAM</label>
      </div>
		
		

		

		<div class="message">
			<div class="circle"></div>
			<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210183322/8.png"
				class="icn"
				alt="">
			<div class="dp">
			<img src="img/<?php echo $user['img'];?>" height="40px" width="40px" onclick="red()">
			</div>
			<i class="fa-solid fa-ellipsis-vertical" id="dot3"></i>
		</div>

	</header>
	<script>
     function red()
	 {
		location.assign("stu_profile.php");
	 }
		</script>

	<div class="main-container">
		<div class="navcontainer">
			<nav class="nav">
				<div class="nav-upper-options">

					<div class="nav-option option1">

          <i class="fa fa-home" style="font-size:24px"></i><a href="stu_dash.php">DASHBOARD</a>
					</div>

					<div class="nav-option option2">
					
          <i class="fa fa-user-circle-o" style="font-size:24px"></i><a href="stu_profile.php">PROFILE</a>
					</div>
                    <div class="nav-option option3">
					
                    <i class="fa-regular fa-calendar-check" style="font-size:24px"></i><a href="stu_check.php">CHECK ATTENDENCE</a>
                              </div>
					
          <div class="nav-option option8">

          <i class="fa fa-question-circle" style="font-size:24px"></i><a href="stu_help.php">HELP</a>
           </div>
           <div class="nav-option option9">

           <i class="fa fa-sign-out" style="font-size:24px"></i><a href="stu_logout.php">LOGOUT</a>
           </div>
				</div>
			</nav>
			
		</div>
		<nav class="navBottom">
				
			<li style="color:blue" id="li1"><i class="fa fa-home"></i><a href="stu_dash.php">Home</a></li>
			<li id="li1"><i class="fa fa-user-circle-o"></i><a href="stu_profile.php">Profile</a></li>
			
			
			<li id="li1"><i class="fa-regular fa-calendar-days" id="i1"  style="color:cyan"></i><a href="stu_check.php" id="a3"  style="color:cyan">Attendence</a></li>
				
			</nav>



			
		<div class="main">




		<div class="tpopup" id="tpopup">
	<form action="stu_check.php" method="post">
	<span>Please select a date</span>
	<input type="date" name="date1" id="dt">
	<div class="btn">
		<button id="can" onclick="ntable()">Cancel</button>
		<button type="submit" name="sub1" id="ct">Search</button>
	</div>
	</form>
</div>




<div class="ppopup" id="ppopup">
	<p>Total No of Present : <?php echo $_SESSION["present"]; ?></p>
	<p>Total No of Absent : <?php echo $_SESSION["absent"];?></p>
	<p id="p3">Attendance Percentage : <?php echo $_SESSION["percentage"]."%";?></p>
	<button onclick="close1()">OK</button>
</div>








<script>
let tpopup=document.getElementById("tpopup");
let upopup=document.getElementById("upopup");
let ppopup=document.getElementById("ppopup");
	function ctable(){
		
		tpopup.style.display="block";

	}
	function ntable(){
		tpopup.style.display="none";
	}
	function utable(){
      upopup.style.display="block";
	}
  
	function open1(){
        ppopup.style.display="block";
	}
	function close1(){
       ppopup.style.display="none";
	}
</script>



<div class="cd">
	<form action="stu_check.php"method="post">
	<p>Check your attendence of <input type="date" name="date1" required><input type="submit" name="sub1" id="check" value="Check"></p>
	
	</form>

<div class="per">
	<p>Number of Present : <?php echo $_SESSION["present"]; ?> </p>
	<p>Number of absent : <?php echo $_SESSION["absent"];?></p>
	<p>Attendence percentage : <?php echo $_SESSION["percentage"]."%";?></p>
</div>




<div class="mobile">
	<button id="m1" onclick="ctable()">Search Attendance</button>
	<button id="m2" onclick="open1()">Check Percentage</button>
</div>

</div>






	
<?php 
if(isset($_POST['sub1']))
{
	$date1=$_POST["date1"];
	?>

	<p id="record">
	
	</p>
	<?php

}
?>
<div class="tableContainer">
		<table class="table1">
	    <tr id="tr1">
		<th>Sno.</th>
		<th>Date</th>
	    </tr>
<?php

if(isset($_POST['sub1']))
{

	
	$date1=$_POST["date1"];
	?>
	<script>let tr=document.getElementById("tr1");
	tr.style.visibility="visible";
	document.getElementsByClassName("tableContainer")[0].style.visibility="visible";
</script>
	<?php
    $i=1;
	$find="select adate from date where tea_eml='$teeml' and adate = '$date1'";
	$re=$conn->query($find);
	if($re->num_rows>0)
    {
     while($row=$re->fetch_assoc())
     {
    $query="select name,roll from add_stu where tea_eml='$teeml' and stu_eml='$eml'";
    $result=$conn->query($query);
	?>
	
		
		<?php
    if($result->num_rows>0)
    {
     while($row=$result->fetch_assoc())
     {
		
		?>
		<tr>
		<td><?php echo $i;$i++;?></td>
        <td><?php echo $date1;?></td>
		
		
		 <?php


     }
	 ?></tr>
	 </table>
	 <?php
    }
}
	}else{
		?>
		<script>
			let record=document.getElementById("record");
			record.style.display="none";
			let tbl=document.querySelectorAll("table")[0];
			tbl.style.display="none";
			let tbl1=document.querySelectorAll("table")[1];
			tbl1.style.display="none";
			
		</script>
		<p id="msg">
		<?php
	echo "Attendence of ".$date1." has not been taken yet...";
	?></p><?php
	
	}
	
	
	
	$date=$_POST["date1"];
	$find1="select adate from date where tea_eml='$teeml' and adate = '$date1'";
	$re1=$conn->query($find1);
	if($re1->num_rows>0)
    {
     while($row=$re1->fetch_assoc())
     {
	?><table class="table1">
	<tr><th id="atte">Attendence</th><?php
	$sql="SELECT `$date` FROM add_stu WHERE tea_eml='$teeml' and `$date`=`$date` and stu_eml='$eml'";
    $result=$conn->query($sql);
    if($result->num_rows>0)
    {
     while($row=$result->fetch_assoc())
     {
		?><tr><td id="td2">
		<?php 
        if($row["$date"]!="")
		{

		?>
	
		<p id="at"><?php
		echo $row["$date"];
		?><p><?php
		}else{

			?><p><?php
			echo "Attendence has not taken";
			?><p><?php
		}
		?></td><?php
	
     }
    }
}
	}else{
		
	
	
	}
	


}
?>
</tr>
</table>

</div>
           










<?php 
 if(!isset($_POST["sub1"]))
 {
?>
<div class="tbl">
	<table class="table1" id="tn1">
    <tr>
		<th>Sno.</th>
		<th>Date</th>
		<th>Attendence</th>
	</tr>
	



			<?php
		 
		  
			 $sql="select adate from date where tea_eml='$teeml'";
			 $result=$conn->query($sql);
			 $i=1;
			   if($result->num_rows>0)
			   {
				while($row=$result->fetch_assoc())
				{
					?>
					<tr>
					<td><?php echo $i;$i++;?></td>
					<td><?php echo $row["adate"];$adate=$row["adate"];?></td>
                    <td>
						<?php
						$query="select `$adate` from add_stu where `$adate`=`$adate` and tea_eml='$teeml' and stu_eml='$eml'";
						$result1=$conn->query($query);
                        if($result1->num_rows>0)
                        {
							$row=$result1->fetch_assoc();
							echo $row["$adate"];
							
							// if($row["$adate"]==""){
								
                            //      echo "Not taken yet";
							// 	 return;
							// }

							
							
						}
						?>
					</td>

					<?php

				}



				
			}else{
				?>
				<p id="ndf">No data found!</p>
				<?php
				
			}
           
			 ?>
	    
		
		</tr>
	 </table>
	
</div>


<?php
 }
?>










			

					
				</div>
			</div>
		</div>
	</div>












</body>
</html>
