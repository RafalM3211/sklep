<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
        <meta charset="UTF-8"/>
        <title>Sklep monopolowy</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
        <link rel="shortcut icon" href="public/image/favicon.ico" type="image/x-icon">
        <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link href="./style/lightbox.min.css" rel="stylesheet" />
        <script src="./style/lightbox-plus-jquery.min.js"></script> <!--https://lokeshdhakar.com/projects/lightbox2/-->
            <script>
                lightbox.option({
                'resizeDuration': 600,
                'wrapAround': true,
                'alwaysShowNavOnTouchDevice': true,
                'albumLabel': "Obraz %1 z %2"
                })
            </script>
        <style>
            @import url('https://fonts.cdnfonts.com/css/aileron');
        </style>
    </head>
    <body>
        <svg id="wave" style="transform:rotate(180deg); transition: 0.3s;" viewBox="0 0 1440 190" version="1.1" xmlns="http://www.w3.org/2000/svg"><defs><linearGradient id="sw-gradient-0" x1="0" x2="0" y1="1" y2="0"><stop stop-color="rgba(255, 255, 255, 1)" offset="0%"></stop><stop stop-color="rgba(255, 255, 255, 1)" offset="100%"></stop></linearGradient></defs><path style="transform:translate(0, 0px); opacity:1" fill="url(#sw-gradient-0)" d="M0,114L120,114C240,114,480,114,720,107.7C960,101,1200,89,1440,72.8C1680,57,1920,38,2160,41.2C2400,44,2640,70,2880,91.8C3120,114,3360,133,3600,136.2C3840,139,4080,127,4320,107.7C4560,89,4800,63,5040,44.3C5280,25,5520,13,5760,9.5C6000,6,6240,13,6480,19C6720,25,6960,32,7200,44.3C7440,57,7680,76,7920,85.5C8160,95,8400,95,8640,98.2C8880,101,9120,108,9360,120.3C9600,133,9840,152,10080,142.5C10320,133,10560,95,10800,82.3C11040,70,11280,82,11520,98.2C11760,114,12000,133,12240,139.3C12480,146,12720,139,12960,129.8C13200,120,13440,108,13680,85.5C13920,63,14160,32,14400,22.2C14640,13,14880,25,15120,50.7C15360,76,15600,114,15840,107.7C16080,101,16320,51,16560,47.5C16800,44,17040,89,17160,110.8L17280,133L17280,190L17160,190C17040,190,16800,190,16560,190C16320,190,16080,190,15840,190C15600,190,15360,190,15120,190C14880,190,14640,190,14400,190C14160,190,13920,190,13680,190C13440,190,13200,190,12960,190C12720,190,12480,190,12240,190C12000,190,11760,190,11520,190C11280,190,11040,190,10800,190C10560,190,10320,190,10080,190C9840,190,9600,190,9360,190C9120,190,8880,190,8640,190C8400,190,8160,190,7920,190C7680,190,7440,190,7200,190C6960,190,6720,190,6480,190C6240,190,6000,190,5760,190C5520,190,5280,190,5040,190C4800,190,4560,190,4320,190C4080,190,3840,190,3600,190C3360,190,3120,190,2880,190C2640,190,2400,190,2160,190C1920,190,1680,190,1440,190C1200,190,960,190,720,190C480,190,240,190,120,190L0,190Z"></path></svg>

        <div class="section-one">
            <nav>
                <a href="index.html" class="glowny">
                    <img class="logo" src="public/image/logo.png" alt="logo"/>
                    <span class="title">Sklep monopolowy</span>
                </a>
                <ul class="menu">
                    <a href="#news"><li class="choosen">o firmie</li></a>
                    <a href="#best"><li>Bestsellery</li></a>
                    <a href="#formular"><li>formularz</li></a>
                    <a href="#"><li>logowanie</li></a>
                    <a href="#"><li>kontakt</li></a>
                    <li>
                        <form class="search" action="search.php" method="POST" >
                            <input type="text" name="search-text" placeholder="Wyszukaj" size="6"/>
                            <label>
                                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" viewBox="0 0 24 24" style="fill: rgba(31, 50, 68, 1);"><path d="M19.023 16.977a35.13 35.13 0 0 1-1.367-1.384c-.372-.378-.596-.653-.596-.653l-2.8-1.337A6.962 6.962 0 0 0 16 9c0-3.859-3.14-7-7-7S2 5.141 2 9s3.14 7 7 7c1.763 0 3.37-.66 4.603-1.739l1.337 2.8s.275.224.653.596c.387.363.896.854 1.384 1.367l1.358 1.392.604.646 2.121-2.121-.646-.604c-.379-.372-.885-.866-1.391-1.36zM9 14c-2.757 0-5-2.243-5-5s2.243-5 5-5 5 2.243 5 5-2.243 5-5 5z"></path></svg>
                                <input class="search-button" type="submit" />
                            </label>
                        </form>
                    </li>
                </ul>
            </nav>
        </div>

        <main class="section-two">
            <div class="container">
                <?php
                    try{
                        if(isset($_POST["search-text"])){
                            $searchText=$_POST["search-text"];
    
                            $conn=mysqli_connect("localhost", "root", "", "monopolowy");
    
                            $sql="SELECT * FROM `produkty` WHERE nazwa_produktu LIKE '%$searchText%';";
                            $res=mysqli_query($conn, $sql);
                            if(mysqli_num_rows($res)==0){
                                echo "
                                    <div class='not-found'>
                                        <h3>Brak wyników wyszukiwania</h3>
                                        <p>Spróbuj wyszukać inny produkt</p>
                                    </div>
                                ";
                            }
                            while($row=mysqli_fetch_assoc($res)){
                                $name=$row['nazwa_produktu'];
                                $price=$row['cena_brutto'];
                                $type=$row['typ_alkoholu'];
                                $producer=$row['producent'];
                                $remainingCount=$row['ilosc_magazyn'];

                                $typeClass=strtolower($type);
                                if($typeClass=="wódka") $typeClass="wodka";

                                echo "
                                <div class='item'>
                                <img src='./public/image/products/$typeClass.jpg' alt='delicje' />
                                <div class='left'>
                                        <p class='name'>$name</p>
                                        <p class='producer'>$producer</p>
                                        <p class='type $typeClass'>$type</p>
                                </div>
                                <div class='right'>
                                    <p class='price'>$price zł</p>
                                    <p class='remaining-text'>w magazynie pozostało:</p>
                                    <p class='remaining'>$remainingCount</p>
                                </div>
                            </div>
                                ";
                            }
    
                        }
                    }
                    catch(Exception $e){
                        echo $e;
                    }

                    
                ?>
            </div>
        </main>

<svg id="wave" style="transform:rotate(0deg); transition: 0.3s; background-color: #fff0;" viewBox="0 0 1440 490" version="1.1" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="sw-gradient-0" x1="0" x2="0" y1="1" y2="0">
      <stop stop-color="#fff" offset="100%"></stop>
      <stop stop-color="#fff" offset="100%"></stop>
    </linearGradient>
  </defs>
  <path style="transform:translate(0, 0px); opacity:1" fill="#1f3244" d="M0,196L120,196C240,196,480,196,720,179.7C960,163,1200,131,1440,114.3C1680,98,1920,98,2160,122.5C2400,147,2640,196,2880,212.3C3120,229,3360,212,3600,220.5C3840,229,4080,261,4320,285.8C4560,310,4800,327,5040,326.7C5280,327,5520,310,5760,310.3C6000,310,6240,327,6480,351.2C6720,376,6960,408,7200,424.7C7440,441,7680,441,7920,367.5C8160,294,8400,147,8640,122.5C8880,98,9120,196,9360,261.3C9600,327,9840,359,10080,326.7C10320,294,10560,196,10800,155.2C11040,114,11280,131,11520,179.7C11760,229,12000,310,12240,351.2C12480,392,12720,392,12960,375.7C13200,359,13440,327,13680,326.7C13920,327,14160,359,14400,367.5C14640,376,14880,359,15120,351.2C15360,343,15600,343,15840,285.8C16080,229,16320,114,16560,89.8C16800,65,17040,131,17160,163.3L17280,196L17280,490L17160,490C17040,490,16800,490,16560,490C16320,490,16080,490,15840,490C15600,490,15360,490,15120,490C14880,490,14640,490,14400,490C14160,490,13920,490,13680,490C13440,490,13200,490,12960,490C12720,490,12480,490,12240,490C12000,490,11760,490,11520,490C11280,490,11040,490,10800,490C10560,490,10320,490,10080,490C9840,490,9600,490,9360,490C9120,490,8880,490,8640,490C8400,490,8160,490,7920,490C7680,490,7440,490,7200,490C6960,490,6720,490,6480,490C6240,490,6000,490,5760,490C5520,490,5280,490,5040,490C4800,490,4560,490,4320,490C4080,490,3840,490,3600,490C3360,490,3120,490,2880,490C2640,490,2400,490,2160,490C1920,490,1680,490,1440,490C1200,490,960,490,720,490C480,490,240,490,120,490L0,490Z"></path>
</svg>


    
</section>
</body>
</html>


