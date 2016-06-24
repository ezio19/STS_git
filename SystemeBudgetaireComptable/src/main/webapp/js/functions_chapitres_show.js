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



    $('button.compte-create').on('click', function () {
        $("button.compte-create").css("display", 'none');
        $("button.compte-create-submit").css("display", '');
        $("#code_struct").css("display", 'none');
        $("#structure-select").css("display", '');
        $("input.compte").prop("readonly", false);
        $("#creat_input_code_sect").prop("readonly", true);
        code_section=$("#creat_input_code_sect").attr('placeholder');
        getStructuresList();


        //$("#creat_input_code_struct").val(code_str);

    });

    $('button.compte-create-submit').on('click', function () {
        afficherCreateSectionMessage();
    });










    //Initialisation
    $.getJSON('nomenclatures_sections_list.json', {
        ajax: 'true'
    }, function (result) {
        var htln = "";
        for (var i = 0; i < result.sectionList.length; i++) {
            console.log("Section " + i);
            console.log("Code Section " + result.sectionList[i].codeSection);
            console.log("Designation" + result.sectionList[i].designation);
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

    }).done(function () {
        console.log("apres success");
    })
        .fail(function () {
            console.log("error");
        })
        .always(function () {
            console.log("complete toujours succes ou erreur");
        });



function afficherCreateChapitreMessage() {

    var code_chap = $('#creat_input_codechap ').val();
    var designation_chap = $('#creat_input_designation').val();
    var code_sect=$('#chapitre-select-section').val();
    //alert("code chapitre : "+code_chap+"\n"+"designation chapitre :"+designation_chap+"code section :"+code_sect );
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
                url: "nomenclatures_chapitre_create.html",
                data: {code_chapitre: code_chap, designation_chapitre: designation_chap,code_section:code_sect},
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


});
