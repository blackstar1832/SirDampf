<?php
//hier muss acuh was geändert werden ---------------------------------------------------------
$filterResult = get_akkutraegerFilter($conn);
$markeArray = array();
$preisArray = array();
$bewertungArary = array();
$typ = array();
$watt = array();
$modi = array();
$anzahlAkkus = array();
$gewinde = array();
while($row = mysqli_fetch_array($filterResult))
{
    if(!in_array($row['marke'], $markeArray)){
        array_push($markeArray, $row['marke']);
    }
    if(!in_array($row['preis'], $preisArray)){
        array_push($preisArray, $row['preis']);
    }
    if(!in_array($row['bewertung'], $bewertungArary)){
        array_push($bewertungArary, $row['bewertung']);
    }
    if(!in_array($row['typ'], $typ)){
        array_push($typ, $row['typ']);
    }
    if(!in_array($row['watt'], $watt)){
        array_push($watt, $row['watt']);
    }
    if(!in_array($row['modi'], $modi)){
        array_push($modi, $row['modi']);
    }
    if(!in_array($row['anzahlAkkus'], $anzahlAkkus)){
        array_push($anzahlAkkus, $row['anzahlAkkus']);
    }
    if(!in_array($row['gewinde'], $gewinde)){
        array_push($gewinde, $row['gewinde']);
    }
}
?>
<div class="container-fluid" style="padding: 0; width: 100%; margin-left: 0;margin-bottom: 10px; background-color: whitesmoke">
    <h3 style="width: 100%; text-align: center">Verdampfer</h3>
    <div style="margin: 10px">
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

        <h4>Typ</h4>
        <?php
        global $typ;
        for($i = 0; $i < count($typ); $i++){
            ?>
            <div class="checkbox">
                <label><input type="checkbox" value="<?php echo $typ[$i]; ?>"><?php echo $typ[$i]; ?></label>
            </div>
            <?php
        }
        ?>

        <h4>Modus</h4>
        <?php
        global $modi;
        for($i = 0; $i < count($modi); $i++){
            ?>
            <div class="checkbox">
                <label><input type="checkbox" value="<?php echo $modi[$i]; ?>"><?php echo $modi[$i]; ?> </label>
            </div>
            <?php
        }
        ?>

        <h4>Max. Watt</h4>
        <?php
        global $watt;
        for($i = 0; $i < count($watt); $i++){
            ?>
            <div class="checkbox">
                <label><input type="checkbox" value="<?php echo $watt[$i]; ?>"><?php echo $watt[$i]; ?> Watt</label>
            </div>
            <?php
        }
        ?>
        
        <h4>Max. Anzahl Akkus</h4>
        <?php
        global $anzahlAkkus;
        for($i = 0; $i < count($anzahlAkkus); $i++){
            ?>
            <div class="checkbox">
                <label><input type="checkbox" value="<?php echo $anzahlAkkus[$i]; ?>"><?php echo $anzahlAkkus[$i]; ?> </label>
            </div>
            <?php
        }
        ?>
        
        <h4>Gewinde</h4>
        <?php
        global $gewinde;
        for($i = 0; $i < count($gewinde); $i++){
            ?>
            <div class="checkbox">
                <label><input type="checkbox" value="<?php echo $gewinde[$i]; ?>"><?php echo $gewinde[$i]; ?> </label>
            </div>
            <?php
        }
        ?>
        <button type="button" class="btn btn-sm" style="width: 100px; margin-left: auto; margin-bottom: 10px">Aktualisieren</button>
    </div>

</div>
