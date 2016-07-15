<?php
function get_draht($connection)
{
    $products_sql = "SELECT `id`, `name`, `preis`, `bild` FROM `wickelzubehoer` WHERE kategorie = 'draht'";
    $products_statement = $connection->prepare($products_sql);
    if(!$products_statement->execute())
    {
        die('There was an error running the query [' . $connection->error . ']');
    }
    $products_result = $products_statement->get_result();
    $products_statement->close();
    return $products_result;
}

function get_drahtFilter($connection)
{
    $products_sql = "SELECT  `preis`, `bewertung`, `marke`, `durchmesser`, `laenge`, `material` FROM `wickelzubehoer` WHERE kategorie = 'draht' ";
    $products_statement = $connection->prepare($products_sql);
    if(!$products_statement->execute())
    {
        die('There was an error running the query [' . $connection->error . ']');
    }
    $products_result = $products_statement->get_result();
    $products_statement->close();
    return $products_result;
}
