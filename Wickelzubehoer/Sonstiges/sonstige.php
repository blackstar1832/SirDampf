<html lang="en">
<head>
    <title>Sir Dampf</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <style>
        #header {
            padding: 0;
            margin: 0;
        }
        #filterSideBar{
            padding:0;
            display: inline-block;
            vertical-align: top;
            width: 15%;
        }
        #articleContainer{
            padding:0;
            display: inline-block;
            width: 84.7%;
        }
        #article{
            padding: 0;
            margin: 10px;
            display: inline-block;
            width: 22% ;
        }


        footer {
            background-color: #f2f2f2;
            margin-bottom: 0px;
        }
        .affix {
            top: 0;
            width: 100%;
        }
        .affix +, .container-fluid {
            padding-top: 70px;
        }

    </style>


</head>

<body>
<?php
//hier ändern -----------------------------------------------------------------------------
include('utilSonstiges.php');
set_include_path('C:\xampp\htdocs\SirDampf');
include('header.php');
include('databaseConnection.php');
include("utilSD.php");
?>
<div class ="container-fluid" id="wrapper" style="padding-top: 70px;">
    <div id="filterSideBar">
        <?php
        //hier muss was geändert werden   ---------------------------------------------------
        set_include_path('C:\xampp\htdocs\SirDampf\Wickelzubehoer');
        include('sonstigeFilter.php');
        ?>
    </div>
    <div class="container" id="articleContainer">
        <?php
        //hier muss was geändert werden -----------------------------------------------------
        $sql_result = get_sonstiges($conn);

        while($row = mysqli_fetch_array($sql_result))
        {
            ?>
            <div class="container" id="article" style="margin: 10px; margin-top: 0; vertical-align: top">
                <div style="height: 200px;">
                    <!-- hier muss was geändert werden   ----------------------------------- -->
                    <a href="http://localhost\SirDampf\produktDetailAnsicht.php?kategorie=wickelzubehoer&id=<?php echo $row['id']; ?>"><img src=<?php echo $row['bild'];?> class="img-responsive" style="width:100%; height: 100%; background-size: cover" alt="Image"></a>
                </div>
                <div>
                    <div style="background-color: whitesmoke"><p style="margin-left: 5px"><b><?php echo $row['name'];?></b></p><p style="margin-left: 5px"><?php echo $row['preis'];?>€</p></div>
                </div>
            </div>
            <?php
        }
        ?>
    </div>
</div>
<div>
    <?php
    set_include_path('C:\xampp\htdocs\SirDampf');
    include('footer.php');
    ?>
</div>
</body>
</html>
