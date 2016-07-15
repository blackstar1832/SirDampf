<?php
include('databaseConnection.php');
include("utilSD.php");

if (isset($_POST["eMail"]) && isset($_POST["passwort"]))
{
    $eMail = $_POST["eMail"];
    $passwort = $_POST["passwort"];

    $user_info = get_user_by_email($eMail, $conn);
    if ($user_info)
    {
        if ($passwort == $user_info["passwort"])
        {
            session_start();
            $_SESSION["id"] = $user_info["kundennummer"];
            $_SESSION["name"] = json_decode($user_info["adresse"])->Vorname;
            $_SESSION['logedin'] = true;
            header("Location: http://localhost\SirDampf\home.php");
            exit();
        }
    }
    $login_failed = true;
}
?>