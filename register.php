<?php

include('databaseConnection.php');
include('utilSD.php');

if(isset($_POST["vorname"]) && isset($_POST["nachname"]) && isset($_POST["strasse"]) && isset($_POST["plz"]) && isset($_POST["stadt"]) && isset($_POST["passwort"])){
    $vorname = $_POST["vorname"];
    $nachname = $_POST["nachname"];
    $strasse = $_POST["strasse"];
    $plz = $_POST["plz"];
    $stadt = $_POST["stadt"];
    $eMail = $_POST["eMail"];
    $passwort = $_POST["passwort"];
    echo "hgg";
}

register_user($vorname, $nachname, $strasse, $plz, $stadt, $eMail, $passwort, $conn);