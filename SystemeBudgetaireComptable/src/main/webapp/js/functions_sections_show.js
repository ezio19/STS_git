//Initialisation du tableau contenant les sections
var code_section;
$(document).ready(function() {




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


    function afficherCreateSectionMessage() {

        //var code_sect = $('#creat_input_code_sect ').val();
        var designation_sect = $('#creat_input_designation').val();
        var code_struct = $('#structure-select-section').val();


        ///alert(code_sect+"\n"+designation_sect);
        //alert("code chapitre : "+code_chap+"\n"+"designation chapitre :"+designation_chap+"code section :"+code_sect );
        swal({
            title: "Etes Vous Sure ?",
            text: "Voulez vous vraiment Modifier cette Section ?",
            type: "info",
            showCancelButton: true,
            closeOnConfirm: false,
            confirmButtonText: "Confirmer",
            confirmButtonClass: "btn  btn-success waves-effect",
        }, function () {
            $.ajax(
                {
                    type: "POST",
                    url: "nomenclatures_section_edit.html",
                    data: {code_section: code_section, designation_section: designation_sect, code_structure: code_struct},

                }
            )
                .done(function (data) {
                    if (JSON.parse(data) == "100")
                        swal({
                            title: "Succès",
                            text: "Création avec Succès ",
                            type: "success",
                            closeOnConfirm: false,
                            confirmButtonText: "OK",
                            confirmButtonColor: "#2196f3"
                        }, function () {
                            window.location.replace("nomenclatures_sections.html");
                        });

                    else {
                        swal("Erreur", "Création non éffectuée ", "error");
                    }
                })
                .error(function (data) {
                    swal("Erreur", "Création non éffectuée ", "error");
                });
        });
    }

});







