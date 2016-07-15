<html lang="en">
<head>
    <title>Sir Dampf</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="./style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <style>
        #header {
            margin: 1%;
            padding:0;
            width: 100%;;
        }
        #beschreibung{
            margin: 1%;
            padding:0;
            width: 100%;;
        }
        #bild{
            padding:0;
            margin: 0;
            float: left;
            width: 30%;
        }
        #infoFeld{
            padding:0;
            margin-left: 1%;
            float: left;
            width: 67%;
        }
        #kurzInfo{
            margin-left: 50px;
            width: 60%;
        }
        #preis{
            float: left;
        }
        #inCart{
            margin-right: 8%;
            float: right;
        }

       footer {
            background-color: #f2f2f2;
            margin-bottom: 0px;
        }
    </style>
</head>


<body>
<?php
include('header.php');
include('databaseConnection.php');
include("utilSD.php");
$tablename = $_GET['kategorie'];
$productID = $_GET['id'];
$product = get_product_by_table($tablename, $productID, $conn);
?>
<div id="header" class="container" style="margin: 2%;">
    <div id="bild" class="container">
        <div><img src=<?php echo $product['bild']; ?> class="img-responsive" style="height: 40%;width:100%; background-size: cover" alt="Image"></div>
    </div>

    <div id="infoFeld" class="container" style="height: 40%">
        <h3 id="artikelName"><?php echo $product['name']; ?></h3>
        <div id="kurzInfo" class="container" style="height: 65%">
            <p>
                <?php echo $product['kurzbeschreibung']; ?>
            </p>
        </div>
        <div style="vertical-align: bottom">
            <h4 id="preis">Preis: <?php echo $product['preis']; ?><h4>
            <button id="inCart" type="button" class="btn btn-primary">In den Warenkorb</button>
        </div>
    </div>
</div>
<div  id="beschreibung" class="container">
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#produktbeschreibung">Beschreibung</a></li>
        <li><a data-toggle="tab" href="#technischeDetails">Technische Daten</a></li>
        <li><a data-toggle="tab" href="#bewertungen">Kundenrezensionen</a></li>
    </ul>

    <div class="tab-content">
        <div id="produktbeschreibung" class="tab-pane fade in active">
            <h3>Beschreibung</h3>
            <p><?php echo $product['beschreibung']; ?></p>
        </div>
        <div id="technischeDetails" class="tab-pane fade">
            <h3>Technische Daten</h3>
            <p><?php echo $product['technischeDaten']; ?></p>
        </div>
        <div id="bewertungen" class="tab-pane fade">
            <h3>Kundenrezensionen</h3>
            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
        </div>

    </div>
</div>
<?php
include('footer.php');
?>
</body>

