<?php
function get_eZigaretten($connection)
{
    $products_sql = "SELECT `id`, `name`, `preis`, `bild` FROM `ezigaretten` ";
    $products_statement = $connection->prepare($products_sql);
    if(!$products_statement->execute())
    {
        die('There was an error running the query [' . $connection->error . ']');
    }
    $products_result = $products_statement->get_result();
    $products_statement->close();
    return $products_result;
}

function get_eZigarettenFilter($connection)
{
    $products_sql = "SELECT  `preis`, `bewertung`, `marke` FROM `ezigaretten`";
    $products_statement = $connection->prepare($products_sql);
    if(!$products_statement->execute())
    {
        die('There was an error running the query [' . $connection->error . ']');
    }
    $products_result = $products_statement->get_result();
    $products_statement->close();
    return $products_result;
}
