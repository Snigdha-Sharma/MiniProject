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

    <script>document.documentElement.className="js";var supportsCssVars=function(){var e,t=document.createElement("style");return t.innerHTML="root: { --tmp-var: bold; }",document.head.appendChild(t),e=!!(window.CSS&&window.CSS.supports&&window.CSS.supports("font-weight","var(--tmp-var)")),t.parentNode.removeChild(t),e};supportsCssVars()||alert("Please view this in a modern browser such as latest version of Chrome or Microsoft Edge.");</script>
    
</head>

<body>

<?php
    include("dbconnect.php");
    $con = Openconn();
    session_start();
    if($_SESSION["user"] &&  $_SESSION['loggedin'] = true)
    {
        
    }
    else{
        // echo "<script>alert('You need to login first.')</script>";
        header('Location: adminlogin.php');
    }

    
    $user = $_SESSION["user"];


    $name="";
    $homestate="";
    $mainsp1="";
    $advancedp1="";
    $gender="";
    $categ="";
    $email="";

    if(isset($_POST['logout'])) //button if clicked
    {
        session_destroy();
        header('location: http://localhost/CounsellingAssistant/adminlogin.php', true, 307);
    }
    if(isset($_POST['refresh'])){
        $qsql = "SELECT * FROM userdetails WHERE username='$user'";
        if(!$qsql = mysqli_query($con,$qsql))
        {
            echo mysqli_error($con);
        }
        else
        {
            if(mysqli_num_rows($qsql)==1)
            {
                $rs = mysqli_fetch_array($qsql);
                $name=$rs[1];
                $homestate=$rs[3];
                $mainsp1=$rs[4];
                $advancedp1=$rs[5];
                $gender=$rs[6];
                $categ=$rs[7];
                $email=$rs[8];
                // $name=$rs[1];
            }
        }
        // echo $name;
    }
?>


    <div id="tm-bg"></div>
    <div id="tm-wrap">
        
        <div class="tm-main-content">
            
            <div class="container tm-site-header-container">
                <div class="row">
                    
                    <div class="col-sm-12 col-md-6">
                        
                        <h3><b>Hello Admin <?php  echo $user;  ?>!</b></h3>
                        Make sure to update the database and enter valid entries only!
                        <br><br>
                        <form method="POST"><button type="submit" name="logout" class="btn logout"><b>Logout</b></button></form>

                    </div>
                    <!-- <div class="col-sm-12 col-md-3"></div> -->


                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                        
                        <div class="content">
                            
                            <div class="grid">
                                <div class="grid__item" id="home-link">
                                    <div class="product">
                                        <div class="tm-nav-link">
                                            <i class="fas fa-home fa-3x tm-nav-icon"></i>
                                            <span class="tm-nav-text">Dashboard</span>
                                            <div class="product__bg"></div>        
                                        </div>                                    
                                        <div class="product__description">
                                            <div class="row mb-3">
                                                <div class="col-12">
                                                    <h2 class="tm-page-title">Student Details</h2>
                                                    <form method="POST"><button type="submit" name="refresh" class="submit">Refresh</button></form>
                                                </div>
                                            </div>                                        
                                            <div class="row">
                                               <br>
                                                JEE Mains Rank : <?php  
                                                echo $mainsp1;  ?><br><br>
                                                JEE Advanced Rank : <?php  
                                                echo $advancedp1;  ?><br><br>  
                                                Name : <?php  
                                                echo $name;  ?><br><br>
                                                Email ID : <?php  
                                                echo $email;  ?><br><br>
                                                Category : <?php  
                                                echo $categ;  ?><br><br>
                                                Gender : <?php  
                                                echo $gender;  ?><br><br>
                                                <!-- Homestate : <br><br>                                -->
                                            </div>
                                        </div>
                                    </div>
                                </div>




                                <div class="grid__item" id="team-link">
                                    <div class="product">
                                        <div class="tm-nav-link">
                                            <i class="fas fa-users fa-3x tm-nav-icon"></i>
                                            <span class="tm-nav-text">Choice Filling</span>
                                            <div class="product__bg"></div>            
                                        </div>                                     
                                        <div class="product__description">
                                            <div class="p-sm-4 p-2">
                                                <div class="row mb-3">
                                                    <div class="col-12">
                                                        <h2 class="tm-page-title">Filters:</h2>        
                                                    </div>
                                                </div>
                                                <div class="row tm-reverse-sm">
                                                    <div class="col-sm-12 col-md-8 col-lg-8 col-xl-8">
                                                        <p class="mb-4">Vestibulum aliquet, arcu accumsan lobortis bibendum, justo velit efficitur lorem, at pulvinar mi justo nec lacus. Nullam et libero aliquet, luctus nunc sit amet, tincidunt ligula. Sed finibus ante sed tortor cursus, nec malesuada lectus interdum.</p>
                                                        <p class="mb-4">Sed ex turpis, vulputate in efficitur id, lobortis eget nibh. Pellentesque maximus ipsum eget velit imperdiet sodales. Suspendisse in blandit mi.</p>
                                                        <p class="mb-5">Pellentesque finibus felis risus, ut malesuada felis viverra at. Quisque accumsan in mi non hendrerit.</p>
                                                        <a href="#" class="btn tm-btn-gray">Read More</a>        
                                                    </div>                                                
                                                    <div class="col-sm-12 col-md-4 col-lg-4 col-xl-4 mb-lg-0 mb-sm-4 mb-4">
                                                        <img src="img/team.jpg" class="img-fluid">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="grid__item">
                                    <div class="product">
                                        <div class="tm-nav-link">
                                            <i class="fas fa-handshake fa-3x tm-nav-icon"></i>
                                            <span class="tm-nav-text">Update preferences</span>
                                            <div class="product__bg"></div>             
                                        </div>                                                                 
                                        <div class="product__description">
                                            <div class="p-sm-4 p-2">
                                                <div class="row mb-3">
                                                    <div class="col-12">
                                                        <h2 class="tm-page-title">Here</h2>        
                                                    </div>
                                                </div>
                                                <div class="row mb-3">
                                                    <div class="col-12">
                                                        <p>Aliquam interdum, nisl sed faucibus tempor, massa velit laoreet ipsum, et faucibus sapien magna at enim. Suspendisse a dictum tortor, vel rhoncus libero. Integer at lacus velit. Nullam dapibus venenatis placerat.</p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="p-sm-4 p-2 tm-img-container">
                                                            <div class="tm-img-slider" id="tmImgSlider">
                                                              <img src="img/gallery-img-01-tn.jpg" alt="Image" class="tm-slider-img">
                                                              <img src="img/gallery-img-02-tn.jpg" alt="Image" class="tm-slider-img">
                                                              <img src="img/gallery-img-03-tn.jpg" alt="Image" class="tm-slider-img">
                                                              <img src="img/gallery-img-04-tn.jpg" alt="Image" class="tm-slider-img">
                                                              <img src="img/gallery-img-05-tn.jpg" alt="Image" class="tm-slider-img">
                                                              <img src="img/gallery-img-06-tn.jpg" alt="Image" class="tm-slider-img">
                                                            </div>
                                                        </div>  
                                                    </div>
                                                </div>
                                            </div>
                                        </div>       
                                    </div>
                                </div>

                                <div class="grid__item">
                                    <div class="product">
                                        <div class="tm-nav-link">
                                            <i class="fas fa-comments fa-3x tm-nav-icon"></i>
                                            <span class="tm-nav-text">Any Query?</span>
                                            <div class="product__bg"></div>             
                                        </div>                                                              
                                        <div class="product__description">
                                            <div class="pt-sm-4 pb-sm-4 pl-sm-5 pr-sm-5 pt-2 pb-2 pl-3 pr-3">
                                                <div class="row mb-3">
                                                    <div class="col-12">
                                                        <h2 class="tm-page-title">Contact Us</h2>        
                                                    </div>
                                                </div>
                                                <div class="row mb-4">
                                                    <div class="col-12">
                                                        <p>For any queries/doubts related to choice filling, you can fill the form below. Our team will contact you as soon as possible.</p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-12">
                                                        <form action="index.html" method="post" class="contact-form">
                                                            <div class="row">
                                                                <div class="form-group col-md-6 col-lg-6 col-xl-6">
                                                                  <input type="text" id="contact_name" name="contact_name" class="form-control" placeholder="Name"  required/>
                                                                </div>
                                                                <div class="form-group col-md-6 col-lg-6 col-xl-6 tm-col-email">
                                                                  <input type="email" id="contact_email" name="contact_email" class="form-control" placeholder="Email"  required/>
                                                                </div>
                                                            </div>                                                        
                                                            <div class="form-group">
                                                              <textarea id="contact_message" name="contact_message" class="form-control" rows="9" placeholder="Message" required></textarea>
                                                            </div>
                                                            <button name="submit" type="submit" class="btn btn-primary tm-btn-submit">Submit</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>                                            
                    
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </div>                       
                    </div>
                </div>                
            </div>
          
        </div> <!-- .tm-main-content -->  
    </div>
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