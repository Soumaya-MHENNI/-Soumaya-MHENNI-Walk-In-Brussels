<!-- <div class="slide">
    Bonjour slide
</div>
<img id ="img" src="base64;" alt=""> -->
<section class="boxSlider" style="display:none;" id="boxGauche">
    <div class="HeaderBoxSlider">
        <div class="SearchSlider">

            <label for="rechercheSlide"></label>

            <input id="rechercheSlide" type="search" placeholder="Search">

        </div>

        <a href="?page=carte"> <img class="CloseBox" alt="Close" src="./assets/images/illu/close.png"></a>
    </div>
    <div class="BoxContainer">
        <figure class="BoxImagePOI">
            <img class="imagePOI" id="imgPoi">
        </figure>
        <div class="container-aside">
            <!-- Infos POI  -->
            <h2 class="titlePOI" id="titre"></h2>
            <p class="DescPOI" id="description"></p>
            <a target="_blank" id="urlPoi">
                <div class="UrlPOI">
                    <img class="imgURL" src="./assets/images/illu/location.png">
                    <h3>ITINERARY</h3>
                </div>
            </a>
            <!-- The place around -->
            <h2 class="AdvPOI"> The Place Around</h2>
        </div>
        <div class="carousel-container">

            <div id="prevButton"></div>
            <div id="nextButton"></div>



            <section class="carousel-slide">
              
                <!-- image2-->
                <div class="carteImg">
                    <div class="boxNavigation"></div>
                    <a id="URLimg2" target="_blank">
                        <div id="Titreimg2" class="titreImg"></div>
                    </a>
                    <img id="img2">
                </div>
                <!-- image1-->
                <div class="carteImg">
                    <div class="boxNavigation"></div>
                    <a id="URLimg1" target="_blank">
                        <div id="Titreimg1" class="titreImg"></div>
                    </a>
                    <img id="img1" class="lastClone">

                </div>

                <!-- image3-->
                <div class="carteImg">
                    <div class="boxNavigation"></div>
                    <a id="URLimg3" target="_blank">
                        <div id="Titreimg3" class="titreImg"></div>
                    </a>
                    <img id="img3" class="firstClone">
                </div>
                
            </section>


        </div>

        <!-- Reviews -->
        <form class="containerReviews" method="post" action="?page=carte">
            <div class="ReviewsPOI">
                <h2> Reviews</h2>

            </div>
            <div class="ReviewsUserName">
                <h3><?= $_SESSION['name'] ?></h3>

            </div>
            <div class="commentPoi">
                <textarea class="ReviewsText" id="ReviewsText" name="ReviewsPoi" rows="3" cols="25" placeholder="    Your review..."></textarea>

            </div>



            <div class="ReviewsComment">

                <input class="btn_comment" id="btn_comment" type="submit" name="comment" value="Comment">

            </div>
        </form>
        <!-- liste des commentaires -->
        <div class="containerReviews1">

        </div>


    </div>
</section>



<script src="./assets/scripts/carteSlide.js"></script>




<!-- commentaire  mettre tous les $pois dans une DB -->
<?php
// récupérer depuis la db
include("src/db/db.php");

$requete = "SELECT * FROM poi";
$stmt = $mysqlClient->prepare($requete);
$stmt->execute();
$data = $stmt->fetchAll();
// var_dump($data);
// die;
$json = json_encode($data);

// var_dump($json);




// récupérer les Dev-poi depuis la db
$requeteDiv = "SELECT * FROM poi_div";

$stmtDiv = $mysqlClient->prepare($requeteDiv);
$stmtDiv->execute();
$data2 = $stmtDiv->fetchAll();
$json2 = json_encode($data2);
//var_dump($json2);


// récupérer les Review-poi depuis la db
$requeteReview = "SELECT * FROM  poi_avis";

$stmtReview = $mysqlClient->prepare($requeteReview);
$stmtReview->execute();
$dataReview = $stmtReview->fetchAll();
$json3 = json_encode($dataReview);

// récupérer les UserName depuis la db

$requeteN= "SELECT id,name FROM `user`";
$stmtUserName = $mysqlClient->prepare($requeteN);
$stmtUserName->execute();
$dataName = $stmtUserName->fetchAll();
$json4 = json_encode($dataName);
?>

<script>
    let datas = <?= $json ?>;
    //console.log(datas);
    let datasDiv = <?= $json2 ?>;
    //console.log(datasDiv);
    let datasReview = <?= $json3 ?>;
    //console.log(datasReview );
    let datasUserName = <?= $json4 ?>;
// console.log(datasUserName[0]);
    // permet de faire  appelle a la DB via un const qui va stocker la DB (pod)


    $('.lien').on('click', e => {
        e.preventDefault();



        boxGauche.style.display = "flex";
        
        let id = e.currentTarget.getAttribute('data-id')

// comparer l'id de poi avec l'id de PLACE AROUND

        datasDivPOI = datasDiv.filter((item) => {

            if (item.id_poi == id)
                return item


        })

        // récupérer les DevPOI dans le tableau 

        //    console.table(datasDivPOI);
        for (let i = 0; i < datasDivPOI.length; i++) {
            const element = datasDivPOI[i];
            //   const divName=datasDivPOI[2][2];
            // console.table(element)
            //    console.log(divName);

            Titreimg1.innerText = datasDivPOI[0][2];
            img1.src = datasDivPOI[0][3];
            URLimg1.href = datasDivPOI[0][4];
            //im2
            Titreimg2.innerText = datasDivPOI[1][2];
            img2.src = datasDivPOI[1][3];
            URLimg2.href = datasDivPOI[1][4];
            //img3
            Titreimg3.innerText = datasDivPOI[2][2];
            img3.src = datasDivPOI[2][3];
            URLimg3.href = datasDivPOI[2][4];

        }


//userName


//reviews

        datasReviewPOI = datasReview.filter((item1) => {

            if (item1.id_poi == id)
                return item1
        })
        console.log(datasReviewPOI);

        const divContainerReviews1 = document.querySelector(".containerReviews1");

        while (divContainerReviews1.firstElementChild !== null) {
            divContainerReviews1.removeChild(divContainerReviews1.firstElementChild);
        }

        if(datasReviewPOI.length===0){
            divContainerReviews1.style.display = "none";
        }else{
            divContainerReviews1.style.display = "flex";  
        }

        for (let k = 0; k < datasReviewPOI.length; k++) {
            const elementRev = datasReviewPOI[k];

            for (let x = 0; x < datasUserName.length; x++) {
            let idName = datasUserName[x][0];
            let NameUser = datasUserName[x][1];


            if (datasReviewPOI[k][1]===idName ){
                datasReviewPOI[k][1]== NameUser;
                
            
            //console.log(elementRev);






            const DivUserName = document.createElement("div");
            DivUserName.setAttribute("class", "ReviewsUserName1");
            const CmtTime = document.createElement("h4");
            CmtTime.setAttribute("class", "CmtTime");
            CmtTime.innerText = datasReviewPOI[k][3];
            const UserNameR = document.createElement("h3");
            UserNameR.setAttribute("id", "UserName");
            UserNameR.innerText = NameUser;
            DivUserName.append(CmtTime, UserNameR);
            //
            const CommentPoi = document.createElement("div");
            CommentPoi.setAttribute("class", "commentPoi1");
            const BaliseP = document.createElement("p");
            BaliseP.setAttribute("class", "UserReviewsText");
            BaliseP.setAttribute("id", "UserReviewsText");
            BaliseP.innerText = datasReviewPOI[k][2];
            CommentPoi.appendChild(BaliseP);
            //
            divContainerReviews1.append(DivUserName, CommentPoi);

        }
    }
        }


        // récupérer les datas Poi dans le tableau
        let lieu = datas.find(p => p[0] == id);
        titre.innerText = lieu[1];
        description.innerText = lieu[2];
        imgPoi.src = "./" + lieu[4];
        urlPoi.href = lieu[3];

        ///recupérer l'id de POI dans le comment
        const divReviewsPOI = document.querySelector(".ReviewsPOI");
        const inputIdPOi = document.createElement("input");
        inputIdPOi.setAttribute("name", "idPoi");
        inputIdPOi.setAttribute("value", `${id}`);
        console.log(inputIdPOi.value)
        divReviewsPOI.appendChild(inputIdPOi);
        inputIdPOi.style.display = "none";



    });


    $('.CloseBox').on('click', e => {
        boxGauche.style.display = "none";
    });




</script>
