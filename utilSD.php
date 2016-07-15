<?php

function register_user($vorname, $nachname, $strasse, $plz, $stadt, $email, $passwort, $connection)
{
    $user_exists = check_user_exists($email, $connection) != null;
    if ($user_exists)
    {
    die("Du hasch dich scho regischtriert.");
    }
    $jsonAdresse = jsonEncode($vorname, $nachname, $strasse, $plz, $stadt);

    $registration_sql = "INSERT INTO `user`(adresse, email, passwort) VALUES (?, ?, ?);";
    $registration_statement = $connection->prepare($registration_sql);
    $registration_statement->bind_param("sss",$jsonAdresse, $email,$passwort);
    if(!$registration_statement->execute())
    {
    die('Es isch n Fehler uftrete [' . $connection->error . ']');
    }

    $registration_result = $registration_statement->get_result();
    $registration_statement->close();

    header("Location: http://localhost\SirDampf\home.php");
        exit();
}

function check_user_exists($email, $connection)
{
    $user_sql = "SELECT * FROM `user` WHERE email = ?";
    $user_statement = $connection->prepare($user_sql);
    $user_statement->bind_param("s", $email);
    if(!$user_statement->execute())
    {
    die('Es isch n Fehler uftrete [' . $connection->error . ']');
    }

    $user_result = $user_statement->get_result();
    $user_info = $user_result->fetch_assoc();
    $user_statement->close();

    return $user_info;
}

function jsonEncode($vorname, $nachname, $strasse, $plz, $stadt)
{
   class json {
       public $Vorname = "";
       public $Nachname = "";
       public $Strasse = "";
       public $Plz = "";
       public $Stadt  = "";
   }
	
   $e = new json();
   $e->Vorname = $vorname;
   $e->Nachname  = $nachname;
   $e->Strasse  = $strasse;
   $e->Plz  = $plz;
   $e->Stadt  = $stadt;

   return json_encode($e);

}

function get_user_by_email ($email, $connection)
{
    $user_sql = "SELECT * FROM `user` WHERE email = ?";
    $user_statement = $connection->prepare($user_sql);
    $user_statement->bind_param("s", $email);
    if(!$user_statement->execute())
    {
        die('Isch n fehler uftrete [' . $connection->error . ']');
    }

    $user_result = $user_statement->get_result();
    $user_info = $user_result->fetch_assoc();
    $user_statement->close();

    return $user_info;
}


function get_product_by_table ($tablename, $id, $connection)
{
    $product_sql = "SELECT * FROM $tablename WHERE id = ?";
    $product_statement = $connection->prepare($product_sql);
    $product_statement->bind_param("i", $id);
    if(!$product_statement->execute())
    {
        die('There was an error running the query [' . $connection->error . ']');
    }
    $product_result = $product_statement->get_result();
    $product_info = $product_result->fetch_assoc();
    $product_statement->close();
    return $product_info;
}