<?php
session_start();
?>

<div class="jumbotron" style="height: 200px; margin-bottom: 0; z-index: 9999">
    <div class="text-center" style=" margin-top:0; margin-bottom: 5px">
        <h1>Sir Dampf</h1>
    </div>
</div>

<nav class="navbar navbar-inverse" style="margin-bottom:5px; z-index: 10000">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Sir Dampf</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar" >
            <ul class ="nav navbar-nav">
                <li><a  href="http://localhost\SirDampf\home.php">Home</a></li>
                <li><a href="http://localhost\SirDampf\eZigaretten\eZigaretten.php">E-Zigaretten</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Verdampfer<span class="caret"></span></a>
                    <ul class="dropdown-menu" style="background-color: darkslategrey";>
                        <li><a href="http://localhost\SirDampf\Verdampfer\CoilVerdampfer\coilVerdampfer.php" style="color: lightgrey">Coil Verdampfer</a></li>
                        <li><a href="http://localhost\SirDampf\Verdampfer\CoilVerdampferKoepfe\coilVerdampferKoepfe.php" style="color: lightgrey">Coil Verdampferköpfe</a></li>
                        <li><a href="http://localhost\SirDampf\Verdampfer\Selbstwickelverdampfer\selbstwickelverdampfer.php" style="color: lightgrey">Selbstwickler</a></li>
                    </ul>
                </li>
                <li><a href="http://localhost\SirDampf\AkkutraegerNBoxMods\akkutraegerNBoxMods.php">Akkuträger & Box Mods</a></li>
                <li><a href="http://localhost\SirDampf\Liquid\liquid.php">Liquid</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Mischen<span class="caret"></span></a>
                    <ul class="dropdown-menu" style="background-color: darkslategrey">
                        <li><a href="http://localhost\SirDampf\Mischen\Aromen\aromen.php" style="color: lightgrey">Aromen</a></li>
                        <li><a href="http://localhost\SirDampf\Mischen\Basen\basen.php" style="color: lightgrey">Basen</a></li>
                        <li><a href="http://localhost\SirDampf\Mischen\Zubehoer\zubehoer.php" style="color: lightgrey">Mischzubehör</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Wickelzubehör<span class="caret"></span></a>
                    <ul class="dropdown-menu" style="background-color: darkslategrey">
                        <li><a href="http://localhost\SirDampf\Wickelzubehoer\Draht\draht.php" style="color: lightgrey">Draht</a></li>
                        <li><a href="http://localhost\SirDampf\Wickelzubehoer\Silikat\silikat.php" style="color: lightgrey">Silikat</a></li>
                        <li><a href="http://localhost\SirDampf\Wickelzubehoer\Watte\watte.php" style="color: lightgrey">Watte</a></li>
                        <li><a href="http://localhost\SirDampf\Wickelzubehoer\Sonstiges\sonstige.php" style="color: lightgrey">Sonstiges</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Zubehör<span class="caret"></span></a>
                    <ul class="dropdown-menu" style="background-color: darkslategrey">
                        <li><a href="http://localhost\SirDampf\Zubehoer\Akkus\akkus.php" style="color: lightgrey">Akkus</a></li>
                        <li><a href="http://localhost\SirDampf\Zubehoer\Ladegeraete\ladegeraete.php" style="color: lightgrey">Ladegerät</a></li>
                        <li><a href="http://localhost\SirDampf\Zubehoer\DripTips\dripTips.php" style="color: lightgrey">Drip Tips</a></li>
                        <li><a href="http://localhost\SirDampf\Zubehoer\Schutzhuellen\schutzhuellen.php" style="color: lightgrey">Schutzhüllen</a></li>
                    </ul>
                </li>
                <li><a href="http://localhost\SirDampf\Angebote\angebote.php">Angebote</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a id="accModal" datatype="button" data-toggle="modal" data-target="#login" href="#"><span class="glyphicon glyphicon-user"></span> Account<span id="caret" class="caret" style="display: none"></span></a>
                    <ul class="dropdown-menu" style="background-color: darkslategrey">
                        <li><a href="http://localhost\SirDampf\Zubehoer\Akkus\akkus.php" style="color: lightgrey">Akkus</a></li>
                        <li><a href="http://localhost\SirDampf\Zubehoer\Ladegeraete\ladegeraete.php" style="color: lightgrey">Ladegerät</a></li>
                        <li><a href="http://localhost\SirDampf\Zubehoer\DripTips\dripTips.php" style="color: lightgrey">Drip Tips</a></li>
                        <li><button id="logoutBtn" type="button" style="color: lightgrey">Schutzhüllen>Logout</button></li>
                    </ul>
                </li>
                <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Warenkorb</a></li>
            </ul>
        </div>
    </div>
</nav>
<div id="login" class="modal" role="dialog" style="z-index:10000; margin-top: 3%">
    <div class="modal-dialog">
            <?php
            include('loginRegisterModal.php');
            ?>
    </div>
</div>

<?php
if(isset($_SESSION['logedin']) && $_SESSION['logedin'] == true){
    ?>
    <script>
        var accModal = document.querySelector('#accModal'),
            caret = document.querySelector('#caret');
        accModal.setAttribute("class", "dropdown-toggle");
        accModal.setAttribute("data-toggle", "dropdown");
        accModal.setAttribute("datatype", "");
        accModal.setAttribute("data-target", "");
        caret.style.display = "";
    </script>
    <?php
}
?>
<script>
    $(document).ready(function () {
        $('#logoutBtn').on('click', function () {
            $.ajax({
                type: "POST",
                url: 'http://localhost/SirDampf/logout.php'
            });
            window.location.reload();
        });
    });
</script>
