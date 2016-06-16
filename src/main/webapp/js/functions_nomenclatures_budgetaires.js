/*Projet Comptable et Budgétaire functions*/
var compteEditMode=false;
var compteSelected=false;
var selectedCompte=-1;
var compteCreationMode=false;



$(document).ready(function(){
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
                "<button type=\"button\" class=\"editingInfors btn btn-icon command-edit waves-effect waves-circle\" data-row-id=\"" + row.id + "\"><span class=\"zmdi zmdi-edit\"></span></button>"+"<button type=\"button\" class=\"compte-suppr extern btn btn-icon command-delete waves-effect waves-circle\" data-row-id=\"" + row.id + "\"><span class=\"zmdi zmdi-delete\"></span></button> ";
        }
    }

});}).on("loaded.rs.jquery.bootgrid", function()
{
    /* Executes after data is loaded and rendered */
    //Click le bouton modifier d'un compte 
$('button.editingInfors').on('click',function(){
    compteEditMode=true;
    selectedCompte=-1;
    afficherCompte();
});

//Click le bouton modifier d'un compte 
$('button.compte-mod').on('click',function(){
    compteEditMode=true;
    selectedCompte=-1;
    afficherCompte();
});

//Click le bouton creer un compte
    $('button.compte-create').on('click',function(){
        compteCreationMode=true;
        afficherCompte();
    });



//Click le bouton modifier d'un compte
$('button.compte-mod-save').on('click',function(){
    //selectedCompte=-1;
    //afficherModifMessage(selectedCompte);
    afficherModifAccountMessage();
});

//Click le bouton affichage d'un compte
$('button.showingInfos').on('click',function(){
    selectedCompte=$(this.closest('tr')).attr('data-row-id');
    compteEditMode=false;
    afficherCompte();
});

//Click sur le bouton de supprimer
$('button.compte-suppr.extern').on('click',function(){
        selectedCompte=-1;
        afficherSupprMessage(this.closest('tr'));
});

    $('button.compte-create-submit').on('click',function(){
        afficherCreateAccountMessage();
    });






});;


$(document).ready(function(){
    // applied typeahead to the text input box
      $('#concatInput').typeahead({
        name: '',

        // data source
        prefetch: 'data/countries.json',

        // max item numbers list in the dropdown
        limit: 10
      });

       //$( "div.col-sm-3 > span.twitter-typeahead > span.twitter-typeahead :first-child" ).remove();
});

function afficherCompte(){
    //affichage uniquement
    if(compteEditMode==false && compteCreationMode==false ){
        $( "input.compte" ).prop( "readonly", true );
        $('button.compte-mod-save').css('display', 'none');
        if(compteSelected==false){
        $('button.compte-mod').css('display', '');
        $('button.compte-suppr').css('display', '');

        compteSelected=true;
        }
        $('.card.compte-detail').css('display', '');
        //Modification
    }else if(compteEditMode==true){
        $( "input.compte" ).prop( "readonly", false );
        $('button.compte-mod').css('display', 'none');
        $('button.compte-suppr.intern').css('display', 'none');
        $('button.compte-mod-save').css('display', '');
        $('.card.compte-detail').css('display', '');
    }else    //Creation d'un compte
        if(compteCreationMode==true)
            $('.card.compte-create').css('display', '');

    $('.card.list-comptes').css('display', 'none');

}


//Click sur le bouton de supprimer
$('button.compte-suppr.intern').on('click',function(){
        afficherSupprMessage(this.closest('tr'));
});

//Click sur le bouton de retour
$('a.compte-return-btn').on('click',function(){
    $('.card.compte-detail').css('display', 'none');
    if(compteEditMode)
            compteSelected=false;
    if(compteCreationMode)
            $('.card.compte-create').css('display', 'none');

        $('.card.list-comptes').css('display', '');
    });


///Click sur le Bouton annuler de l'interface ceer un nouveau compte
$('button.compte-create_cancel').on('click',function(){
    $( "input.compte" ).val("");
    compteCreationMode=false;
    $('.card.compte-create').css('display', 'none');
    $('.card.list-comptes').css('display', '');


});


function afficherSupprMessage(compteRow){
    swal({
  title: 'Ete Vous Sure ?',
  text: "Voulez vous vraiment supprimer ce Compte!",
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
      'Le Compte est Supprimé .',
      'success'
    );
    if(selectedCompte==-1)
        compteRow.remove();
    else{
        var sel="tr[data-row-id=".concat(selectedCompte).concat("]");
        //$( "tr[data-row-id=""]" ).remove();
        $(sel).remove();
    }

    $('.card.list-comptes').css('display', '');
    $('.card.compte-detail').css('display', 'none');

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
            type: "warning",
            showCancelButton: true,
            closeOnConfirm: false,
            confirmButtonText: "Annuler",
            confirmButtonColor: "#ec6c62"
        }, function() {
            $.ajax(
                {
                    type: "POST",
                    url: "nomenclatures_budget_create.html",
                    data: { classe:classe1, nom:nom1 ,section:section1 ,chapitre:chapitre1,rubrique:rubrique1,numero:numero1,designagtion:designagtion1 , type:type1 },
                    success: function(data){
                        if(data==100)
                            swal("Succès!", "Le Compte esr Ajouté avec Succès", "success");
                        else if(data==444)
                            swal("Erreur!", "Null Pointer Exception", "error");
                        else
                            swal("Erreur", "Le Compte n'est pas modifié", "error");
                        alert(data);
                    }
                }
                )
                .done(function(data) {
                    swal("Succès!", "Le Compte esr Ajouté avec Succès", "success");
                })
                .error(function(data) {
                    swal("Erreur", "Le Compte n'est pas ajouté", "error");
                    alert(data);
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

//function afficherModifMessage(compteRow){};
 /*   swal({
  title: 'Ete Vous Sure ?',
  text: "Voulez vous vraiment enregistrer ces modification",
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
  if (isConfirm === true)
    swal(
      'Succès!',
      'Le Compte est Modifié .',
      'success'
    );

});*/




