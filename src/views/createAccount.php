<section class="container"><section class="main">
    <div class="logo_create">

        <img class="img_logo" src="./assets/images/illu/Logo.png">



    </div>
    <!-- ****** zone du formulaire**** -->


    <div class="box_formCreate">
        <div class="formCreate">
            <h1>CREATE YOUR ACCOUNT</h1>
            <p>Before starting your adventure !</p>


            <form class="form_create" method="POST" action="?page=createAccount">

            <div class="form-control ">
                <input class="inputboite" id="inputName" type="text" name="name" placeholder="Username">
                <small>Message d'erreur</small>
            </div>
            <div class="form-control ">
                <input class="inputboite" id="inputEmail" type="text" name="email" placeholder="Email">
                <small>Message d'erreur</small>
            </div>
            <div class="form-control ">
                <input class="inputboite" id="inputPwd" type="password" name="password" placeholder="password">
                <small>Message d'erreur</small>
            </div>
            <div class="form-control ">
                <input class="inputboite" id="inputConfPwd" type="password" name="confirmPwd" placeholder="Confirm password">
                <small>Message d'erreur</small>
            </div>
                <div class="create">
                    <h1>Create</h1>
                     <input class="btn_create" id="btn_create" type="submit" name="envoyer" value="">
                </div>
                <div class="LogInPage">
                            <p>I have an account <a href="/WIB2/">LogIn</a></p>
                        </div>
            </form>

        </div>
    </div>

</section>
<section class="image">
</section>

</section>
<script src="./assets/scripts/create.js"></script>