/*Projet Comptable et Budgétaire functions*/
var compteEditMode = false;
var compteSelected = false;
var selectedCompte = -1;
var compteCreationMode = false;
var compteShowingMode = false;


var data_section = {
    code_section: 1,
    designation: "exploitation"
};


//Initialisation du tableau contenant les sections
$(document).ready(function () {

    //Initialisation
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

    //Initialisation
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


    //databinding
    /* $("#section_creation_form").my({ui:{
     "#creat_input_codeSec": "code_section",
     "#creat_input_designation": "designation"
     }}, data_section);
     */
    var grid = $("#data-table-command").bootgrid({
        css: {
            icon: 'zmdi icon',
            iconColumns: 'zmdi-view-module',
            iconDown: 'zmdi-expand-more',
            iconRefresh: 'zmdi-refresh',
            iconUp: 'zmdi-expand-less'
        },
        formatters: {
            "commands": function (column, row) {
                return "<button type=\"button\" class=\"showingInfos btn btn-icon command-edit waves-effect waves-circle\" data-row-id=\"" + row.id + "\"><span class=\"zmdi zmdi-assignment\"></span></button> " +
                    "<button type=\"button\" class=\"compte-suppr extern btn btn-icon command-delete waves-effect waves-circle\" data-row-id=\"" + row.id + "\"><span class=\"zmdi zmdi-delete\"></span></button> ";
                ;
            }
        },


    }).on("loaded.rs.jquery.bootgrid", function () {


        grid.find('button.compte-suppr.extern').on("click", function (e) {
            var rows = Array();
            rows[0] = $(this).data("row-id");
            var idUtilisateur = $($(this).closest('tr')).find('td').eq(1).text();
            afficherSupprChapitre(idUtilisateur, rows);

        }).end().find("button.showingInfos").on("click", function (e) {
            var rows = Array();
            rows[0] = $(this).data("row-id");
            var idUtilisateur = $($(this).closest('tr')).find('td').eq(1).text();
            window.location.replace("gestion_utilisateurs_get_utilisateur.html?id_utilisateur="+idUtilisateur);


           /* $.ajax(
                {
                    type: "GET",
                    url: "gestion_utilisateurs_get_utilisateur.html",
                    data: {id_utilisateur: idUtilisateur},
                }
            ).done(function (data) {
                alert(data);
            }).error(function (data) {
                swal("Erreur", "Utilisateur non  Supprimé", "error");
            });
*/
        });




        //alert("you pressed edit on row " + $(this).data("row-id"));
    });


    //Click le bouton creer une section
    $('button.section-create').on('click', function () {
        compteCreationMode = true;
        compteEditMode = false;
        compteShowingMode = false;
        afficherSection();
    });


//Click le bouton affichage d'une section
    $('button.showingInfos').on('click', function () {
        selectedCompte = $(this.closest('tr')).attr('data-row-id');
        compteShowingMode = true;
        compteCreationMode = false;
        compteEditMode = false;
        afficherSection();
    });


    //Click sur le bouton modifier (interne)
    $('button.compte-mod').on('click', function () {
        compteEditMode = true;
        compteShowingMode = false;
        compteCreationMode = false;
        afficherSection();
    });


    $('button.compte-create-submit').on('click', function () {
        afficherCreateChapitreMessage();
    });


    $('button.compte-mod-save').on('click', function () {
        afficherModifAccountMessage();
    });


//Click sur le bouton  supprimer un chapitre
    $('button.chpitre-suppr').on('click', function () {

    });

    //Click sur le bouton  créer un chapitre
    $('button.rubrique-create-submit').on('click', function () {
        afficherCreateChapitreMessage();

    });


    $('button.rubrique-create_cancel').on('click', function () {
        $("input.rubrique").val("");
        $('.card.section-detail').css('display', '');
        $('.card.rubrique-create').css('display', 'none');
    });

    $('a.rubrique-return').on('click', function () {
        //$( "input.chapitre" ).prop( "readonly", true );
        $('.card.section-detail').css('display', '');
        //$('.card.chapitre-create').addClass('animated fadeOuLeft');
        $('.card.rubrique-create').css('display', 'none');
        compteShowingMode = true;
    });


    function afficherCreateChapitre() {

        //$( "input.compte" ).prop( "readonly", false );
        $('.card.section-detail').css('display', 'none');
        $('.card.rubrique-create').css('display', '');
        $('.card.rubrique-create').addClass('animated fadeInLeft');
        compteShowingMode = false;

    }


    function afficherSection() {
        //affichage uniquement
        if (compteShowingMode) {
            $("input.compte").prop("readonly", true);
            $('button.compte-mod-save').css('display', 'none');
            $('button.compte-mod').css('display', '');
            $('button.compte-suppr').css('display', '');
            $('.card.section-detail').css('display', '');
        }
        if (compteEditMode) {
            $("input.compte").prop("readonly", false);
            $('button.compte-mod-save').css('display', '');
            $('button.compte-mod').css('display', 'none');
            $('button.compte-suppr.intern').css('display', 'none');
            $('.card.section-detail').css('display', '');
        }
        if (compteCreationMode)
            $('.card.section-create').css('display', '');


        $('.card.list-sections').css('display', 'none');

    }

//Click sur le bouton de retour
    $('a.btn-login.section-return-btn').on('click', function () {
        if (compteEditMode || compteShowingMode)
            $('.card.section-detail').css('display', 'none');
        if (compteCreationMode)
            $('.card.section-create').css('display', 'none');

        $('.card.list-sections').css('display', '');
    });


///Click sur le Bouton annuler de l'interface ceer une nouvelle section
    $('button.compte-create_cancel').on('click', function () {
        //alert("code section : "+data_section.code_section+"\ndesignation :"+data_section.designation);
        $("input.compte").val("");
        compteCreationMode = false;
        $('.card.section-create').css('display', 'none');
        $('.card.list-sections').css('display', '');


    });

    function afficherModifAccountMessage() {
        var codeChap = $('#edit_input_classes ').val();
        var designationChap = $('#edit_input_nom').val();
        swal({
            title: "Etes Vous Sure ?",
            text: "Voulez vous valider la modification du compte ?",
            type: "warning",
            showCancelButton: true,
            closeOnConfirm: false,
            confirmButtonText: "Valider",
            confirmButtonColor: "#ec6c62"
        }, function () {
            $.ajax(
                {
                    type: "POST",
                    url: "nomenclatures_chapitre_edit.html",
                    data: {code_chapitre: codeChap, designation: designationChap},
                    success: function (data) {
                        if (data == 100)
                            swal("Succès!", "Les Modifications sont effectuées avec succès", "success");
                        else
                            swal("Erreur", "Le Compte n'est pas modifié", "error");

                    }
                }
            )
                .done(function (data) {
                    swal("Succès!", "Les Modifications sont effectuées avec succès", "success");
                })
                .error(function (data) {
                    swal("Erreur", "Le Compte n'est pas modifié", "error");
                });
        });
    }

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
                        window.location.replace("gestion_utilisateurs_utilisateurs.html");
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

    function afficherSupprChapitre(idUtilisateur, selectedRow) {
        swal({
                title: 'Ete Vous Sure ?',
                text: "Voulez vous vraiment supprimer Ce Chapitre!",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#d33',
                confirmButtonText: 'Oui, Confirmer!',
                cancelButtonText: 'Annuler',
                confirmButtonClass: 'btn btn-danger',
                cancelButtonClass: 'btn',
                buttonsStyling: false,
                closeOnConfirm: true,

            },
            function (isConfirm) {


                if (isConfirm)

                    $.ajax(
                        {
                            type: "POST",
                            dataType: 'json',
                            url: "gestion_utilisateurs_utilisateur_remove.html",
                            data: {id_utilisateur: idUtilisateur},
                        }
                    ).done(function (data) {
                        if (JSON.parse(data) == "100") {

                            $('#data-table-command').bootgrid("remove", selectedRow);
                            swal("Succès!", "L'Utilisateur est supprimé avec Succès", "success");
                        }

                        else
                            swal("Erreur", "Utilisateur non  Supprimé", "error");
                    })
                        .error(function (data) {
                            swal("Erreur", "Utilisateur non  Supprimé", "error");
                        });

            });


    }

});