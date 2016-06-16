$(document).ready(function () {
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


//Click le bouton modifier d'un compte
    $('button.editingInfors').on('click',function(){
        compteEditMode=true;
        selectedCompte=-1;
        afficherCompte(selectedCompte);
    });

//Click le bouton affichage d'un compte
    $('button.showingInfos').on('click',function(){
        selectedCompte=$(this.closest('tr')).attr('data-row-id');
        compteEditMode=false;
        afficherCompte(selectedCompte);
    });

//Click sur le bouton de supprimer
    $('button.utilisateur-suppr.extern').on('click',function(){
        selectedCompte=-1;
        afficherSupprMessage(this.closest('tr'));
    });

});






/*Projet Comptable et Budgétaire functions*/
var compteEditMode=false;
var compteSelected=false;
var selectedCompte=-1;
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


function afficherCompte(selectedCompte){
    //affichage uniquement
    if(compteEditMode==false){
        compteSelected=true;
        $( "input.utilisateur" ).prop( "readonly", true );
        $('button.utilisateur-mod-save').css('display', 'none');
        $('button.utilisateur-mod').css('display', '');
        $('button.utilisateur-suppr').css('display', '');
        
    }
    else{ //modification      
        $( "input.utilisateur" ).prop( "readonly", false );
        $('button.utilisateur-mod').css('display', 'none');
        $('button.utilisateur-suppr.intern').css('display', 'none');
        $('button.utilisateur-mod-save').css('display', '');
    }
    
    $('.card.list-utilisateurs').css('display', 'none');
    $('.card.utilisateur-detail').css('display', '');
}


//Click sur le bouton de supprimer
$('button.utilisateur-suppr.intern').on('click',function(){
        afficherSupprMessage(this.closest('tr'));
});

//Click sur le bouton de retour
$('a.utilisateur-return-btn').on('click',function(){
        compteSelected=false;
        
        $('.card.list-utilisateurs').css('display', '');
        $('.card.utilisateur-detail').css('display', 'none');
        
    });


function afficherSupprMessage(compteRow){
    swal({
  title: 'Ete Vous Sure ?',
  text: "Voulez vous vraiment supprimer Cet Utilisateur!",
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
         
    $('.card.list-utilisateurs').css('display', '');
    $('.card.utilisateur-detail').css('display', 'none');
    
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


$(document).ready(function(){
    //$('.card-contenu').css('display', 'none')
    
    //$('#testspark').prop("readonly",null);
    //$("#testspark").clear();
//    $( "#testspark" ).prop( "readonly", false );
});


      






