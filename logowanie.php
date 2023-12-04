<?php
    session_start();

    $baza = mysqli_connect('localhost', 'root', '', 'monopolowy');

    $imie = $_POST['imie'];
    $nazwisko = $_POST['nazwisko'];    
    $zapytanie1= "Select * from zarejestrowani_klienci where imie like '$imie' and nazwisko like '$nazwisko'";

    $wynik = mysqli_query($baza, $zapytanie1);

    if(mysqli_num_rows($wynik))
        $_SESSION['uzytkownik'] = mysqli_fetch_object($wynik);
    else
        echo "Podany użytkownik nie istnieje";

    // Pzyklad: $_SESSION['uzytkownik']->imie_klienta CHYBA TAK TO DZIAŁA
    mysqli_close($baza);
?>