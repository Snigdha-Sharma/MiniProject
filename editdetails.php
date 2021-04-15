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
    <link rel="stylesheet" type="text/css" href="css/signup.css">
    <script>document.documentElement.className="js";var supportsCssVars=function(){var e,t=document.createElement("style");return t.innerHTML="root: { --tmp-var: bold; }",document.head.appendChild(t),e=!!(window.CSS&&window.CSS.supports&&window.CSS.supports("font-weight","var(--tmp-var)")),t.parentNode.removeChild(t),e};supportsCssVars()||alert("Please view this in a modern browser such as latest version of Chrome or Microsoft Edge.");</script>
    
</head>

<body>

<?php
    
    include("dbconnect.php");
    include("updatelocation.php");
    $con = Openconn();
    session_start();
    if(!isset($_SESSION['user'])) {

        header('Location: login.php');
    }

    $editsql = "SELECT * from `userdetails` where username like '".$_SESSION['user']."'";
    // echo $editsql;
    if(!$qsql = mysqli_query($con, $editsql)) {
        header('Location: dash.php');
    } else {
        $rs = mysqli_fetch_array($qsql);
        $_SESSION['name'] = $rs['Name'];
        $_SESSION['email'] = $rs['email'];
        $_SESSION['seat'] =  $rs['Gender'];
        $_SESSION['state'] = $rs['HomeState'];
        $_SESSION['mains'] = $rs['MainsRank'];
        $_SESSION['advance'] = $rs['AdvancedRank'];
        $_SESSION['category'] = $rs['Category'];
        $_SESSION['city'] = $rs['city'];
        // echo $_SESSION['state'];
    }
    
    if(isset($_POST['enter'])) //button if clicked
    {
        $name= $_POST['name'];
        $email1=$_POST['email1'];
        $stype=$_POST['stype'];
        // $hsos= $_POST['hsos'];
        $category=$_POST['category'];
        $city = $_POST['city'];
        $state=$_POST['state'];
        $mair1= $_POST['mair1'];
        $aair1=$_POST['aair1'];
        // $mair2=$_POST['mair2'];
        // $aair2=$_POST['aair2'];

        // echo $name;
        $user=$_SESSION['user'];
        $latlan = getLatLan($city);
        // echo $latlan[0];
        // echo $latlan[1];
        $query = "SELECT * from latlan where username like '".$_SESSION['user']."'";
        // echo $query;
        $res = mysqli_query($con, $query);
        if(mysqli_num_rows($res)==1) {
            $query = "DELETE from latlan where username like '".$_SESSION['user']."'";
            // echo $query.'<br>';
            $res = mysqli_query($con, $query);
        }
        $query = "INSERT into latlan(username, city, lat, lon) values ('".$_SESSION['user']."', '".$city."', ".$latlan[0].", ".$latlan[1].")";
        // echo $query;
        $res = mysqli_query($con, $query);

        $query1 = "SELECT state_id from states WHERE Name='$state'";

        if(!$qsql = mysqli_query($con, $query1))
        {
            echo mysqli_error($con);
        }
        else
        {
            if(mysqli_num_rows($qsql)==1)
            {
                $rs = mysqli_fetch_array($qsql);
                $statenum=$rs[0];
                // $query = "INSERT INTO userdetails(username, Name, MainsRank, AdvancedRank, Gender, Category, email, HomeState)
                // VALUES ('$user','$name', '$mair1', '$aair1', '$stype', '$category', '$email1', $statenum)";
                $query = "UPDATE userdetails SET name='".$name."', city='".$city."', email='".$email1."', Gender='".$stype."', Category='".$category."', HomeState='".$statenum."', MainsRank='".$mair1."', AdvancedRank='".$aair1."' where username like '".$_SESSION['user']."'";
                // echo $query;
        
                if(mysqli_query($con, $query))
                {
                    // echo $psw;
                    // session_destroy();
                    header('location: http://localhost/CounsellingAssistant/index.php', true, 307);
                    exit();
                }
                else
                {
                    header('location: http://localhost/CounsellingAssistant/login.php', true, 307);
                    // echo "error in entering user details";
                    exit();
                }
            }
        }
    }

?>


    <div id="tm-bg"></div>
    <!-- <div id="tm-wrap">
        <div class="tm-main-content"> -->
            <!-- <div class="container tm-site-header-container"> -->
                
                <fieldset style = "width: 45vw; margin:5vw 25vw ">
                    <form method="post" action='#'>
                        <div class="container">
                          <h2 id='heading' class="family">Preferences</h2><br>
                      
                          <label for="name"><div class="family">Name</div></label><br>
                          <input type="text" placeholder="Enter Name" name="name" value="<?php echo $_SESSION['name']; ?>" required>
                      <br><br>
                          <label for="email1"><div class="family">Email ID</div></label><br>
                          <input type="email" placeholder="Enter Email" name="email1" value="<?php echo $_SESSION['email']; ?>">
                      <br><br>
                          <label for="stype"><div class="family">Seat Type</div></label><br>
                          <select name="stype">
                        <option value="Female-only (including Supernumerary)" <?php if($_SESSION['seat']=="Female-only (including Supernumerary)") echo "selected" ?>>Female-only (including Supernumerary)</option>
                        <option value="Gender-Neutral" <?php if($_SESSION['seat']=="Gender-Neutral") echo "selected" ?>>Gender-Neutral</option>
                        </select>
                        

                        <br><br>
                        <label for="category"><div class="family">Category</div></label>
                        <select name="category">
                        <?php
                            $sql = "SELECT * from `seat_type`";
                            $que = mysqli_query($con, $sql) or die(mysqli_error($con));
                            while($row = mysqli_fetch_array($que)) {
                                echo '<option value="'.$row['Name'].'"';
                                if($row['Name']==$_SESSION['category'])
                                    echo 'selected';
                                echo '>'.$row['Name'].'</option>';
                            }
                        ?>
                        </select>
                        <br><br>


                        <label for="state"><div class="family">Home State/Union Territory</div></label>
                        <select name="state">
                        <?php
                            $sql = "SELECT * from `states`";
                            $que = mysqli_query($con, $sql) or die(mysqli_error($con));
                            while($row = mysqli_fetch_array($que)) {
                                echo '<option value="'.$row['Name'].'"';
                                if($row['state_id']==$_SESSION['state'])
                                    echo 'selected';
                                echo '>'.$row['Name'].'</option>';
                            }
                        ?>
                        </select>

                        <br><br>
                        <label for="city"><div class="family">City</div></label><br>
                        <input type="text" placeholder="Enter Your City" name="city" value="<?php echo $_SESSION['city']; ?>" required>
                        <br>
                        <label for="mair1"><div class="family">JEE Mains AIR (Paper 1)</div></label><br>
                        <input type="text" placeholder="Enter JEE Mains AIR" name="mair1" value="<?php echo $_SESSION['mains']; ?>" required>
                        <br>
                        <label for="aair1"><div class="family">JEE Advanced AIR (Paper 1)</div></label><br>
                          <input type="text" placeholder="Enter JEE Advanced AIR" value="<?php echo $_SESSION['advance']; ?>" name="aair1">
                          <br>
                          <!-- <label for="mair2"><div class="family">JEE Mains AIR (Paper 2)</div></label><br>
                        <input type="text" placeholder="Enter JEE Mains AIR" name="mair2">
                        <br>
                        <label for="aair2"><div class="family">JEE Advanced AIR (Paper 2)</div></label><br>
                          <input type="text" placeholder="Enter JEE Advanced AIR" name="aair2"> -->

                      <br>
                      
                          <div class="clearfix"><br>
                            
                            <button type="submit" name="enter" class="submit family">Submit!</button>
                          </div>
                          <div>
                            <div class="align family"><br>Go back to<a class="family" href="login.php"> login page </a></div>
                        
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