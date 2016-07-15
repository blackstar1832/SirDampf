<?php
//hier muss acuh was geändert werden ---------------------------------------------------------
$filterResult = get_akkusFilter($conn);
$markeArray = array();
$preisArray = array();
$bewertungArary = array();
$kapazitaet = array();
$akkutyp = array();

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
    if(!in_array($row['kapazitaet'], $kapazitaet)){
        array_push($kapazitaet, $row['kapazitaet']);
    }
    if(!in_array($row['akkutyp'], $akkutyp)){
        array_push($akkutyp, $row['akkutyp']);
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

        <h4>Akkutyp</h4>
        <?php
        global $akkutyp;
        for($i = 0; $i < count($akkutyp); $i++){
            ?>
            <div class="checkbox">
                <label><input type="checkbox" value="<?php echo $akkutyp[$i]; ?>"><?php echo $akkutyp[$i]; ?></label>
            </div>
            <?php
        }
        ?>
        
        <h4>Kapazität</h4>
        <?php
        global $kapazitaet;
        for($i = 0; $i < count($kapazitaet); $i++){
            ?>
            <div class="checkbox">
                <label><input type="checkbox" value="<?php echo $kapazitaet[$i]; ?>"><?php echo $kapazitaet[$i]; ?> mAh</label>
            </div>
            <?php
        }
        ?>

        <button type="button" class="btn btn-sm" style="width: 100px; margin-left: auto; margin-bottom: 10px">Aktualisieren</button>
    </div>

</div>
