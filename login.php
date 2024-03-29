<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Counselling Assistant</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300">  <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="css/bootstrap.min.css">                                  <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="fontawesome/css/fontawesome-all.min.css">                <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" type="text/css" href="slick/slick.css"/>                       <!-- http://kenwheeler.github.io/slick/ -->
    <link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
    <link rel="stylesheet" href="css/tooplate-style.css">                               <!-- Templatemo style -->
    <link rel="stylesheet" type="text/css" href="css/css_login.css">
    <script>document.documentElement.className="js";var supportsCssVars=function(){var e,t=document.createElement("style");return t.innerHTML="root: { --tmp-var: bold; }",document.head.appendChild(t),e=!!(window.CSS&&window.CSS.supports&&window.CSS.supports("font-weight","var(--tmp-var)")),t.parentNode.removeChild(t),e};supportsCssVars()||alert("Please view this in a modern browser such as latest version of Chrome or Microsoft Edge.");</script>
    
</head>

<body>
<?php

include("dbconnect.php");
$con = Openconn();
if(isset($_SESSION["user"]) &&  $_SESSION['loggedin'] == true)
{
	header('Location: index.php');
}

// function getUser()
// {
//     return $user;
// }

if(isset($_POST["submit"]))
{
    $users=$_POST["user"];
    $psw=$_POST["psw"];
	$sql = "SELECT * FROM userlogin WHERE Username='$users'";

	if(!$qsql = mysqli_query($con,$sql))
	{
		echo mysqli_error($con);
	}
	else
	{
		if(mysqli_num_rows($qsql)==1)
		{
			session_start();
			$rs = mysqli_fetch_array($qsql);
            $psww = $rs[1];
            //echo $rs[1];
            if(password_verify($psw, $psww))
            {
                $_SESSION["user"] = $rs['Username'];
                $_SESSION['loggedin'] = true;			
			    $_SESSION["password"] = $rs['Password'];	
                $query = "SELECT * from choicefilling where username like '".$_SESSION['user']."'";
                $res = mysqli_query($con, $query);
                if(mysqli_num_rows($res)==1) {
                    $row = mysqli_fetch_array($res);
                    $_SESSION['chk1']=$row[1];
                    $_SESSION['chk2']=$row[2];
                    $_SESSION['chk3']=$row[3];
                    $_SESSION['chk4']=$row[4];
                    $_SESSION['chk5']=$row[5];
                    $_SESSION['dur']=$row[6];
                    $_SESSION['region1']=$row[7];
                    $_SESSION['region2']=$row[8];
                    $_SESSION['region3']=$row[9];
                    $_SESSION['region4']=$row[10];
                    $_SESSION['region5']=$row[11];
                    $_SESSION['region6']=$row[12];
                    $_SESSION['br1']=$row[13];
                    $_SESSION['br2']=$row[14];
                    $_SESSION['br3']=$row[15];
                    $_SESSION['br4']=$row[16];
                    $_SESSION['br5']=$row[17];
                } else {
                    $_SESSION['chk1']="";
                    $_SESSION['chk2']="";
                    $_SESSION['chk3']="";
                    $_SESSION['chk4']="";
                    $_SESSION['chk5']="";
                    $_SESSION['dur']="";
                    $_SESSION['region1']="";
                    $_SESSION['region2']="";
                    $_SESSION['region3']="";
                    $_SESSION['region4']="";
                    $_SESSION['region5']="";
                    $_SESSION['region6']="";
                    $_SESSION['br1']="";
                    $_SESSION['br2']="";
                    $_SESSION['br3']="";
                    $_SESSION['br4']="";
                    $_SESSION['br5']="";
                }
			    header('Location: index.php', true, 307);
            }
            else 
            {
                echo "<script>alert('Wrong Password entered!')</script>";
            }
        }
		else
		{
            //echo $_SESSION["user"];
			echo "<script>alert('Username does not exist!')</script>";	
		}
	}
}
?>
    <div id="tm-bg"></div>
    <!-- <div id="tm-wrap">
        <div class="tm-main-content"> -->
            <!-- <div class="container tm-site-header-container"> -->
                
                <fieldset style = "width: 45vw; margin:5vw 25vw ">
                    <form method="POST" action="#">
                        <div class="new">
                            <div class="white">
                        <!-- <div class="left1"><br>
                       
                      </div> -->
                    
                      <div class="container">
                             <div class="center family"><h2> Student's Login</h2><br></div>
                        <label for="user"><div class="family">Username</div></label>
                        <input type="text" size="4" placeholder="Enter Username" name="user" required>
                    
                        <label for="psw"><div class="family">Password</div></label>
                        <input type="password" placeholder="Enter Password" name="psw" required>
                            <div class="black">
                              <br><button name="submit" type="submit" class="submit family">Login</button>
                        </div>
                    <div class="align">
                        <div class="family"><br>Not registered yet ? <a href="signup.php">Sign Up </a> <br>
                        For Admin login, <a href="adminlogin.php">Click here </a> 
                        </div>
                    
                      </div>
                    </form>

                <!-- </div>                 -->
            <!-- </div>
          
        </div> .tm-main-content   -->
    <!-- </div> -->
    <!-- load JS -->
    <script src="js/jquery-3.2.1.slim.min.js"></script>         <!-- https://jquery.com/ -->    
    <script src="slick/slick.min.js"></script>                  <!-- http://kenwheeler.github.io/slick/ -->  
    <script src="js/anime.min.js"></script>                     <!-- http://animejs.com/ -->
    <script src="js/main.js"></script>  
    <script>      

        function setupFooter() {
            var pageHeight = $('.tm-site-header-container').height() + $('footer').height() + 100;

            var main = $('.tm-main-content');

            if($(window).height() < pageHeight) {
                main.addClass('tm-footer-relative');
            }
            else {
                main.removeClass('tm-footer-relative');   
            }
        }

        /* DOM is ready
        ------------------------------------------------*/
        $(function(){

            setupFooter();

            $(window).resize(function(){
                setupFooter();
            });

            $('.tm-current-year').text(new Date().getFullYear());  // Update year in copyright           
        });

    </script>             

</body>



</html>