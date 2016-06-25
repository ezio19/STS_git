var idUtilisateur;
var nomUser;
var pnomUser;
var email;
var addresse;


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
        nomUser=$("#creat_input_nom").attr('placeholder');
        pnomUser=$("#creat_input_prenom").attr('placeholder');
        email=$("#creat_input_email").attr("placeholder");
        addresse=$("#creat_input_addresse").attr("placeholder");

        $("input.compte").prop("readonly", false);
        $('button.compte-modif-enreg').css('display', '');
        $('#code_struct').css('display', 'none');
        $('#code_struct_mod').css('display', '');
        $('div.password-zone').css('display', '');
        $('button.compte-modif').css('display', 'none');
        $('#creat_input_id_user').prop("readonly", true);
        $('#state_select').css('display', '');
        $('#struct_sel').css('display', '');
        $('#struct_input').css('display', 'none');
        $('#pass_elem').css('display', '');
        idUtilisateur=$("#creat_input_id_user").attr('placeholder');
        prepareFonctionnalitesList();
        getStructuresList();

    });




    $('button.compte-modif-enreg').on('click', function () {
        afficherCreateChapitreMessage();

    });







    function afficherCreateChapitreMessage() {

        var in_nom ="";
        in_nom=$("#creat_input_nom").val();
        if(in_nom=="" || in_nom.length==0 || in_nom==null)
            in_nom=nomUser;

        var in_prenom ="";
        in_prenom=$("#creat_input_prenom").val();
        if(in_prenom==""  || in_prenom.length==0 || in_prenom==null)
            in_prenom=pnomUser;


        var in_mail ="";
        in_mail=$("#creat_input_email").val();
        if(in_mail==""  || in_mail.length==0 || in_mail==null)
            in_mail=email;

        var in_adr ="";
        in_adr=$("#creat_input_addresse").val();
        if(in_adr=="" ||  in_adr.length==0 || in_adr==null)
            in_adr=addresse;


        var in_passw = $("#creat_input_passw").val();
        var in_reppss = $("#creat_input_reppasswd").val();
        var in_tel = $("#creat_input_telephone").val();
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
                    url: "gestion_utilisateurs_utilisateur_edit.html",
                    data: {
                        nom: in_nom,
                        prenom: in_prenom,
                        passwd: in_passw,
                        reppassw: in_reppss,
                        mail: in_mail,
                        addresse: in_adr,
                        id_utilisateur: idUtilisateur,
                        code_structure: in_struct,
                        fonctionnalites: items,
                        actif: 1
                    }
                }
            )
                .done(function (data) {
                    if (JSON.parse(data) == "100") {
                        swal("Succès!", "L'utilisateur est ajouté avec Succès", "success");
                        window.location.replace("gestion_utilisateurs_utilisateurs.html");
                    }
                    else if (JSON.parse(data) == "602")
                        swal("Erreur", "l'utilisateur Existe deja verifier votre Id Utilisateur", "error");
                    else if (JSON.parse(data) == "603")
                        swal("Erreur", "Le Champ Repeter Mot de passe ne Correspond pas au Mot de passe ", "error");
                    else if (JSON.parse(data) == "104")
                        swal("Erreur", "L'utilisateur n'existe pas ", "error");
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
    
        ///for commi





});