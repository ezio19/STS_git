/*Projet Comptable et Budgétaire functions*/
var compteEditMode = false;
var compteSelected = false;
var selectedCompte = -1;
var compteCreationMode = false;
var compteShowingMode = false;
var selectedSection = -1;


//Initialisation du tableau contenant les sections
$(document).ready(function () {


    var grid=$("#data-table-command").bootgrid({
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
        }

    });
}).on("loaded.rs.jquery.bootgrid", function () {

    $("#data-table-command").find('button.command-delete').on("click", function (e) {
        var rows = Array();
        rows[0] = $(this).data("row-id");
        var idUtilisateur = $($(this).closest('tr')).find('td').eq(1).text();
        $("#data-table-command").bootgrid("remove",rows);
        afficherSupprChapitre(idUtilisateur, rows);

    })
        .end().find("button.command-edit").on("click", function (e) {
        var rows = Array();
        rows[0] = $(this).data("row-id");
        var idUtilisateur = $($(this).closest('tr')).find('td').eq(1).text();
        window.location.replace("nomenclatures_get_structure.html?code_structure=" + idUtilisateur);
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
        selectedSection = $(this.closest('tr')).attr('data-row-id');
        compteShowingMode = true;
        compteCreationMode = false;
        compteEditMode = false;
        afficherSection();
    });

//Click sur le bouton de supprimer

    //Click sur le bouton modifier (interne)
    $('button.compte-mod').on('click', function () {
        compteEditMode = true;
        compteShowingMode = false;
        compteCreationMode = false;
        afficherSection();
    });


    $('button.compte-create-submit').on('click', function () {
        //afficherCreateAccountMessage();
        afficherCreateSectionMessage();
    });


    $('button.compte-mod-save').on('click', function () {
        afficherModifAccountMessage();
    });


//Click sur le bouton  supprimer un chapitre
    $('button.chpitre-suppr').on('click', function () {

    });

    //Click sur le bouton  créer un chapitre
    $('button.chapitre-create-submit').on('click', function () {
        afficherCreateChapitreMessage();
    });


    $('button.chapitre-create_cancel').on('click', function () {
        $("input.chapitre").val("");
        $('.card.section-detail').css('display', '');
        //$('.card.chapitre-create').addClass('animated fadeOuLeft');
        $('.card.chapitre-create').css('display', 'none');
    });


    $('a.chapitre-return').on('click', function () {
        //$( "input.chapitre" ).prop( "readonly", true );
        $('.card.section-detail').css('display', '');
        //$('.card.chapitre-create').addClass('animated fadeOuLeft');
        $('.card.chapitre-create').css('display', 'none');
        compteShowingMode = true;
    });


});
;


//Configuration du tableau contenant les chapitres
$(document).ready(function () {
    $("#chapitre-data-table-command").bootgrid({
        css: {
            icon: 'zmdi icon',
            iconColumns: 'zmdi-view-module',
            iconDown: 'zmdi-expand-more',
            iconRefresh: 'zmdi-refresh',
            iconUp: 'zmdi-expand-less'
        },
        formatters: {
            "commands": function (column, row) {
                return "<button type=\"button\" class=\"chpitre-suppr extern btn btn-icon command-delete waves-effect waves-circle\" data-row-id=\"" + row.id + "\"><span class=\"zmdi zmdi-delete\"></span></button> ";
            }
        }

    });
}).on("loaded.rs.jquery.bootgrid", function () {




    //Click sur le bouton  supprimer un chapitre
    $('button.chapitre-create').on('click', function () {
        afficherCreateChapitre();


    });


    //Click sur le bouton  supprimer un chapitre
    $('button.chpitre-suppr').on('click', function () {
        /* var rows=Array();
         rows[0] = $(this).data("row-id");
         afficherSupprChapitre(rows);
         alert("You pressed edit on row: " + $(this).data("row-id"));*/

        var rows = Array();
        rows[0] = $(this).data("data-row-id");
        $("#chapitre-data-table-command").bootgrid('remove', rows);


    });


});


function afficherCreateChapitre() {

    //$( "input.compte" ).prop( "readonly", false );
    $('.card.section-detail').css('display', 'none');
    $('.card.chapitre-create').css('display', '');
    $('.card.chapitre-create').addClass('animated fadeInLeft');
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


//Click sur le bouton  supprimer
$('button.compte-suppr.intern').on('click', function () {
    afficherSupprMessage(this.closest('tr'));
});

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


function afficherCreateSectionMessage() {

    var code_struct = $('#creat_input_code_struct ').val();
    var nom_struct = $('#creat_input_nom_struct').val();
    var addresse_struct = $('#creat_input_address_struct').val();
    swal({
        title: "Etes Vous Sure ?",
        text: "Voulez vous vraiment Ajouter cette Structure ?",
        type: "info",
        showCancelButton: true,
        closeOnConfirm: false,
        confirmButtonText: "Confirmer",
        confirmButtonClass: "btn  btn-success waves-effect",
    }, function () {
        $.ajax(
            {
                type: "POST",
                url: "nomenclatures_strcuture_create.html",
                data: {nom_structure: nom_struct, address_strcuture: addresse_struct, code_strcuture: code_struct},
                success: function (data) {
                    if (JSON.parse(data) == "100")
                        swal("Succès!", "La Structure a été ajoutée avec succès", "success");
                    else
                        swal("Erreur", "La Structure n'a pas été ajoutée ", "error");
                }
            }
        )
            .done(function (data) {
                swal("Succès!", "La Strcture a été ajoutée avec succès", "success");
            })
            .error(function (data) {
                swal("Erreur", "La Strcture n'a pas été ajoutée", "error");
            });
    });
}











function afficherSupprChapitre(code_struct, selectedRow) {


    console.log("the chapitre code is :" + selectedRow);

    swal({
            title: 'Ete Vous Sure ?',
            text: "Voulez vous vraiment supprimer Cette Strcuture!",
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
                        url: "nomenclatures_structure_remove.html",
                        data: {code_structure: code_struct},
                    }
                ).done(function (data) {
                    if (JSON.parse(data) == "100"){

                        $('#data-table-command').bootgrid("remove", selectedRow);
                        swal("Succès!", "La  Strcuture a été supprimée avec Succès", "success");
                    }

                    else
                        swal("Erreur", "La Structure n'est pas Supprimée", "error");
                })
                    .error(function (data) {
                        swal("Erreur", "La Structure n'est pas Supprimée", "error");
                    });

        });


}




