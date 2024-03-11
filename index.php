<?php
session_start();
function encryptId($id)
{
  $key = "your_secret_key";  // Replace with a strong secret key
  $cipher = "aes-256-cbc";   // AES encryption with a 256-bit key in CBC mode

  $iv = openssl_random_pseudo_bytes(openssl_cipher_iv_length($cipher));
  $encryptedId = openssl_encrypt($id, $cipher, $key, 0, $iv);

  // Encode the encrypted data and IV for URL safety
  $encryptedId = base64_encode($iv . $encryptedId);

  return $encryptedId;
}
function decryptId($encryptedId)
{
  $key = "your_secret_key";  // Replace with the same secret key used for encryption
  $cipher = "aes-256-cbc";   // AES encryption with a 256-bit key in CBC mode

  // Decode the encrypted data and IV
  $data = base64_decode($encryptedId);
  $iv = substr($data, 0, openssl_cipher_iv_length($cipher));
  $encryptedId = substr($data, openssl_cipher_iv_length($cipher));

  // Decrypt the id
  $decryptedId = openssl_decrypt($encryptedId, $cipher, $key, 0, $iv);

  return $decryptedId;
}
?>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
  <!-- META DATA -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <script>
    function cars() {
      window.location.href = "./trick.php?mych=6";
    }

    function hotels() {
      window.location.href = "./trick.php?mych=7";
    }

    function profile() {
      window.location.href = "./trick.php?mych=2";
    }

    function logout() {
      window.location.href = "./trick.php?mych=1";
    }

    function userlogin() {
      window.location.href = "./trick.php?mych=3";
    }
  </script>
</head>

<body>
  <section id="home">
  </section>
  <!--[if lte IE 9]>
      <p class="browserupgrade">
        You are using an <strong>outdated</strong> browser. Please
        <a href="https://browsehappy.com/">upgrade your browser</a> to improve
        your experience and security.
      </p>
    <![endif]-->
  <?php
  include("assets/cssjs.php");
  ?>
  <!-- main-menu Start -->
  <header class="top-area">
    <div class="header-area">
      <div class="container">
        <div class="row">
          <div class="col-sm-2">
            <div class="logo">
              <a href="http://localhost/tt">
                <span>Take A Trip</span>
              </a>
            </div>
            <!-- /.logo-->
          </div>
          <!-- /.col-->
          <div class="col-sm-10">
            <div class="main-menu">
              <!-- Brand and toggle get grouped for better mobile display -->
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                  <i class="fa fa-bars"></i></button><!-- / button-->
              </div>
              <!-- /.navbar-header-->
              <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                  <li class="smooth-menu"><a href="#home">home</a></li>
                  <li class="smooth-menu">
                    <a href="#gallery">Destination</a>
                  </li>
                  <li class="smooth-menu"><a href="#pack">Packages </a></li>
                  <li class="smooth-menu">
                    <a href="#spo">Special Offer</a>
                  </li>

                  <li class="smooth-menu" onclick="cars();"><a href="">Cars </a></li>
                  <li class="smooth-menu" onclick="hotels();"><a href="">Hotels</a></li>
                  <li>
                    <!-- Changed by Anand -->
                    <form action="trick.php?mych=4" method="post">
                      <input type="submit" class="book-btn" value="Register" />
                    </form>
                    <!-- <button class="book-btn" action> book now  </button> -->
                  </li>
                  <!--/.project-btn-->
                  <?php
                  // Check if the user is logged in
                  if (isset($_SESSION['user_id'])) { ?>
                    <li class="smooth-menu" onclick="profile();"><a href="">Profile</a></li>
                    <li class="smooth-menu" onclick="logout();"><a href="">Logout</a></li>
                  <?php
                  } else { ?>
                    <li class="smooth-menu" onclick="userlogin();"><a href="">Login</a></li>
                  <?php } ?>
                </ul>
              </div>
              <!-- /.navbar-collapse -->
            </div>
            <!-- /.main-menu-->
          </div>
          <!-- /.col-->
        </div>
        <!-- /.row -->
        <div class="home-border"></div>
        <!-- /.home-border-->
      </div>
      <!-- /.container-->
    </div>
    <!-- /.header-area -->
  </header>
  <!-- /.top-area-->
  <!-- main-menu End -->

  <!--about-us start -->
  <section id="home" class="about-us">
    <div class="container">
      <div class="about-us-content">
        <div class="row">
          <div class="col-sm-12">
            <div class="single-about-us">
              <div class="about-us-txt">
                <h2>Life is a Journey, Explore it Enjoy it</h2>
                <h4 style="color: aliceblue">
                  All in one Place who loves Travelling.
                </h4>
                <!--/.about-btn-->
              </div>
              <!--/.about-us-txt-->
            </div>
            <!--/.single-about-us-->
          </div>
          <!--/.col-->
          <div class="col-sm-0">
            <div class="single-about-us"></div>
            <!--/.single-about-us-->
          </div>
          <!--/.col-->
        </div>
        <!--/.row-->
      </div>
      <!--/.about-us-content-->
    </div>
    <!--/.container-->
  </section>
  <!--/.about-us-->
  <!--about-us end -->

  <?php
  include("assets/travel_box.php");
  ?>

  <!--service start-->
  <section id="service" class="service">
    <div class="container">
      <div class="service-counter text-center">
        <div class="col-md-4 col-sm-4">
          <div class="single-service-box">
            <div class="service-img">
              <img src="assets/images/service/s1.png" alt="service-icon" />
            </div>
            <!--/.service-img-->
            <div class="service-content">
              <h2>
                <a href="#pack"> amazing tour packages </a>
              </h2>
              <p>
                Duis aute irure dolor in velit esse cillum dolore eu fugiat
                nulla.
              </p>
            </div>
            <!--/.service-content-->
          </div>
          <!--/.single-service-box-->
        </div>
        <!--/.col-->

        <div class="col-md-4 col-sm-4">
          <div class="single-service-box">
            <div class="service-img">
              <img src="assets/images/service/s2.png" alt="service-icon" />
            </div>
            <!--/.service-img-->
            <div class="service-content">
              <h2>
                <a href="#"> book top class hotel </a>
              </h2>
              <p>
                Duis aute irure dolor in velit esse cillum dolore eu fugiat
                nulla.
              </p>
            </div>
            <!--/.service-content-->
          </div>
          <!--/.single-service-box-->
        </div>
        <!--/.col-->

        <div class="col-md-4 col-sm-4">
          <div class="single-service-box">
            <div class="statistics-img">
              <img src="assets/images/service/cars.jpg" alt="service-icon" height="100px" width="100px" />
            </div>
            <!--/.service-img-->
            <div class="service-content">
              <h2>
                <a href="#"> online car booking </a>
              </h2>
              <p>
                Duis aute irure dolor in velit esse cillum dolore eu fugiat
                nulla.
              </p>
            </div>
            <!--/.service-content-->
          </div>
          <!--/.single-service-box-->
        </div>
        <!--/.col-->
      </div>
      <!--/.statistics-counter-->
    </div>
    <!--/.container-->
  </section>
  <!--/.service-->
  <!--service end-->

  <!--galley start-->
  <section id="gallery" class="gallery">
    <div class="container">
      <div class="gallery-details">
        <div class="gallary-header text-center">
          <h2>Top Destination in India by Regions</h2>
          <p>It’s a big world. Let’s explore it</p>
        </div>
        <!--/.gallery-header-->
        <div class="gallery-box">
          <div class="gallery-content">
            <div class="filtr-container">
              <div class="row">
                <?php
                include("assets/connection.php");

                $sql = "SELECT * FROM destinations ORDER BY destination_id";
                $result = mysqli_query($con, $sql);
                while ($row = mysqli_fetch_assoc($result)) {
                  $imageURL = 'assets/images/gallary/' . $row["image_url"];
                ?>
                  <div class="col-md-6">
                    <div class="filtr-item">
                      <img src="<?php echo $imageURL; ?>" alt="portfolio image" />
                      <div class="item-title">
                        <?php $encryptedId = encryptId($row['destination_id']); ?>
                        <a href="destination.php?id=<?php echo urlencode($encryptedId) ?>"><?php echo $row['region']; ?></a>
                        <?php
                        $r = $row['link'];
                        $sq = "select * from $r where availability=1";
                        $re = mysqli_query($con, $sq);
                        $nop = 0;
                        while (mysqli_fetch_array($re))
                          $nop++;
                        ?>
                        <p><span><?php echo $nop . " Places"; ?></span></p>
                      </div>
                      <!-- /.item-title -->
                    </div>
                    <!-- /.filtr-item -->
                  </div>
                  <!-- /.col -->
                <?php
                }
                ?>
              </div>
              <!-- /.row -->
            </div>
            <!-- /.filtr-container-->
          </div>
          <!-- /.gallery-content -->
        </div>
        <!--/.galley-box-->
      </div>
      <!--/.gallery-details-->
    </div>
    <!--/.container-->
  </section>
  <!--/.gallery-->
  <!--gallery end-->

  <!--packages start-->
  <section id="pack" class="packages">
    <div class="container">
      <div class="gallary-header text-center">
        <h2>special packages</h2>
        <p>Let us introduce you our popular packages.</p>
      </div>
      <!--/.gallery-header-->
      <div class="packages-content">
        <div class="row">
          <?php
          include("assets/connection.php");

          $sql = "SELECT * FROM packages ORDER BY id";
          $result = mysqli_query($con, $sql);
          while ($row = mysqli_fetch_assoc($result)) {
            $imageURL = 'assets/images/packages/' . $row["image"];
            if ($row['availability'] == 1) {
          ?>
              <div class="col-md-4 col-sm-6">
                <div class="single-package-item">
                  <img id="kdr" src="<?php echo $imageURL; ?>" alt="package-place" />
                  <div class="single-package-item-txt">
                    <h3><?php echo $row["name"]; ?>
                      <span class="pull-right">
                        <?php echo '₹' . $row["price"] . '/Day'; ?>
                      </span>
                    </h3>
                    <div class="packages-para">
                      <p>
                        <span><i class="fa fa-angle-right"></i><?php echo $row["duration"]; ?></span>
                        <i class="fa fa-angle-right"></i><?php echo $row["accommodation"]; ?> <!-- Additional car details can be added here -->
                      </p>
                      <p>
                        <span>
                          <i class="fa fa-angle-right"></i> <?php echo $row["transportation"]; ?></span>
                        <i class="fa fa-angle-right"></i><?php echo $row["food_facilities"]; ?>
                      </p>
                    </div>
                    <!--/.packages-para-->
                    <div class="packages-review">
                      <p>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <span>2540 reviews</span>
                      </p>
                    </div>
                    <!--/.packages-review-->
                    <div class="about-btn">
                      <?php
                      if (isset($_SESSION['user_id'])) {
                        $encryptedId = encryptId($row['id']) ?>
                        <a href="booking.php?id=<?php echo urlencode($encryptedId); ?>&mych=packages"><button type="submit" class="about-view packages-btn">book now</button></a>
                      <?php
                      } else { ?>
                        <button type="submit" class="about-view packages-btn" onclick="userlogin();">book now</button>
                        <!--/.about-btn-->
                      <?php } ?>
                    </div>
                    <!--/.about-btn-->
                  </div>
                  <!--/.single-package-item-txt-->
                </div>
                <!--/.single-package-item-->
              </div>
              <!--/.col-->
          <?php
            }
          }
          ?>
        </div>
        <!--/.row-->
      </div>
      <!--/.packages-content-->
    </div>
    <!--/.container-->
  </section>
  <!--/.packages-->
  <!--packages end-->

  <!-- testemonial Start -->
  <section class="testemonial">
    <div class="container">
      <div class="gallary-header text-center">
        <h2>clients reviews</h2>
        <p>See what's our customer think of us.</p>
      </div>
      <!--/.gallery-header-->

      <div class="owl-carousel owl-theme" id="testemonial-carousel">
        <div class="home1-testm item">
          <div class="home1-testm-single text-center">
            <div class="home1-testm-img">
              <img src="assets/images/client/shubham.JPG" alt="img" />
            </div>
            <!--/.home1-testm-img-->
            <div class="home1-testm-txt">
              <span class="icon section-icon">
                <i class="fa fa-quote-left" aria-hidden="true"></i>
              </span>
              <p>One can find best packages to tour India</p>
              <h3>
                <a href="#"> Shubham Seth </a>
              </h3>
              <h4>Sarnath, India</h4>
            </div>
            <!--/.home1-testm-txt-->
          </div>
          <!--/.home1-testm-single-->
        </div>
        <!--/.item-->

        <div class="home1-testm item">
          <div class="home1-testm-single text-center">
            <div class="home1-testm-img">
              <img src="assets/images/client/sumit.JPG" alt="img" />
            </div>
            <!--/.home1-testm-img-->
            <div class="home1-testm-txt">
              <span class="icon section-icon">
                <i class="fa fa-quote-left" aria-hidden="true"></i>
              </span>
              <p>This is one of best website for traveller.</p>
              <h3>
                <a href="#"> Sumit Kumar </a>
              </h3>
              <h4>Mumbai, India</h4>
            </div>
            <!--/.home1-testm-txt-->
          </div>
          <!--/.home1-testm-single-->
        </div>
        <!--/.item-->

        <div class="home1-testm item">
          <div class="home1-testm-single text-center">
            <div class="home1-testm-img">
              <img src="assets/images/client/anand.JPG" alt="img" />
            </div>
            <!--/.home1-testm-img-->
            <div class="home1-testm-txt">
              <span class="icon section-icon">
                <i class="fa fa-quote-left" aria-hidden="true"></i>
              </span>
              <p>Best website to book hotels. Very good</p>
              <h3>
                <a href="#"> Anand Gupta </a>
              </h3>
              <h4>Varanasi, India</h4>
            </div>
            <!--/.home1-testm-txt-->
          </div>
          <!--/.home1-testm-single-->
        </div>
        <!--/.item-->

        <div class="home1-testm item">
          <div class="home1-testm-single text-center">
            <div class="home1-testm-img">
              <img src="assets/images/client/aman.JPG" alt="img" />
            </div>
            <!--/.home1-testm-img-->
            <div class="home1-testm-txt">
              <span class="icon section-icon">
                <i class="fa fa-quote-left" aria-hidden="true"></i>
              </span>
              <p>Best hotels at reasonable rate at one place</p>
              <h3>
                <a href="#"> Aman Tripathi </a>
              </h3>
              <h4>Ayodhya, India</h4>
            </div>
            <!--/.home1-testm-txt-->
          </div>
          <!--/.home1-testm-single-->
        </div>
        <!--/.item-->

        <div class="home1-testm item">
          <div class="home1-testm-single text-center">
            <div class="home1-testm-img">
              <img src="assets/images/client/sonali.jpg" alt="img" />
            </div>
            <!--/.home1-testm-img-->
            <div class="home1-testm-txt">
              <span class="icon section-icon">
                <i class="fa fa-quote-left" aria-hidden="true"></i>
              </span>
              <p>Lovely Trip and very respectful people with full support</p>
              <h3>
                <a href="#"> Sonali </a>
              </h3>
              <h4>Uttrakhand, India</h4>
            </div>
            <!--/.home1-testm-txt-->
          </div>
          <!--/.home1-testm-single-->
        </div>
        <!--/.item-->

        <div class="home1-testm item">
          <div class="home1-testm-single text-center">
            <div class="home1-testm-img">
              <img src="assets/images/client/abhilasha.jpg" alt="img" />
            </div>
            <!--/.home1-testm-img-->
            <div class="home1-testm-txt">
              <span class="icon section-icon">
                <i class="fa fa-quote-left" aria-hidden="true"></i>
              </span>
              <p>Just looking like a WoW. Amazing and wow wow</p>
              <h3>
                <a href="#"> Abhilasha </a>
              </h3>
              <h4>Kerala, India</h4>
            </div>
            <!--/.home1-testm-txt-->
          </div>
          <!--/.home1-testm-single-->
        </div>
        <!--/.item-->
      </div>
      <!--/.testemonial-carousel-->
    </div>
    <!--/.container-->
  </section>
  <!--/.testimonial-->
  <!-- testemonial End -->

  <!--special-offer start-->
  <section id="spo" class="special-offer">
    <div class="container">
      <div class="special-offer-content">
        <div class="row">
          <div class="col-sm-8">
            <div class="single-special-offer">
              <div class="single-special-offer-txt">
                <h2>Manali-Shimla</h2>
                <div class="packages-review special-offer-review">
                  <p>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <span>2514 review</span>
                  </p>
                </div>
                <!--/.packages-review-->
                <div class="packages-para special-offer-para">
                  <p>
                    <span>
                      <i class="fa fa-angle-right"></i> 7 days 8 nights
                    </span>
                    <span> <i class="fa fa-angle-right"></i> 3 person </span>
                    <span>
                      <i class="fa fa-angle-right"></i> 5 star accomodation
                    </span>
                  </p>
                  <p>
                    <span>
                      <i class="fa fa-angle-right"></i> transportation
                    </span>
                    <span>
                      <i class="fa fa-angle-right"></i> food facilities
                    </span>
                    <span>
                      <i class="fa fa-angle-right"></i> sightseeing
                    </span>
                  </p>
                  <p class="offer-para">
                    The best of Himachal Pradesh is concealed in Shimla and
                    Manali, and therefore our tour package makes you explore
                    both of these wonderful places. With our customized
                    Shimla-Manali tour package, you are tendered an
                    opportunity to explore some splendid natural marvels. On
                    one hand Shimla leaves you awe-stuck with its mesmerizing
                    surroundings, and on the other hand the majestic mountains
                    of Manali dare you for some thrill-filled challenges. So
                    if you are willing to taste both splendor and adventure at
                    one place, avail this tour package right away.
                  </p>
                </div>
                <!--/.packages-para-->
                <div class="offer-btn-group">
                  <div class="about-btn">
                    <button class="about-view packages-btn offfer-btn">
                      make tour
                    </button>
                  </div>
                  <!--/.about-btn-->
                  <div class="about-btn">
                    <button class="about-view packages-btn">book now</button>
                  </div>
                  <!--/.about-btn-->
                </div>
                <!--/.offer-btn-group-->
              </div>
              <!--/.single-special-offer-txt-->
            </div>
            <!--/.single-special-offer-->
          </div>
          <!--/.col-->
          <div class="col-sm-4">
            <div class="single-special-offer">
              <div class="single-special-offer-bg">
                <img src="assets/images/offer/manali.jpg" alt="offer-shape" />
              </div>
              <!--/.single-special-offer-bg-->
              <div class="single-special-shape-txt">
                <br /><br /><br /><br />
                <h3>special offer</h3>
                <h4><span>30%</span><br />off</h4>
                <p><span>₹31,500</span><br />regular ₹45,000</p>
              </div>
              <!--/.single-special-shape-txt-->
            </div>
            <!--/.single-special-offer-->
          </div>
          <!--/.col-->
        </div>
        <!--/.row-->
      </div>
      <!--/.special-offer-content-->
    </div>
    <!--/.container-->
  </section>
  <!--/.special-offer end-->
  <!--special-offer end-->

  <!--contacus start-->
  <section id="subs">
    <div class="contact" id="contact">
      <div class="container">
        <h2 class="heading">Contact</h2>
        <form action="process_contact.php" method="post" name="contactForm" id="contactForm">
          <div class="col-lg-4 col-md-4 col-sm-4" data-aos="zoom-in">
            <div class="control-group form-group">
              <div class="controls">
                <label>FULL NAME:</label>
                <input type="text" name="name" id="name" class="form-control" required="" data-validation-required-message="Please enter your name." />
                <p class="help-block"></p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-4" data-aos="zoom-in">
            <div class="control-group form-group">
              <div class="controls">
                <label>PHONE NUMBER:</label>
                <input type="text" name="phone" id="phone" class="form-control" required="" data-validation-required-message="Please enter your phone number." />
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-4" data-aos="zoom-in">
            <div class="control-group form-group">
              <div class="controls">
                <label>EMAIL ADDRESS:</label>
                <input type="text" name="email" id="email" class="form-control" required="" data-validation-required-message="Please enter your email address." />
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-4" data-aos="zoom-in">
            <div class="control-group form-group">
              <div class="controls">
                <label>YOUR STATE:</label>
                <input type="text" name="email" id="email" class="form-control" required="" data-validation-required-message="Please enter your email address." />
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-4" data-aos="zoom-in">
            <div class="control-group form-group">
              <div class="controls">
                <label>PREFERRED DESTINATION:</label>
                <input type="text" name="email" id="email" class="form-control" required="" data-validation-required-message="Please enter your email address." />
              </div>
            </div>
          </div>
          <div class="clearfix"></div>
          <div class="col-lg-12" data-aos="zoom-in">
            <div class="control-group form-group">
              <div class="controls">
                <label>MESSAGE:</label>
                <textarea name="message" id="message" rows="10" cols="100" class="form-control" required="" data-validation-required-message="Please enter your message" maxlength="999" style="resize: none"></textarea>
              </div>
            </div>
            <div id="success"></div>
          </div>
          <div class="col-lg-12" style="text-align:center" data-aos="zoom-in">
            <input type="submit" name="btnEmail" value="Send Message" class="button-primary" />
          </div>
          <div class="clearfix"></div>
        </form>
      </div>
    </div>
    <!-- Contact Information -->
    <div class="contact-info">
      <div class="contact-info-left">
        <span class="telephone">Telephone: (+91) 555-149-4567</span>
      </div>
      <div class="contact-info-right">
        <span class="email">Email: takeatrip@gmail.com</span>
      </div>
    </div>
  </section>
  <!--contactus end-->
  <?php
  include("assets/footer.php");
  ?>
</body>
</html>