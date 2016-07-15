<form class="modal-content form-signin" action="http://localhost\SirDampf\login.php" method="post">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 id="modalTitle" class="modal-title">Login</h4>
    </div>
    <div class="modal-body">
        <div class="register" style="display: none">
            <label for="inputSurname" class="sr-only" >Vorname</label>
            <input name="vorname" type="text" id="inputSurname" class="form-control" placeholder="Vorname" style="margin: 5px">
            <label for="inputNachname" class="sr-only">Nachname</label>
            <input name="nachname" type="text" id="inputNachname" class="form-control" placeholder="Nachname" style="margin: 5px">
            <label for="inputStrasse" class="sr-only">Strasse</label>
            <input name="strasse" type="text" id="inputStrasse" class="form-control" placeholder="Straße" style="margin: 5px">
            <label for="inputPlz" class="sr-only">Postleitzahl</label>
            <input name="plz" type="text" id="inputPlz" class="form-control" placeholder="Postleitzahl" style="margin: 5px">
            <label for="inputStadt" class="sr-only">Stadt</label>
            <input name="stadt" type="text" id="inputStadt" class="form-control" placeholder="Stadt" style="margin: 5px" >
        </div>

        <label for="inputEmail" class="sr-only" >Email address</label>
        <input name="eMail" type="text" id="inputEmail" class="form-control" placeholder="E-Mail-Adresse" style="margin: 5px" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input name="passwort" type="password" id="inputPassword" class="form-control" placeholder="Passwort" style="margin: 5px" required>
        <div>
            <p style="font-size: 14px; text-align: right;">
                <button type="button" id="registerBtn" style="border: none; background: none; color: blue;;">Neu Registrieren</button>
            </p>
        </div>
    </div>
    <div class="modal-footer">
        <button id="loginBtn" class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
    </div>
</form>

<script>
    $('#registerBtn').on('click', function () {
        var register = document.querySelector('#login').querySelector('.register'),
            form = document.querySelector('form'),
            modalTitle = document.querySelector('#login').querySelector('#modalTitle'),
            submit = document.querySelector('#login').querySelector('#loginBtn'),
            inputSurname = document.querySelector('#login').querySelector('#inputSurname'),
            registerBtn = document.querySelector('#login').querySelector('#registerBtn'),
            reqInput = [].slice.call(register.querySelectorAll('input'));

        reqInput.forEach(function (elm) {
            elm.required = true;
        });

        register.style.display = '';
        form.action = 'http://localhost/SirDampf/register.php';
        modalTitle.textContent = "Registrierung";
        submit.textContent = "Registrieren";
        registerBtn.style.display = 'none';
        inputSurname.focus()

        $('#login').on('hide.bs.modal', function () {
            register.style.display = 'none';
            form.action ='http://localhost/SirDampf/login.php';
            modalTitle.textContent = "Login";
            submit.textContent = "Login";
            registerBtn.style.display = '';
            inputSurname.blur();

            reqInput.forEach(function (elm) {
                elm.required = false;
            });
        })
    });
</script>
