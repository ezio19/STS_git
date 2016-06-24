

//Initialisation du tableau contenant les sections
$(document).ready(function () {


    function getStructuresList()
    {


        $.getJSON('nomenclatures_structures_list.json', {
            ajax: 'true'
        }, function (result) {
            var htln = "";
            for (var i = 0; i < result.structureList.length; i++) {
                console.log("Section " + i);
                console.log("Code Strcuture " + result.structureList[i].codeStructure);
                console.log("Designation" + result.structureList[i].nom);
                htln += '<option value=';
                htln += "" + result.structureList[i].codeStructure;
                htln += '>';
                htln += "" + result.structureList[i].nom;
                htln += '</option>';
            }
             $("#structure-select-section")
             .html(htln)
             .selectpicker('refresh');

        }).done(function () {
            console.log("apres success");
        })
            .fail(function () {
                console.log("error");
            })
            .always(function () {
                console.log("complete toujours succes ou erreur");
            });


    }


    function prepareFonctionnalitesList(){



    $.getJSON('gestion_utilisateurs_fonctionnalites_list.json', {
        ajax: 'true'
    }, function (result) {
        var htln = "";
        for (var i = 0; i < result.fonctionnaliteList.length; i++) {
            console.log("Section " + i);
            console.log("Code Strcuture " + result.fonctionnaliteList[i].idFonctionnalite);
            console.log("Designation" + result.fonctionnaliteList[i].designation);
            htln += '<option value=';
            htln += "" + result.fonctionnaliteList[i].idFonctionnalite;
            htln += '>';
            htln += "" + result.fonctionnaliteList[i].designation;
            htln += '</option>';
        }
        $("#fonctionnlaite-select")
            .html(htln)
            .selectpicker('refresh');

    }).done(function () {
        console.log("apres success");
    })
        .fail(function () {
            console.log("error");
        })
        .always(function () {
            console.log("complete toujours succes ou erreur");
        });

    }






    $('button.compte-modif').on('click', function () {
        $("input.compte").prop("readonly", false);

        $('button.compte-modif-enreg').css('display', '');
        $('#code_struct').css('display', 'none');
        $('#code_struct_mod').css('display', '');
        $('div.password-zone').css('display', '');
        $('button.compte-modif').css('display', 'none');

        $('#state_select').css('display', '');


        prepareFonctionnalitesList();
        getStructuresList();

    });




    $('button.compte-modif-enreg').on('click', function () {
        afficherCreateChapitreMessage();
    });







    function afficherCreateChapitreMessage() {

        /* var code_rubr = $('#creat_input_codechap ').val();
         var designation_rubr = $('#creat_input_designation').val();
         var code_rubr=$('#chapitre-select-section').val();*/
        var in_nom = $("#creat_input_nom").val();
        var in_prenom = $("#creat_input_prenom").val();
        var in_passw = $("#creat_input_passw").val();
        var in_reppss = $("#creat_input_reppasswd").val();
        var in_mail = $("#creat_input_email").val();
        var in_tel = $("#creat_input_telephone").val();
        var in_adr = $("#creat_input_addresse").val();
        var in_id_user = $("#creat_input_id_user").val();
        var in_struct = $("#structure-select-section").val();
        var in_actif = $("#state-select").val();


        var items = new Array();
        $('#fonctionnlaite-select :selected').each(function (i, selected) {
            console.log("parsing the element " + i);
            console.log("selected val : " + $(selected).val());
            items[i] = $(selected).val();
            console.log("Items " + items[i]);
        });


        swal({
            title: "Etes Vous Sure ?",
            text: "Voulez vous vraiment Ajouter cette Rubrique ?",
            type: "info",
            showCancelButton: true,
            closeOnConfirm: false,
            confirmButtonText: "Confirmer",
            confirmButtonClass: "btn  btn-success waves-effect",
        }, function () {
            $.ajax(
                {
                    type: "POST",
                    url: "gestion_utilisateurs_utilisateur_create.html",
                    data: {
                        nom: in_nom,
                        prenom: in_prenom,
                        passwd: in_passw,
                        reppassw: in_reppss,
                        mail: in_mail,
                        addresse: in_adr,
                        id_utilisateur: in_id_user,
                        code_structure: in_struct,
                        fonctionnalites: items,
                        actif: in_actif
                    }
                }
            )
                .done(function (data) {
                    if (JSON.parse(data) == "100") {
                        swal("Succès!", "L'utilisateur est ajouté avec Succès", "success");
                        window.location.replace("gestion_utilisateurs_utilisateurs");
                    }
                    else if (JSON.parse(data) == "602")
                        swal("Erreur", "l'utilisateur Existe deja verifier votre Id Utilisateur", "error");
                    else if (JSON.parse(data) == "603")
                        swal("Erreur", "Le Champ Repeter Mot de passe ne Correspond pas au Mot de passe ", "error");
                })
                .error(function (data) {
                    swal("Erreur", "L'Utilisateur n'est pas ajouté", "error");
                });
        });
    }







    function afficherCreateChapitre() {

        //$( "input.compte" ).prop( "readonly", false );
        $('.card.section-detail').css('display', 'none');
        $('.card.rubrique-create').css('display', '');
        $('.card.rubrique-create').addClass('animated fadeInLeft');
        compteShowingMode = false;

    }
    
        ///for commit
    function afficherCreateChapitreMessage() {

        /* var code_rubr = $('#creat_input_codechap ').val();
         var designation_rubr = $('#creat_input_designation').val();
         var code_rubr=$('#chapitre-select-section').val();*/
        var in_nom = $("#creat_input_nom").val();
        var in_prenom = $("#creat_input_prenom").val();
        var in_passw = $("#creat_input_passw").val();
        var in_reppss = $("#creat_input_reppasswd").val();
        var in_mail = $("#creat_input_email").val();
        var in_tel = $("#creat_input_telephone").val();
        var in_adr = $("#creat_input_addresse").val();
        var in_id_user = $("#creat_input_id_user").val();
        var in_struct = $("#structure-select-section").val();
        var in_actif = $("#state-select").val();


        var items = new Array();
        $('#fonctionnlaite-select :selected').each(function (i, selected) {
            console.log("parsing the element " + i);
            console.log("selected val : " + $(selected).val());
            items[i] = $(selected).val();
            console.log("Items " + items[i]);
        });


        swal({
            title: "Etes Vous Sure ?",
            text: "Voulez vous vraiment Modifier cet Utilsiateur ?",
            type: "info",
            showCancelButton: true,
            closeOnConfirm: false,
            confirmButtonText: "Confirmer",
            confirmButtonClass: "btn  btn-success waves-effect",
        }, function () {
            $.ajax(
                {
                    type: "POST",
                    url: "gestion_utilisateurs_utilisateur_edit.html",
                    data: {
                        nom: in_nom,
                        prenom: in_prenom,
                        passwd: in_passw,
                        reppassw: in_reppss,
                        mail: in_mail,
                        addresse: in_adr,
                        id_utilisateur: in_id_user,
                        code_structure: in_struct,
                        fonctionnalites: items,
                        actif: in_actif
                    }
                }
            )
                .done(function (data) {
                    if (JSON.parse(data) == "100") {
                        swal("Succès!", "L'utilisateur est ajouté avec Succès", "success");
                        window.location.replace("gestion_utilisateurs_utilisateurs");
                    }
                    else if (JSON.parse(data) == "602")
                        swal("Erreur", "l'utilisateur Existe deja verifier votre Id Utilisateur", "error");
                    else if (JSON.parse(data) == "603")
                        swal("Erreur", "Le Champ Repeter Mot de passe ne Correspond pas au Mot de passe ", "error");
                })
                .error(function (data) {
                    swal("Erreur", "L'Utilisateur n'est pas ajouté", "error");
                });
        });
    }




});