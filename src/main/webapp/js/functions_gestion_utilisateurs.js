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
    $.getJSON('/nomenclatures_sections_list.json', {
        ajax: 'true'
    }, function (result) {
        var htln = "";
        for (var i = 0; i < result.sectionList.length; i++) {
            //alert("taille de la liste : "+result.sectionList.length+"taille du result :"+result.length+"  la section "+i+" "+result.sectionList[i].codeSection+" "+result.sectionList[i].designation);
            console.log("Section " + i);
            console.log("Code Section " + result.sectionList[i].codeSection);
            console.log("Designation" + result.sectionList[i].designation);

            //$('#chapitre-select-section').selectpicker(result.sectionList[i].codeSection, result.sectionList[i].designation);

            /*
             $('#chapitre-select-section')
             .append($('<option>', { value : result.sectionList[i].codeSection })
             .text(result.sectionList[i].designation));
             */
            htln += '<option value=';
            htln += "" + result.sectionList[i].codeSection;
            htln += '>';
            htln += "" + result.sectionList[i].designation;
            htln += '</option>';
        }
        //alert(htln);
        $("#chapitre-select-section")
            .html(htln)
         .selectpicker('refresh');

        //$("#chapitre-select-section").append(htln);
//            append(htln);
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
    $("#data-table-command").bootgrid({
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

//Click sur le bouton de supprimer
    $('button.compte-suppr.extern').on('click', function () {
        var self=$(this);
        var part;
        //part=;
        //part=JSON.stringify(part);
        //[data-findme]
        //afficherSupprMessage2(self.closest('tr'));
        afficherSupprChapitre( self.closest('tr').attr('data-row-id'));

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


}).on('selected.rs.jquery.bootgrid',function (e,row) {
        alert(e);
});
;


//Configuration du tableau contenant les rubrique
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
                return "<button type=\"button\" class=\"rubrique-suppr extern btn btn-icon command-delete waves-effect waves-circle\" data-row-id=\"" + row.id + "\"><span class=\"zmdi zmdi-delete\"></span></button> ";
            }
        }

    });
}).on("loaded.rs.jquery.bootgrid", function () {


    //Click sur le bouton  supprimer un chapitre
    $('button.rubrique-create').on('click', function () {
        afficherCreateChapitre();


    });


    //Click sur le bouton  supprimer un chapitre
    $('button.rubrique-suppr').on('click', function () {
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
        $('.card.utilisateur-detail').css('display', '');


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
        $('.card.utilisateur-detail').css('display', 'none');

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
                url: "/nomenclatures_chapitre_edit.html",
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
    var nom = $('#creat_input_nom ').val();
    var pnom = $('#creat_input_prenom').val();
    var mail=$('#creat_input_email').val();
    var tel = $('#creat_input_telephone ').val();
    var addr = $('#creat_input_addresse').val();
    var idUse=$('#creat_input_id_user').val();
    var codstr=$('#creat_input_code_structure').val();
    /*ajout de variable pour les droits d'accès*/
    swal({
        title: "Etes Vous Sure ?",
        text: "Voulez vous vraiment Ajouter ce Chapitre ?",
        type: "info",
        showCancelButton: true,
        closeOnConfirm: false,
        confirmButtonText: "Confirmer",
        confirmButtonClass: "btn  btn-success waves-effect",
    }, function () {
        $.ajax(
            {
                type: "POST",
                url: "/gestion_utilisateurs_create.json",
                data: {nom_user: nom, prenom: pnom},
                success: function (data) {
                    if (JSON.parse(data) == "100")
                        swal("Succès!", "Le Chapitre est ajoutée avec Succès", "success");
                    else
                        swal("Erreur", "Le Chapitre n'est pas ajouté", "error");
                }
            }
        )
            .done(function (data) {
                swal("Succès!", "Le Chapitre est ajoutée avec Succès", "success");
            })
            .error(function (data) {
                swal("Erreur", "Le Chapitre n'est pas ajouté", "error");
            });
    });
}

function afficherSupprChapitre(selectedRow) {

    console.log("the chapitre code is :" +selectedRow);

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
            if(isConfirm)
                $.ajax(
                    {
                        type: "POST",
                        dataType: 'json',
                        url: "/nomenclatures_chapitre_delete.json",
                        data: {code_chapitre: selectedRow},
                        success: function (data) {
                            if (JSON.parse(data) == "100")
                                swal("Succès!", "Le Chapitre est ajoutée avec Succès", "success");
                            else
                                swal("Erreur", "Le Chapitre n'est pas ajouté", "error");
                        }
                    }
                ).done(function (data) {
                    swal("Succès!", "Le Chapitre est ajoutée avec Succès", "success");
                })
                    .error(function (data) {
                        swal("Erreur", "Chapitre non  Supprimé", "error");
                    });

        });


}
