
<%-- 
    Document   : SignCollector
    Created on : May 17, 2021, 2:25:35 PM
    Author     : sidibe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;1,100;1,300;1,400&display=swap" rel="stylesheet">
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link rel="stylesheet" href="css/w3.css"/>
        <link rel="stylesheet" href="css/loading.css"/>
        <link rel="stylesheet" href="css/admin.css"/>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/cropper/2.3.3/cropper.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.11/cropper.css"/>
        <title>Sign Collector</title>

        <style>
            body{
                background: #E4EBF5;

            }


            .card{
                background-color:#231e39;
            }
            h2{
                color: #4fb3bf
            }
            input{

                background: #231e39;
                color: lightgrey;
            }
            .readonly{
                cursor: not-allowed;
                opacity: 0.6
            }


            /* The device with borders */
            .smartphone {
                position: relative;
                width: 360px;
                height: 640px;
                margin: auto;
                border: 16px black solid;
                border-top-width: 60px;
                border-bottom-width: 60px;
                border-radius: 36px;
            }

            /* The horizontal line on the top of the device */
            .smartphone:before {
                content: '';
                display: block;
                width: 60px;
                height: 5px;
                position: absolute;
                top: -30px;
                left: 50%;
                transform: translate(-50%, -50%);
                background: #333;
                border-radius: 10px;
            }

            /* The circle on the bottom of the device */
            .smartphone:after {
                content: '';
                display: block;
                width: 35px;
                height: 35px;
                position: absolute;
                left: 50%;
                bottom: -65px;
                transform: translate(-50%, -50%);
                background: #333;
                border-radius: 50%;
            }

            /* The screen (or content) of the device */
            .smartphone .content {
                width: 320px;
                height: 530px;
                background: white;
            }


            #confirmationModal .title {
                position: relative;
                z-index: 1;
                border-left: 5px solid #3D545B;
                margin: 0 0 35px;
                padding: 10px 0 10px 50px;
                color: #3D545B;
                font-size: 32px;
                font-weight: 600;
                text-transform: uppercase;
            }

            #confirmationModalContent{

                width: 500px;
                height: 175px;
                border-radius: 4px;
            }

            :root {
                --primary-light: #8abdff;
                --primary: #6d5dfc;
                --primary-dark: #5b0eeb;
                --white: #FFFFFF;
                --greyLight-1: #E4EBF5;
                --greyLight-2: #c8d0e7;
                --greyLight-3: #bec8e4;
                --greyDark: #9baacf;
            }


            /*  SEGMENTED-CONTROL */
            .components {
                width: 85rem;
                height: 40rem;
                border-radius: 3rem;
                box-shadow: 0.8rem 0.8rem 1.4rem var(--greyLight-2), -0.2rem -0.2rem 1.8rem var(--white);

            }
            .segmented-control {
                width: 40.4rem;
                height: 4rem;
                box-shadow: 0.3rem 0.3rem 0.6rem #c8d0e7, -0.2rem -0.2rem 0.5rem #FFFFFF;
                border-radius: 1rem;
                display: flex;
                align-items: center;
                position: relative;
                margin-top: 30px
            }
            .segmented-control input {
                display: none;
            }
            .segmented-control > input:checked + label {
                transition: all 0.5s ease;
                color: #6d5dfc;
            }
            .segmented-control__1, .segmented-control__2, .segmented-control__3,.segmented-control__4,.segmented-control__5 {
                width: 8.8rem;
                height: 3.6rem;
                font-size: 1.4rem;
                display: flex;
                justify-content: center;
                align-items: center;
                cursor: pointer;
                color: #9baacf;
                transition: all 0.5s ease;
            }
            .segmented-control__1:hover, .segmented-control__2:hover, .segmented-control__3:hover,.segmented-control__4:hover,.segmented-control__5:hover {
                color: #6d5dfc;
            }
            .segmented-control__color {
                position: absolute;
                height: 3.4rem;
                width: 8.2rem;
                margin-left: 0.3rem;
                border-radius: 0.8rem;
                box-shadow: inset 0.2rem 0.2rem 0.5rem #c8d0e7, inset -0.2rem -0.2rem 0.5rem #FFFFFF;
                pointer-events: none;
            }

            #tab-1:checked ~ .segmented-control__color {
                transform: translateX(0);
                transition: transform 0.3s cubic-bezier(0.645, 0.045, 0.355, 1);
            }

            #tab-2:checked ~ .segmented-control__color {
                transform: translateX(8.8rem);
                transition: transform 0.3s cubic-bezier(0.645, 0.045, 0.355, 1);
            }

            #tab-3:checked ~ .segmented-control__color {
                transform: translateX(17.6rem);
                transition: transform 0.3s cubic-bezier(0.645, 0.045, 0.355, 1);
            }
            #tab-4:checked ~ .segmented-control__color {
                transform: translateX(26.4rem);
                transition: transform 0.3s cubic-bezier(0.645, 0.045, 0.355, 1);
            }
            #tab-5:checked ~ .segmented-control__color {
                transform: translateX(35.2rem);
                transition: transform 0.3s cubic-bezier(0.645, 0.045, 0.355, 1);
            }
            /*  FORM  */
            .form {
                grid-column: 3/4;
                grid-row: 3/4;
            }
            .form__input {
                width: 20.4rem;
                height: 4rem;
                border: none;
                border-radius: 1rem;
                font-size: 1.4rem;
                padding-left: 1.4rem;
                box-shadow: inset 0.2rem 0.2rem 0.5rem var(--greyLight-2), inset -0.2rem -0.2rem 0.5rem var(--white);
                background: none;
                font-family: inherit;
                color: var(--greyDark);
            }
            .form__input::-moz-placeholder {
                color: var(--greyLight-3);
            }
            .form__input:-ms-input-placeholder {
                color: var(--greyLight-3);
            }
            .form__input::placeholder {
                color: var(--greyLight-3);
            }
            .form__input:focus {
                outline: none;
                box-shadow: 0.3rem 0.3rem 0.6rem var(--greyLight-2), -0.2rem -0.2rem 0.5rem var(--white);
            }

            /*  BUTTONS  */
            .btn {
                width: 15rem;
                height: 4rem;
                border-radius: 1rem;
                box-shadow: 0.3rem 0.3rem 0.6rem var(--greyLight-2), -0.2rem -0.2rem 0.5rem var(--white);
                justify-self: center;
                display: flex;
                align-items: center;
                justify-content: center;
                cursor: pointer;
                transition: 0.3s ease;

            }

            .btn__primary {
                grid-column: 1/2;
                grid-row: 4/5;
                background: var(--primary);
                box-shadow: inset 0.2rem 0.2rem 1rem var(--primary-light), inset -0.2rem -0.2rem 1rem var(--primary-dark), 0.3rem 0.3rem 0.6rem var(--greyLight-2), -0.2rem -0.2rem 0.5rem var(--white);
                color: var(--greyLight-1);
            }
            .btn__primary:hover {
                color: var(--white);
            }
            .btn__primary:active {
                box-shadow: inset 0.2rem 0.2rem 1rem var(--primary-dark), inset -0.2rem -0.2rem 1rem var(--primary-light);
            }
            .btn__secondary {
                grid-column: 1/2;
                grid-row: 5/6;
                color: var(--greyDark);
            }
            .btn__secondary i{
                color: var(--primary);
            }
            .btn__secondary:hover {
                color: var(--primary);
            }
            .btn__secondary:active {
                box-shadow: inset 0.2rem 0.2rem 0.5rem var(--greyLight-2), inset -0.2rem -0.2rem 0.5rem var(--white);
            }
            .btn p {
                font-size: 1.6rem;
            }
            #Demo,#typeDeCompteDropDown
            {
                box-shadow: 0.3rem 0.3rem 0.6rem var(--greyLight-2), -0.2rem -0.2rem 0.5rem var(--white);
                background: var(--greyLight-2);
                min-width:160px;
                cursor: auto;
                display:none;position:absolute;

            }
            #Demo{
                right: 550px;
            }
            #Demo a,#typeDeCompteDropDown a{
                text-decoration: none;
            }
            #Demo a:hover,#typeDeCompteDropDown a:hover{
                box-shadow: 0.3rem 0.3rem 0.6rem var(--greyLight-2), -0.2rem -0.2rem 0.5rem var(--white);
            }

            /*  SEARCH  */
            .search {
                position: relative;
                display: flex;
                align-items: center;
            }
            .search__input {
                width: 41.4rem;
                height: 4rem;
                border: none;
                border-radius: 1rem;
                font-size: 1.4rem;
                padding-left: 3.8rem;
                box-shadow: inset 0.2rem 0.2rem 0.5rem var(--greyLight-2), inset -0.2rem -0.2rem 0.5rem var(--white);
                background: none;
                font-family: inherit;
                color: var(--greyDark);
            }
            .search__input::-moz-placeholder {
                color: var(--greyLight-3);
            }
            .search__input:-ms-input-placeholder {
                color: var(--greyLight-3);
            }
            .search__input::placeholder {
                color: var(--greyLight-3);
            }
            .search__input:focus {
                outline: none;
                box-shadow: 0.3rem 0.3rem 0.6rem var(--greyLight-2), -0.2rem -0.2rem 0.5rem var(--white);
            }
            .search__input:focus + .search__icon {
                color: var(--primary);
            }
            .search__icon {
                height: 2rem;
                position: absolute;
                font-size: 1.5rem;
                padding: 0 1rem;
                display: flex;
                color: var(--greyDark);
                transition: 0.3s ease;
            }

            #fileButton {
                opacity: 0;
                position: absolute;
                z-index: -1;
            }


            /* Limit image width to avoid overflow the container */
            img {
                max-width: 100%; /* This rule is very important, please do not ignore this! */
            }

            #canvas {
                height: 460px;
                width: 600px;
                cursor: default;
                border: 1px dashed #000;
            }

            /*  ICONS  */
            .icon {

                display: flex;
                flex-direction: column;
                position: absolute;
                right: 200px;
            }
            .icon__account, .icon__home, .icon__settings {
                width: 4rem;
                height: 4rem;
                border-radius: 50%;
                box-shadow: 0.3rem 0.3rem 0.6rem var(--greyLight-2), -0.2rem -0.2rem 0.5rem var(--white);
                display: flex;
                justify-content: center;
                align-items: center;
                font-size: 2rem;
                cursor: pointer;
                color: var(--greyDark);
                transition: all 0.5s ease;
                margin-bottom: 12px;
            }
            .icon__account:active, .icon__home:active, .icon__settings:active {
                box-shadow: inset 0.2rem 0.2rem 0.5rem var(--greyLight-2), inset -0.2rem -0.2rem 0.5rem var(--white);
                color: var(--primary);
            }
            .icon__account:hover, .icon__home:hover, .icon__settings:hover {
                color: var(--primary);
            }


            /*  SWITCH  */
            .switch {
                grid-column: 1/2;
                display: grid;
                grid-template-columns: repeat(2, -webkit-min-content);
                grid-template-columns: repeat(2, min-content);
                grid-gap: 3rem;
                justify-self: center;
            }
            .switch input {
                display: none;
            }
            .switch__1, .switch__2, .switch__3,.switch__4{
                width: 10rem;
            }
            .switch__1 label, .switch__2 label, .switch__3 label ,.switch__4 label {
                display: flex;
                align-items: center;
                width: 100%;
                height: 3rem;
                box-shadow: 0.3rem 0.3rem 0.6rem var(--greyLight-2), -0.2rem -0.2rem 0.5rem var(--white);
                background: rgba(255, 255, 255, 0);
                position: relative;
                cursor: pointer;
                border-radius: 1.6rem;
            }
            .switch__1 label::after, .switch__2 label::after,.switch__3 label::after,.switch__4 label::after {
                content: "";
                position: absolute;
                left: 0.4rem;
                width: 2.1rem;
                height: 2.1rem;
                border-radius: 50%;
                background: var(--greyDark);
                transition: all 0.4s ease;
            }
            .switch__1 label::before, .switch__2 label::before,.switch__3 label::before,.switch__4 label::before {
                content: "";
                width: 100%;
                height: 100%;
                border-radius: inherit;
                background: linear-gradient(330deg, var(--primary-dark) 0%, var(--primary) 50%, var(--primary-light) 100%);
                opacity: 0;
                transition: all 0.4s ease;
            }
            .switch input:checked ~ label::before {
                opacity: 1;
            }
            .switch input:checked ~ label::after {
                left: 70%;
                background: var(--greyLight-1);
            }


            /*  CHECKBOX  */
            .checkbox {
                grid-column: 1/2;
                display: grid;
                grid-template-columns: repeat(2, 6rem);
                grid-gap: 3rem;
                justify-content: center;
            }
            .checkbox input {
                display: none;
            }
            .checkbox__1, .checkbox__2 {
                width: 6rem;
                display: flex;
                justify-content: center;
            }
            .checkbox__1 label, .checkbox__2 label {
                box-shadow: 0.3rem 0.3rem 0.6rem var(--greyLight-2), -0.2rem -0.2rem 0.5rem var(--white);
                cursor: pointer;
                position: relative;
                display: flex;
                justify-content: center;
                align-items: center;
                border-radius: 0.5rem;
                width: 2.8rem;
                height: 2.8rem;
            }
            .checkbox__1 label:hover i, .checkbox__2 label:hover i {
                color: var(--primary);
            }
            .checkbox__1 label i, .checkbox__2 label i {
                font-size: 1.8rem;
                font-weight: 700;
                color: var(--greyDark);
                transition: 0.3s ease;
            }
            .checkbox__1 input:checked ~ label, .checkbox__2 input:checked ~ label {
                box-shadow: inset 0.2rem 0.2rem 0.5rem var(--greyLight-2), inset -0.2rem -0.2rem 0.5rem var(--white);
            }
            .checkbox__1 input:checked ~ label i, .checkbox__2 input:checked ~ label i {
                color: var(--primary);
            }

            .flex-row
            {
                display: flex;
                flex-direction: row;
            }

            .flex-space-between{
                justify-content: space-between;
            }

            .flex-space-aroud{
                justify-content: space-around;
            }

            .flex-space-aroud{
                justify-content: center;
            }



            .flex-column
            {
                display: flex;
                flex-direction: column;
            }





        </style>
    </head>
    <body ng-app="app" ng-controller="ctlr" style="display: flex;justify-content: center">
        <div class="components" style="margin-top: 16px">
            <div  style="display: flex;justify-content: center">

                <div class="segmented-control">

                    <input ng-model="tab1" ng-click="swap('London')" type="radio" name="radio2"  id="tab-1" checked />
                    <label for="tab-1" class= "segmented-control__1">
                        <p><sup><i class="fas fa-user-plus"></i></sup>Info</p>
                    </label>

                    <input ng-model="tab2" ng-click="swap('Paris')" type="radio" name="radio2"  id="tab-2" />
                    <label for="tab-2" class= "segmented-control__2">
                        <p><sup><i class="fas fa-expand"></i></sup>Historique</p>
                    </label>

                    <%--<input type="radio" name="radio2"  id="tab-3" />
                    <label for="tab-3" class= "segmented-control__3">
                        <p><sup><i class="fas fa-file-signature"></i></sup>Signature</p>
                    </label>--%>

                    <input ng-model="tab3" ng-click="swap('Abidjan')" type="radio" name="radio2"  id="tab-3" />
                    <label for="tab-3" class="segmented-control__3">
                        <p class="w3-large"><sup><i class="far fa-hand-spock"></i></sup>Chirurgie</p>
                    </label>


                    <input ng-model="tab4" ng-click="swap('Bamako')"  type="radio" name="radio2"  id="tab-4" />
                    <label for="tab-4" class="segmented-control__4">
                        <p class="w3-large"><sup><i class="fas fa-file-alt"></i></sup>Allergies</p>
                    </label>

                    <div class="segmented-control__color"></div>
                </div>

            </div>


            <div  style="display: flex;justify-content: center;margin-top: 16px">


                <div id="tab-content"  style="width: 70.4rem">
                    <div id="London" class="w3-container city">
                        <div class="form" style="margin-left: 50px">
                            <input ng-model="nom" id="nom" type="text" class="form__input w3-margin-top" placeholder="Nom et prénom...">
                            <input ng-model="date" id="date" type="text" class="form__input w3-margin-top" placeholder="Date">
                            <input ng-model="sdate" id="sdate" type="text" class="form__input w3-margin-top" placeholder="Quand le problème a-t-il commencé?">                                                                        
                            <input style="width: 83%"  ng-model="description" id="description" type="text"   class="form__input w3-margin-top" placeholder="Description du problème">
                            <br><br><br>
                            <div class="flex-row flex-space-between">
                                <div style="display: flex;flex-direction: column;align-items: center">
                                    <label for="tab-1" class= "segmented-control__1" style="width: 14em">
                                        <p>Cause du problème?</p>
                                    </label>
                                    <div class="switch">
                                        <div class="switch__1">
                                            <p> Accident de voiture</p>
                                            <input ng-model="switch1" id="switch-1" type="checkbox">
                                            <label for="switch-1"></label>
                                        </div>

                                        <div class="switch__2">
                                            <p> Accident de travail</p>
                                            <input  ng-model="switch2" id="switch-2" type="checkbox" >
                                            <label for="switch-2"></label>
                                        </div>


                                        <div class="switch__3">
                                            <p> Héréditaire</p>
                                            <input  ng-model="switch3" id="switch-3" type="checkbox" >
                                            <label for="switch-3"></label>
                                        </div>


                                        <div class="switch__3">
                                            <p> Autre</p>
                                            <input ng-model="switch4" id="switch-3" type="checkbox" >
                                            <label for="switch-3"></label>
                                        </div>
                                    </div>
                                </div>
                                <div style="display: flex;flex-direction: column;align-items: center">
                                    <label for="tab-1" class= "segmented-control__1" style="width: 14em">
                                        <p>Ce problème a-t-il nécessité une intervention chirurgicale?</p>
                                    </label>
                                    <div class="switch">
                                        <div class="switch__4">
                                            <p class="w3-center"> Oui ou Non</p>
                                            <input ng-model="switch5" id="switch-4" type="checkbox">
                                            <label for="switch-4"></label>
                                        </div>                                      
                                    </div>
                                </div>
                            </div>



                        </div>

                    </div>

                    <div id="Paris" class="w3-container city" style="display: none">
                        <table id="OrderTable" class="w3-table w3-text-theme w3-col l12" style="overflow-x: scroll">
                            <thead> 
                                <tr class="w3-padding" style="box-shadow: 0.3rem 0.3rem 0.6rem #c8d0e7, -0.2rem -0.2rem 0.5rem #FFFFFF;border-radius: 1rem;"> 
                                    <th>Nom</th>
                                    <th  class="w3-center">Prénom</th> 
                                    <th  class="w3-center">Naissance</th> 

                                    <th  class="w3-center">Type</th> 

                                    <th class="w3-center">#Pièce</th> 
                                    <th  class="w3-center">Mère</th>  
                                    <th class="w3-center">Photo</th> 
                                    <th>Signature</th> 
                                </tr>
                            </thead>

                        </table>
                    </div>

                </div>

            </div>

        </div>
        <img src="img/siri.png" style="position: fixed;bottom: 0;right: 0;z-index: 1"  height="50" width="50" ng-click="startDictation()">



        <!-- The core Firebase JS SDK is always required and must be listed first -->
        <script  src="https://www.gstatic.com/firebasejs/8.4.3/firebase-app.js"></script>
        <script  src="https://www.gstatic.com/firebasejs/8.4.3/firebase-database.js"></script>
        <script  src="https://www.gstatic.com/firebasejs/8.4.3/firebase-messaging.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.4.3/firebase-storage.js"></script>

        <script src="https://cdn.firebase.com/libs/angularfire/2.3.0/angularfire.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/ngStorage/0.3.10/ngStorage.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/qrious/4.0.2/qrious.min.js"></script>
        <script>
                    var app = angular.module("app", ["firebase", "ngStorage"]);
                    app.controller("ctlr", function ($scope, $firebaseObject, $firebaseArray, $localStorage)
                    {
                        $scope.swap = function (tabName) {
                            var i, x;
                            x = document.getElementsByClassName("city");
                            for (i = 0; i < x.length; i++) {
                                x[i].style.display = "none";
                            }

                            document.getElementById(tabName).style.display = "block";
                        }

                        $scope.startDictation = function ()
                        {
                            //document.getElementById('container-ios9').style.display = 'block';
                            if (window.hasOwnProperty('webkitSpeechRecognition'))
                            {

                                let nameRX = /(^nom|non|mon)/i;
                                let dateRx = /^date/i;
                                let sDate = /^début du problème|début des problèmes/i;
                                let descriptionRX = /^Description/i;
                                let tabInfoRX = /^Info|tab info/i;
                                let tabHistoriqueRX = /^Historique|Tab historique/i;
                                let chirurgieRX = /^Chirurgie|tab Chirurgie/i;
                                let allergiesRX = /^Allergie|tab Allergie|alléger|aler|all/i;

                                let causeDuProblemeRx = /^Cause du problème|Cause des problèmes|Cause|pause/i;
                                let interventionRx = /^intervention|intervention chirurgicale/i;

                                var recognition = new webkitSpeechRecognition();
                                recognition.continuous = true;
                                recognition.interimResults = false;
                                recognition.lang = "fr-FR";
                                recognition.start();
                                //When result comes from google
                                recognition.onresult = function (e)
                                {
                                    var transcript = e.results[0][0].transcript;
                                    if (nameRX.test(transcript))
                                    {
                                        $scope.nom = $scope.extractTarget(transcript);
                                        console.log(transcript);
                                    } else if (dateRx.test(transcript)) {
                                        $scope.date = $scope.extractTargetAsDate(transcript);
                                        console.log(transcript);
                                    } else if (sDate.test(transcript)) {
                                        $scope.sdate = $scope.extractTargetAsDate2(transcript);
                                        console.log(transcript);
                                    } else if (descriptionRX.test(transcript)) {
                                        $scope.description = $scope.extractTarget(transcript);
                                        console.log(transcript);
                                    } else if (tabInfoRX.test(transcript)) {
                                        angular.element(document.getElementById('tab-1')).trigger('click')
                                        console.log(transcript);
                                    } else if (tabHistoriqueRX.test(transcript)) {
                                        angular.element(document.getElementById('tab-2')).trigger('click')
                                        console.log(transcript);
                                    } else if (chirurgieRX.test(transcript)) {
                                        angular.element(document.getElementById('tab-3')).trigger('click')
                                        console.log(transcript);
                                    } else if (allergiesRX.test(transcript)) {
                                        angular.element(document.getElementById('tab-4')).trigger('click')
                                        console.log(transcript);
                                    } else if (causeDuProblemeRx.test(transcript))
                                    {
                                        let answer = transcript.split(" ");
                                        if (answer[1] === "Accident de voiture" || answer[1] === "voiture") {
                                            $scope.switch1 = true;
                                        } else if (answer[1] === "Accident de travail" || answer[1] === "travail")
                                        {
                                            $scope.switch2 = true;
                                        } else if (answer[1] === "héréditaire")
                                        {
                                            $scope.switch3 = true;
                                        } else if (answer[1] === "autre" || answer[1] === "autres")
                                        {
                                            $scope.switch4 = true;
                                        }
                                        console.log(transcript);
                                    } else if (interventionRx.test(transcript))
                                    {
                                        $scope.switch5 = true;
                                    } else {
                                        alert("J'ai pas compris!" + transcript);
                                    }
                                    $scope.$apply();
                                    recognition.stop();
                                    console.log("transcript: " + transcript);

                                };
                                //recognition.onerror = function (e)
                                //{
                                //    recognition.stop();
                                // }

                            } else {
                                alert("speech recognition not supportd");
                            }
                        }

                        $scope.extractTarget = function (transcript) {
                            var arr = transcript.split(" ");
                            let text = "";
                            for (let i = 1; i < arr.length; i++) {
                                text += arr[i] + " ";
                            }
                            return text;
                        }
                        $scope.extractTargetAsDate = function (transcript) {
                            var arr = transcript.split(" ");
                            let text = "";
                            for (let i = 1; i < arr.length; i++) {
                                text += arr[i] + "/";
                            }
                            return text.slice(0, text.length - 1);
                            ;
                        }
                        $scope.extractTargetAsDate2 = function (transcript) {
                            var arr = transcript.split(" ");
                            let text = "";
                            for (let i = 3; i < arr.length; i++) {
                                text += arr[i] + "/";
                            }
                            return text.slice(0, text.length - 1);
                            ;
                        }
                    });
        </script>


    </body>
</html>
