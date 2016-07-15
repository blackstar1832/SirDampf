<?php
$filterResult = get_coilVerdampferKoepfeFilter($conn);
$markeArray = array();
$preisArray = array();
$bewertungArary = array();
$ohmwertArray = array();

while($row = mysqli_fetch_array($filterResult)) {
    if (!in_array($row['marke'], $markeArray)) {
        array_push($markeArray, $row['marke']);
    }
    if (!in_array($row['preis'], $preisArray)) {
        array_push($preisArray, $row['preis']);
    }
    if (!in_array($row['bewertung'], $bewertungArary)) {
        array_push($bewertungArary, $row['bewertung']);
    }
    if (!in_array($row['ohmwert'], $ohmwertArray)) {
        array_push($ohmwertArray, $row['ohmwert']);
    }
}
?>
<div class="container-fluid" style="padding: 0;width: 100%; margin-left: 0;margin-bottom: 10px; background-color: whitesmoke">

    <h3 style="width: 100%; text-align: center">Verdampferköpfe</h3>
    <div style="margin: 10px;">
        <h4>Marke</h4>
        <?php
        global $markeArray;
        for($i = 0; $i < count($markeArray); $i++){
            ?>
            <div class="checkbox">
                <label><input type="checkbox" value="<?php echo $markeArray[$i]; ?>"><?php echo $markeArray[$i]; ?></label>
            </div>
            <?php
        }
        ?>

        <h4>Preisspanne</h4>
        <input id="minPreis" type="text" style="width: 60px; border-color: transparent; border-bottom-color: darkslategray; border-bottom-width: thin; background-color: whitesmoke"> - <input id="maxPreis" type="text" style="width: 60px; border-color: transparent; border-bottom-color: darkslategray; border-bottom-width: thin ; background-color: whitesmoke">

        <h4>Bewertung</h4>
        <div class="checkbox">
            <label><input type="checkbox" value="Joyetech"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span>& mehr</label>
        </div>
        <div class="checkbox">
            <label><input type="checkbox" value="Joyetech"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span>& mehr</label>
        </div>
        <div class="checkbox">
            <label><input type="checkbox" value="Joyetech"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span>& mehr</label>
        </div>
        <div class="checkbox">
            <label><input type="checkbox" value="Joyetech"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span>& mehr</label>
        </div>

        <h4>Ohm-Wert</h4>
        <?php
        global $ohmwertArray;
        for($i = 0; $i < count($ohmwertArray); $i++){
            ?>
            <div class="checkbox">
                <label><input type="checkbox" value="<?php echo $ohmwertArray[$i]; ?>"><?php echo $ohmwertArray[$i]; ?></label>
            </div>
            <?php
        }
        ?>
        <button type="button" class="btn btn-sm" style="width: 100px; margin-left: auto; margin-bottom: 10px">Aktualisieren</button>
    </div>

</div>
