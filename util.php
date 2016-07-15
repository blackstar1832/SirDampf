

<script>
    var accountBtn = document.querySelector('#accountBtn');
</script>
<?php
if ($_SESSION['logedin'] = true){
    ?>
    <script>
        accountBtn.textContent = "<?php echo $_SESSION["name"] ?>";
    </script>
    <?php
}
else{
    ?>
    <script>
        accountBtn.textContent = "Account"";
    </script>
    <?php
}
