/*Projet Comptable et Budgétaire functions*/


//Initialisation du tableau contenant les sections
$(document).ready(function () {

    var code_structure;



    $('button.compte-modif').on('click', function () {
        $("button.compte-modif").css("display", 'none');
        $("button.compte-modif-submit").css("display", '');
        $("input.compte").prop("readonly", false);
        $("#creat_input_code_struct").prop("readonly", true);
        code_structure=$("#creat_input_code_struct").attr('placeholder');
        //$("#creat_input_code_struct").val(code_str);

    });

    $('button.compte-modif-submit').on('click', function () {
        afficherCreateSectionMessage();
    });


    function afficherCreateSectionMessage() {

        //var code_struct = $('#creat_input_code_struct ').val();
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
                    url: "nomenclatures_strcuture_edit.html",
                    data: {nom_structure: nom_struct, address_strcuture: addresse_struct, code_strcuture: code_structure},

                }
            )
                .done(function (data) {
                    if (JSON.parse(data) == "100")
                        swal("Succès!", "La Structure a été Modifiée avec succès", "success");
                    else if (JSON.parse(data) == "101")
                        swal("Erreur", "La Structure n'existe pas", "error");
                    else
                        swal("Erreur", "La Structure n'a pas été Modifiée ", "error");
                })
                .error(function (data) {
                    swal("Erreur", "La Strcture n'a pas été ajoutée", "error");
                });

        });
    }
});




