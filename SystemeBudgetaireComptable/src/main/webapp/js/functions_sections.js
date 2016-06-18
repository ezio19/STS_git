/*Projet Comptable et Budgétaire functions*/
var compteEditMode=false;
var compteSelected=false;
var selectedCompte=-1;
var compteCreationMode=false;
var compteShowingMode=false;
var selectedSection=-1;




//Initialisation du tableau contenant les sections
$(document).ready(function(){


    //Initialisation
    $.getJSON('/nomenclatures_structures_list.json', {
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





    $("#data-table-command").bootgrid({
      css: {
                        icon: 'zmdi icon',
                        iconColumns: 'zmdi-view-module',
                        iconDown: 'zmdi-expand-more',
                        iconRefresh: 'zmdi-refresh',
                        iconUp: 'zmdi-expand-less'
                    },
    formatters: {
        "commands": function(column, row)
        {
            return "<button type=\"button\" class=\"showingInfos btn btn-icon command-edit waves-effect waves-circle\" data-row-id=\"" + row.id + "\"><span class=\"zmdi zmdi-assignment\"></span></button> " +
                "<button type=\"button\" class=\"compte-suppr extern btn btn-icon command-delete waves-effect waves-circle\" data-row-id=\"" + row.id + "\"><span class=\"zmdi zmdi-delete\"></span></button> ";;
        }
    }

});}).on("loaded.rs.jquery.bootgrid", function()
{

    //Click le bouton creer une section
    $('button.section-create').on('click',function(){
        compteCreationMode=true;
        compteEditMode=false;
        compteShowingMode=false;
        afficherSection();
    });


//Click le bouton affichage d'une section
$('button.showingInfos').on('click',function(){
    selectedSection=$(this.closest('tr')).attr('data-row-id');
    compteShowingMode=true;
    compteCreationMode=false;
    compteEditMode=false;
    afficherSection();
});

//Click sur le bouton de supprimer
$('button.compte-suppr.extern').on('click',function(){
    var self=$(this)
    var rows = Array();
    rows[0] = $(this).data("data-ro)w-id");
    //var closes=$(this.closest('tr').attr('class');
    alert('rows  ::: '+closes);
    //alert(self.closest('tr').attr('data-row-id'));
    //$("#chapitre-data-table-command").bootgrid('remove', rows);
    //afficherSupprChapitre(self.closest('tr').attr('data-row-id'))

});

    //Click sur le bouton modifier (interne)
    $('button.compte-mod').on('click',function(){
        compteEditMode=true;
        compteShowingMode=false;
        compteCreationMode=false;
        afficherSection();
    });




    $('button.compte-create-submit').on('click',function(){
        //afficherCreateAccountMessage();
        afficherCreateSectionMessage();
    });


    $('button.compte-mod-save').on('click',function(){
        afficherModifAccountMessage();
    });


//Click sur le bouton  supprimer un chapitre
    $('button.chpitre-suppr').on('click',function(){

    });

    //Click sur le bouton  créer un chapitre
    $('button.chapitre-create-submit').on('click',function(){
            afficherCreateChapitreMessage();
    });


    $('button.chapitre-create_cancel').on('click',function(){
        $( "input.chapitre" ).val("");
        $('.card.section-detail').css('display', '');
        //$('.card.chapitre-create').addClass('animated fadeOuLeft');
        $('.card.chapitre-create').css('display', 'none');
    });




    $('a.chapitre-return').on('click',function(){
        //$( "input.chapitre" ).prop( "readonly", true );
        $('.card.section-detail').css('display', '');
        //$('.card.chapitre-create').addClass('animated fadeOuLeft');
        $('.card.chapitre-create').css('display', 'none');
        compteShowingMode=true;
    });





});;



//Configuration du tableau contenant les chapitres
$(document).ready(function(){
    $("#chapitre-data-table-command").bootgrid({
        css: {
            icon: 'zmdi icon',
            iconColumns: 'zmdi-view-module',
            iconDown: 'zmdi-expand-more',
            iconRefresh: 'zmdi-refresh',
            iconUp: 'zmdi-expand-less'
        },
        formatters: {
            "commands": function(column, row)
            {
                return "<button type=\"button\" class=\"chpitre-suppr extern btn btn-icon command-delete waves-effect waves-circle\" data-row-id=\"" + row.id + "\"><span class=\"zmdi zmdi-delete\"></span></button> ";
            }
        }

    });}).on("loaded.rs.jquery.bootgrid",function () {


    //Click sur le bouton  supprimer un chapitre
    $('button.chapitre-create').on('click',function(){
        afficherCreateChapitre();


    });


    //Click sur le bouton  supprimer un chapitre
    $('button.chpitre-suppr').on('click',function(){
        /* var rows=Array();
         rows[0] = $(this).data("row-id");
         afficherSupprChapitre(rows);
         alert("You pressed edit on row: " + $(this).data("row-id"));*/

        var rows = Array();
        rows[0] = $(this).data("data-row-id");
        $("#chapitre-data-table-command").bootgrid('remove', rows);




    });



});


function afficherCreateChapitre(){

    //$( "input.compte" ).prop( "readonly", false );
    $('.card.section-detail').css('display', 'none');
    $('.card.chapitre-create').css('display', '');
    $('.card.chapitre-create').addClass('animated fadeInLeft');
    compteShowingMode=false;

}



function afficherSection(){
    //affichage uniquement
    if(compteShowingMode){
        $( "input.compte" ).prop( "readonly", true );
        $('button.compte-mod-save').css('display', 'none');
        $('button.compte-mod').css('display', '');
        $('button.compte-suppr').css('display', '');
        $('.card.section-detail').css('display', '');
    }
    if(compteEditMode) {
        $( "input.compte" ).prop( "readonly", false );
        $('button.compte-mod-save').css('display', '');
        $('button.compte-mod').css('display', 'none');
        $('button.compte-suppr.intern').css('display', 'none');
        $('.card.section-detail').css('display', '');
    }
    if(compteCreationMode)
        $('.card.section-create').css('display', '');


    $('.card.list-sections').css('display', 'none');

}


//Click sur le bouton  supprimer
$('button.compte-suppr.intern').on('click',function(){
        afficherSupprMessage(this.closest('tr'));
});

//Click sur le bouton de retour
$('a.btn-login.section-return-btn').on('click',function(){
    if(compteEditMode || compteShowingMode)
        $('.card.section-detail').css('display', 'none');
    if(compteCreationMode)
            $('.card.section-create').css('display', 'none');

        $('.card.list-sections').css('display', '');
    });




///Click sur le Bouton annuler de l'interface ceer une nouvelle section
$('button.compte-create_cancel').on('click',function(){
    //alert("code section : "+data_section.code_section+"\ndesignation :"+data_section.designation);
    $( "input.compte" ).val("");
    compteCreationMode=false;
    $('.card.section-create').css('display', 'none');
    $('.card.list-sections').css('display', '');
});




function afficherCreateSectionMessage() {

    var code_sect= $('#creat_input_code_sect ').val();
    var designation_sect = $('#creat_input_designation').val();
    var code_struct = $('#structure-select-section').val();


    ///alert(code_sect+"\n"+designation_sect);
    //alert("code chapitre : "+code_chap+"\n"+"designation chapitre :"+designation_chap+"code section :"+code_sect );
    swal({
        title: "Etes Vous Sure ?",
        text: "Voulez vous vraiment Ajouter cette Section ?",
        type: "info",
        showCancelButton: true,
        closeOnConfirm: false,
        confirmButtonText: "Confirmer",
        confirmButtonClass: "btn  btn-success waves-effect",
    }, function () {
        $.ajax(
            {
                type: "POST",
                url: "/nomenclatures_section_create.html",
                data: {code_section: code_sect, designation_section: designation_sect,code_structure:code_struct},
                success: function (data) {
                    if (JSON.parse(data) == "100")
                        swal("Succès!", "La section a été ajoutée avec succès", "success");
                    else
                        swal("Erreur", "La n'a pas été ajoutée ", "error");
                }
            }
        )
            .done(function (data) {
                swal("Succès!", "La section a été ajoutée avec succès", "success");
            })
            .error(function (data) {
                swal("Erreur", "La n'a pas été ajoutée", "error");
            });
    });
}




function afficherSupprMessage(compteRow){
    swal({
  title: 'Ete Vous Sure ?',
  text: "Voulez vous vraiment supprimer cette section!",
  type: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#d33',
  confirmButtonText: 'Oui, Confirmer!',
  cancelButtonText: 'Annuler',
  confirmButtonClass: 'btn btn-danger',
  cancelButtonClass: 'btn',
  buttonsStyling: false,
  closeOnConfirm: false,

},
function(isConfirm) {
  if (isConfirm === true) {
    swal(
      'Succès!',
      'Le Section est Supprimée avec succès .',
      'success'
    );
    if(selectedCompte==-1)
        compteRow.remove();
    else{
         sel="tr[data-row-id=".concat(selectedCompte).concat("]");
        //$( "tr[data-row-id=""]" ).remove();
        $(sel).remove();

    }

    $('.card.list-sections').css('display', '');
    $('.card.section-detail').css('display', 'none');

  } else if (isConfirm === false) {
    /*swal(
      'Erreur',
      'Compte non Supprimé',
      'error'
    );*/
  } else {
    // outside click, isConfirm is undefinded
  }
});
}

function afficherCreateAccountMessage(){
    var classe1= $('#creat_input_classe ').val();
    var section1=$('#creat_input_section').val();
    var nom1=$('#creat_input_nom').val();
    var chapitre1=$('#creat_input_chapitre').val();
    var rubrique1=$('#creat_input_rubrique').val();
    var numero1=$('#creat_input_compte_num ').val();
    var designagtion1=$('#creat_input_designation ').val();
    var type1=$('#creat_input_type').val();
    swal({
            title: "Etes Vous Sure ?",
            text: "Voulez vous vraiment Ajouter ce Compte ?",
            type: "info",
            showCancelButton: true,
            closeOnConfirm: false,
            confirmButtonText: "Confirmer",
            confirmButtonClass :"btn  btn-success waves-effect",
        }, function() {
            $.ajax(
                {
                    type: "POST",
                    url: "/nomenclatures_budget_create.html",
                    data: { classe:classe1, nom:nom1 ,section:section1 ,chapitre:chapitre1,rubrique:rubrique1,numero:numero1,designagtion:designagtion1 , type:type1 },
                    success: function(data){
                        if(data==100)
                            swal("Succès!", "La Section est ajoutée avec Succès", "success");
                        else
                            swal("Erreur", "La Section n'est pas ajoutée", "error");
                        alert(data);
                    }
                }
                )
                .done(function(data) {
                    swal("Succès!", "La Section est ajoutée avec Succès", "success");
                })
                .error(function(data) {
                    swal("Erreur", "La Section n'est pas ajoutée ", "error");
                });
        });
}

function afficherModifAccountMessage(){
    var classe1= $('#edit_input_classe ').val();
    var section1=$('#edit_input_section').val();
    var nom1=$('#edit_input_nom').val();
    var chapitre1=$('#edit_input_chapitre').val();
    var rubrique1=$('#edit_input_rubrique').val();
    var numero1=$('#edit_input_compte_num ').val();
    var designagtion1=$('#edit_input_designation ').val();
    var type1=$('#edit_input_type').val();
    swal({
            title: "Etes Vous Sure ?",
            text: "Voulez vous valider la modification du compte ?",
            type: "warning",
            showCancelButton: true,
            closeOnConfirm: false,
            confirmButtonText: "Valider",
            confirmButtonColor: "#ec6c62"
        }, function() {
            $.ajax(
                {
                    type: "POST",
                    url: "/nomenclatures_budget_edit.html",
                    data: { classe:classe1, nom:nom1 ,section:section1 ,chapitre:chapitre1,rubrique:rubrique1,numero:numero1,designagtion:designagtion1 , type:type1 },
                    success: function(data){
                        if(data==100)
                            swal("Succès!", "Les Modifications sont effectuées avec succès", "success");
                        else
                            swal("Erreur", "Le Compte n'est pas modifié", "error");

                    }
                }
                )
                .done(function(data) {
                    swal("Succès!", "Les Modifications sont effectuées avec succès", "success");
                })
                .error(function(data) {
                    swal("Erreur", "Le Compte n'est pas modifié", "error");
                });
        });
}


function afficherCreateChapitreMessage() {

    var code_chap= $('#creat_input_codeChapitre ').val();
    var designation_chap=$('#creat_input_designationChapitre').val();
    swal({
        title: "Etes Vous Sure ?",
        text: "Voulez vous vraiment Ajouter ce Chapitre ?",
        type: "info",
        showCancelButton: true,
        closeOnConfirm: false,
        confirmButtonText: "Confirmer",
        confirmButtonClass :"btn  btn-success waves-effect",
    }, function() {
        $.ajax(
            {
                type: "POST",
                url: "/nomenclatures_chapitre_create.html",
                data: { code_chapitre:code_chap, designation_chapitre:designation_chap},
                success: function(data){
                    if(data==100)
                        swal("Succès!", "Le Chapitre est ajoutée avec Succès", "success");
                    else
                        swal("Erreur", "Le Chapitre n'est pas ajouté", "error");
                }
            }
        )
            .done(function(data) {
                swal("Succès!", "Le Chapitre est ajoutée avec Succès", "success");
            })
            .error(function(data) {
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




