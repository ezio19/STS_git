<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<!--[if IE 9 ]>
<html class="ie9"><![endif]-->

<!--powered by ESI IFA Project 2016 -->

<head>
    <meta charset="utf-8">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Liste des guides IFA</title>

    <!-- Vendor CSS -->
    <link href="vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
    <link href="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css" rel="stylesheet">
    <link href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
    <link href="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">

    <!-- CSS -->
    <link href="css/app.min.1.css" rel="stylesheet">
    <link href="css/app.min.2.css" rel="stylesheet">



    <script language="javascript">
        function deleteRow() {
            try {
                var table = document.getElementById('tableGuide');
                var rowCount = table.rows.length;

                for(var i=0; i<rowCount; i++) {
                    var row = table.rows[i];
                    var chkbox = row.cells[0].childNodes[0];
                    if(null != chkbox && true == chkbox.checked) {


                        var tabledeleted = document.getElementById('tabledeleted');


                        var rowCounttabledeleted = tabledeleted.rows.length-1;
                        var rowtabledeleted= tabledeleted.insertRow(rowCounttabledeleted+1);
                        document.getElementById('deleted').value= rowCounttabledeleted;


                        var cell1 = rowtabledeleted.insertCell(0);
                        var para = document.createElement("P");
                        para.name="listdel["+rowCounttabledeleted+"]";
                        var idcpt=  document.getElementById('tableGuide').getElementsByTagName('tr')[i].cells[1].innerHTML;
                        var t = document.createTextNode(rowCounttabledeleted);
                        para.appendChild(t);
                        cell1.appendChild(para);






                        table.deleteRow(i);
                        rowCount--;
                        i--;

                    }
                }

            }catch(e) {
                alert(e);

            }
            var table = document.getElementById('tableGuide');
            var rowCount = table.rows.length;

            for(var i=1; i<rowCount; i++) {
                document.getElementById("tableGuide").rows[i].cells[1].innerHTML = i;

            }



        }


    </script>
</head>
<body>

<c:import url="header.jsp"></c:import>

<section id="main">
<c:import url="sidebar.jsp"></c:import>


    <section id="content">
        <div class="container">

            <form name="deletedguides" method="post" style="visibility: collapse;">
                <input type="text" name="iddeleted" id="iddeleted"> </input>
                <input type="text" name="namedeleted" id="namedeleted"> </input>
                <input type="text" name="typeGuidedeleted" id="typeGuidedeleted"> </input>
                <input type="text" name="desciptiondeleted" id="desciptiondeleted"> </input>
                <input type="text" name="datedeleted" id="datedeleted"> </input>
                <input type="text" name="typeop" id="typeop"> </input>

            </form>



                <div class="card">
                    <div class="card-body card-padding" >
                        <div style="display:inline; margin:10px; width: 301px; padding:10px; position: absolute;top:16px;right:4px;">
                            <form id="formpag" method="get">
                                <input  type="text" class="search-field form-control" placeholder="Rechercher" name="nameSearch"style="display:inline;     width: 86%;">
                                <button  type="submit"  class="btn btn-info waves-effect"><i class="zmdi zmdi-search"></i></button>
                            </form>
                        </div>
                        <form  name="formguides" method="post">
                        <div style="visibility: collapse;">
                            <input type="text" id="nb_element" name="nb_element">1</input>
                        </div>

                        <div style="visibility: collapse;">
                            <input type="text" id="deleted" name="deleted">1</input>
                        </div>

                        <div class="table-responsive" style="padding-bottom:16px">

                            <table id="tableGuide" class="table table-bordered" style="margin-top: 65px;">
                                <thead>

                                <tr>
                                    <th data-column-id="id" data-type="numeric">N°</th>
                                    <th data-column-id="nom_guide" data-type="numeric">Nom du guide</th>
                                    <th data-column-id="typeGuide">Type du guide</th>
                                    <th data-column-id="desciption">Description</th>
                                    <th data-column-id="date">Date de création</th>
                                    <th data-column-id="option">Opérations</th>

                                </tr>
                                </thead>


                                <tbody >

                                <c:forEach items="${guides}" var="gui">
                                    <tr>
                                        <td id="id" class="text-left" style=""> ${gui.id}</td>
                                        <td id="nom_guide" class="text-left" style="">${gui.nom_guide}</td>
                                        <td id="type_facture" class="text-left" style="">${gui.type_facture}</td>
                                        <td id="descriptionguide" class="text-left" style="">${gui.descriptionguide}</td>
                                        <td id="date" class="text-left" style=""> ${gui.date}</td>
                                        <td class="text-left" style="">

                                            <button type="button"  name="modifierguide" class="editingInfors btn btn-icon command-edit waves-effect waves-circle" ><span class="zmdi zmdi-edit" data-row-id="${gui.id}"></span></button>
                                            <button type="button" name="deleteguide"  class="compte-suppr extern btn btn-icon command-delete waves-effect waves-circle" id="sa-params"><span class="zmdi zmdi-delete" data-row-id="${gui.id}"></span></button>

                                        </td>
                                    </tr>


                                </c:forEach>

                                </tbody>
                            </table>
                        </div>
                        <br>
                        <br>

                        <div style="position: absolute;bottom: 16px;right: 16px;">
                            <a href="NewGuide.html"><button class="new-guide btn bgm-green btn-primary waves-effect"><i class="zmdi zmdi-plus zmdi-hc-fw"></i> Ajouter guide</button></a>
                        </div>
                        </form>
                    </div>
                </div>

        </div>
    </section>

</section>

<footer id="footer">
    Copyright &copy; 2016 IFA-ESI

    <ul class="f-menu">
        <li><a href="#">Home</a></li>
        <li><a href="#">Rac1</a></li>
        <li><a href="#">RAc2</a></li>
        <li><a href="#">RAc3</a></li>
        <li><a href="#">rac4</a></li>
    </ul>
</footer>


<!-- Javascript Libraries -->
<script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>
<script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<script src="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="vendors/bower_components/Waves/dist/waves.min.js"></script>
<script src="vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
<script src="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>

<script src="vendors/bower_components/autosize/dist/autosize.min.js"></script>
<!---new JS-->
<script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>
<script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<script src="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="vendors/bower_components/Waves/dist/waves.min.js"></script>
<!--   <script src="vendors/bootstrap-growl/bootstrap-growl.min.js"></script> -->
<script src="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>

<script src="vendors/bootgrid/jquery.bootgrid.updated.min.js"></script>


<!-- Placeholder for IE9 -->
<!--[if IE 9 ]>
<script src="vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
<![endif]-->

<script src="js/functions.js"></script>
<script src="js/demo.js"></script>

<!-- Data Table -->
<script type="text/javascript">
    /*
     * Notifications
     */
    function notify(from, align, icon, type, animIn, animOut){
        $.growl({
            icon: icon,
            title: ' Bootstrap Growl ',
            message: 'Turning standard Bootstrap alerts into awesome notifications',
            url: ''
        },{
            element: 'body',
            type: type,
            allow_dismiss: true,
            placement: {
                from: from,
                align: align
            },
            offset: {
                x: 20,
                y: 85
            },
            spacing: 10,
            z_index: 1031,
            delay: 2500,
            timer: 1000,
            url_target: '_blank',
            mouse_over: false,
            animate: {
                enter: animIn,
                exit: animOut
            },
            icon_type: 'class',
            template: '<div data-growl="container" class="alert" role="alert">' +
            '<button type="button" class="close" data-growl="dismiss">' +
            '<span aria-hidden="true">&times;</span>' +
            '<span class="sr-only">Close</span>' +
            '</button>' +
            '<span data-growl="icon"></span>' +
            '<span data-growl="title"></span>' +
            '<span data-growl="message"></span>' +
            '<a href="#" data-growl="url"></a>' +
            '</div>'
        });
    };

    $('.notifications > div > .btn').click(function(e){
        e.preventDefault();
        var nFrom = $(this).attr('data-from');
        var nAlign = $(this).attr('data-align');
        var nIcons = $(this).attr('data-icon');
        var nType = $(this).attr('data-type');
        var nAnimIn = $(this).attr('data-animation-in');
        var nAnimOut = $(this).attr('data-animation-out');

        notify(nFrom, nAlign, nIcons, nType, nAnimIn, nAnimOut);
    });


    /*
     * Dialogs
     */

    //Basic
    $('#sa-basic').click(function(){
        swal("Here's a message!");
    });

    //A title with a text under
    $('#sa-title').click(function(){
        swal("Here's a message!", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lorem erat, tincidunt vitae ipsum et, pellentesque maximus enim. Mauris eleifend ex semper, lobortis purus sed, pharetra felis")
    });

    //Success Message
    $('#sa-success').click(function(){
        swal("Guide Ajout�!", "Le guide a �t� ajout� a la base!", "success")
    });

    //Warning Message
    $('#sa-warning').click(function(){
        swal({
            title: "Are you sure?",
            text: "You will not be able to recover this imaginary file!",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "Yes, delete it!",
            closeOnConfirm: false
        }, function(){

            swal("DeleteDd!", "Your imaginary file has been deleted.", "success");
        });
    });

    //Parameter
    $('#sa-params').click(function(){
        swal({
            title: "Are you sure?",
            text: "You will not be able to recover this imaginary file!",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "Yes, delete it!",
            cancelButtonText: "No, cancel plx!",
            closeOnConfirm: false,
            closeOnCancel: false
        }, function(isConfirm){
            if (isConfirm) {
                swal("Deleted!", "Your imaginary file has been deleted.", "success");
            } else {
                swal("Cancelled", "Your imaginary file is safe :)", "error");
            }
        });
    });

    //Custom Image
    $('#sa-image').click(function(){
        swal({
            title: "Sweet!",
            text: "Here's a custom image.",
            imageUrl: "img/thumbs-up.png"
        });
    });

    //Auto Close Timer
    $('#sa-close').click(function(){
        swal({
            title: "Auto close alert!",
            text: "I will close in 2 seconds.",
            timer: 2000,
            showConfirmButton: false
        });
    });

</script>


<script type="text/javascript">
    $('button.compte-suppr.extern').on('click',function(){


        var x=$($(this).closest('tr')).attr('data-row-id');
        var id= $($(this).closest('tr')).find('td').eq(0).text();
        var nom_guide= $($(this).closest('tr')).find('td').eq(1).text();
        var type_facture= $($(this).closest('tr')).find('td').eq(2).text();
        var descriptionguide= $($(this).closest('tr')).find('td').eq(3).text();
        var date= $($(this).closest('tr')).find('td').eq(4).text();
        var op="suppression";


        document.getElementById('iddeleted').value=id;
        document.getElementById('namedeleted').value=nom_guide;
        document.getElementById('typeGuidedeleted').value=type_facture;
        document.getElementById('desciptiondeleted').value=descriptionguide;
        document.getElementById('datedeleted').value=date;
        document.getElementById('typeop').value=op;

        $( "form:first" ).submit();
        this.closest('tr').remove();

    });


</script>

<script type="text/javascript">
    $('button.editingInfors').on('click',function(){


        var x=$($(this).closest('tr')).attr('data-row-id');
        var id= $($(this).closest('tr')).find('td').eq(0).text();
        var nom_guide= $($(this).closest('tr')).find('td').eq(1).text();
        var type_facture= $($(this).closest('tr')).find('td').eq(2).text();
        var descriptionguide= $($(this).closest('tr')).find('td').eq(3).text();
        var date= $(this.closest('tr')).find('td').eq(4).text();
        var op="modification";



        document.getElementById('iddeleted').value= id;
        document.getElementById('namedeleted').value= nom_guide;
        document.getElementById('typeGuidedeleted').value= type_facture;
        document.getElementById('desciptiondeleted').value= descriptionguide;
        document.getElementById('datedeleted').value= date;
        document.getElementById('typeop').value= op;



        $( "form:first" ).submit();


    });


</script>


<script type="text/javascript">
    $('button.new-guide').on('click',function(){



        var op="new";
        document.getElementById('typeop').value=op
        $( "form:first" ).submit();

    });


</script>







</body>




<!-- D?lloped by Juba Agoun on April 2016-->
</html>