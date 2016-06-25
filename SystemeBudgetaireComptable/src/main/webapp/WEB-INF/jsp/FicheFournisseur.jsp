<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Système budgétaire et comptable</title>

        <!-- Vendor CSS -->
        <link href="vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css" rel="stylesheet">
        <link href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        <link href="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">        
        <link href="vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.css" rel="stylesheet">
        <link href="vendors/bower_components/nouislider/distribute/jquery.nouislider.min.css" rel="stylesheet">
        <link href="vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
        <link href="vendors/farbtastic/farbtastic.css" rel="stylesheet">
        <link href="vendors/bower_components/chosen/chosen.min.css" rel="stylesheet">
        <link href="vendors/summernote/dist/summernote.css" rel="stylesheet">


        <!-- CSS -->
        <link href="css/app.min.1.css" rel="stylesheet">
        <link href="css/app.min.2.css" rel="stylesheet">
        
        <!-- Following CSS are used only for the Demp purposes thus you can remove this anytime. -->
        <style type="text/css">
            .toggle-switch .ts-label {
                min-width: 130px;
            }
        </style>
    </head>
    
    <body>
            		<!--Le header/toolbar la barre en haut qui contient les notification et les traitements generaux  -->
		<c:import url="./header.jsp"></c:import>
        <!--Le sidebar/navigation drawer (android) -->
		<c:import url="./sidebar.jsp"></c:import>
                           
        <section id="main">
            <section id="content">
                <div class="container">
                    <div class="block-header">
                        <h2>Fiche Fournisseur</h2>
                    
                    
                    </div>
					
					
			 <form:form commandName="ficheFournisseur"> 
                
                   <div class="card">
                        <div class="card-header">
                            <h2 id="label">Information d'identification</h2>
                        </div>
                        
                        <div class="card-body card-padding">
                            <div class="row">
							<div class="col-sm-3 m-b-20">
                                    <div class="form-group fg-line">
                                        <label> Acronyme</label>
										 <form:input type="numerics"   class="form-control input-mask" path="acronyme"/>
                                    </div>
    									 
                            </div>
					
							<div class="col-sm-3 m-b-20">
                                    <div class="form-group fg-line">
                                        <label> Statut</label>
                                         <form:input type="text"      class="form-control input-mask" path="statut"/>
                                    </div>
                            </div>
							
							 
							</div>
							<div class="row">
							

							
                             	 <div class="col-sm-3 m-b-20">
                                    
                                    <div class="form-group fg-line">
                                        <label >Type</label>
                                       <form:input type="text" class="form-control input-mask"   path="type"/>
                                    </div>
                                    
                                </div>
                                
                                <div class="col-sm-3 m-b-20">
                                    
                                    <div class="form-group fg-line">
                                        <label >Forme Juridique</label>
                                        <form:input type="text"     class="form-control input-mask" path="forme_juridique"/>
                                    </div>
                                    
                                </div>
                                
                                  <div class="col-sm-3 m-b-20">
                                    
                                    <div class="form-group fg-line">
                                        <label >Nature</label>
                                        <form:input type="text"      class="form-control input-mask" path="nature"/>
                                    </div>
                                    
                                </div>
                                
                                </div>
                                <div class="row">
                                
                                <div class="col-sm-3 m-b-20">
                                    
                                    <div class="form-group fg-line">
                                        <label >Désignation</label>
                                        <form:input type="text"    class="form-control input-mask" path="designation"/>
                                    </div>
                                    
                                </div>
                                
                                </div>
                                <div class="row">
                                
                                 <div class="col-sm-3 m-b-20">
                                    
                                    <div class="form-group fg-line">
                                        <label >Adresse</label>
                                        <form:input type="text"     class="form-control input-mask" path="adresse"/>
                                    </div>
                                    
                                </div>
                                
                                </div>
                                
                                <div class="row">
                                 <div class="col-sm-3 m-b-20">
                                    
                                    <div class="form-group fg-line">
                                        <label >Wilaya</label>
                                       <form:input type="text"     class="form-control input-mask" path="wilaya"/>
                                    </div>
                                    
                                </div>
                                
                                   <div class="col-sm-3 m-b-20">
                                    
                                    <div class="form-group fg-line">
                                        <label >Commune</label>
                                        <form:input type="text"     class="form-control input-mask" path="commune"/>
                                    </div>
                                    
                                </div>
                                
                                
                                <div class="col-sm-3 m-b-20">
                                    
                                    <div class="form-group fg-line">
                                        <label >CP</label>
                                        <form:input type="text"     class="form-control input-mask" path="cp"/>
                                    </div>
                                    
                                </div>
                                </div>
                                
                                <div class="row">
                                
                                 <div class="col-sm-3 m-b-20">
                                    
                                    <div class="form-group fg-line">
                                        <label >Téléphone</label>
                                        <form:input type="text"     class="form-control input-mask" path="tel"/>
                                    </div>
                                    
                                </div>
                                
                                 <div class="col-sm-3 m-b-20">
                                    
                                    <div class="form-group fg-line">
                                        <label >Fax</label>
                                        <form:input type="text"    class="form-control input-mask" path="fax"/>
                                    </div>
                                    
                                </div>
                                
                                <div class="col-sm-3 m-b-20">
                                    
                                    <div class="form-group fg-line">
                                        <label >E-mail</label>
                                        <form:input type="text"     class="form-control input-mask" path="email"/>
                                    </div>
                                    
                                </div>
                                </div>
                                
                                
                                							
							
                                
                            </div>
                        </div>
                        
                 
				   <div class="card">
                        <div class="card-header">
                            <h2 id="label">Références Fiscales </h2>
                   </div>
                        <div class="card-body card-padding">
                            <div class="row">
                                <div class="col-sm-3 m-b-20">
                                    <div class="form-group fg-line">
                                        <label >Article d'imposition</label>
                                        <form:input type="text"   class="form-control input-mask"  path="article_imposition"/>
                                    </div>
                                </div>
                                
                                
                                 <div class="col-sm-3 m-b-20">
                                    <div class="form-group fg-line">
                                        <label >Numéro d'identification fiscal</label>
                                        <form:input type="numerics"   class="form-control input-mask"  path="nif"/>
                                    </div>
                                </div>
                             	
                               
                             </div>
                             
                             <div class="row">
                               
                               
                               <div class="col-sm-3 m-b-20">
                                    
                                    <div class="form-group fg-line">
                                        <label >Registre de commerce</label>
                                        <form:input type="text"      class="form-control input-mask" path="registre_commerce"/>
                                    </div>
                                    
                               </div>
                               
                                  <div class="col-sm-3 m-b-20">
                                    
                                    <div class="form-group fg-line">
                                        <label >Numéro d'identification statistique</label>
                                        <form:input type="numerics" class="form-control input-mask"   path="nis"/>
                                    </div>
                                    
                                 </div>
                             </div>
                                 
                                <div class="row">   
                                  <div class="col-sm-3 m-b-20">
                                    
                                    <div class="form-group fg-line">
                                        <label >Activité principale</label>
                                        <form:input type="text"   class="form-control input-mask"  path="activ_princ"/>
                                    </div>
                                    
                                </div>
                                </div>
							
                                
                            </div>

                        </div>       
                     <div class="btn-demo">
                             
                           <div class="btn-demo">
                             
                 	     
							<div class="btn-demo">
                             
                            <button class="btn btn-danger btn-lg waves-effect"><i class="zmdi zmdi-undo zmdi-hc-fw" type="reset"></i>Annuler</button>
							<button class="btn bgm-green btn-lg waves-effect" style="align" id="sa-success" type="submit"><i class="zmdi zmdi-mail-send zmdi-hc-fw"></i>Valider</button>
                            
                            </div>	
                             
                           </div>   
                        </form:form>	
                    </div>                   


                  
						  
						     
                     				
				   
            </section>
        </section>
        


        <!-- Page Loader -->
        <div class="page-loader">
            <div class="preloader pls-blue">
                <svg class="pl-circular" viewBox="25 25 50 50">
                    <circle class="plc-path" cx="50" cy="50" r="20" />
                </svg>

                <p>Please wait...</p>
            </div>
        </div>


        <!-- Javascript Libraries -->
        <script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        
        <script src="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="vendors/bower_components/Waves/dist/waves.min.js"></script>

        <script src="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
        
        <script src="vendors/bower_components/moment/min/moment.min.js"></script>
        <script src="vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.js"></script>
        <script src="vendors/bower_components/nouislider/distribute/jquery.nouislider.all.min.js"></script>
        <script src="vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
        <script src="vendors/bower_components/typeahead.js/dist/typeahead.bundle.min.js"></script>
        <script src="vendors/summernote/dist/summernote-updated.min.js"></script>


        <!-- Placeholder for IE9 -->
        <!--[if IE 9 ]>
            <script src="vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
        <![endif]-->
        
        <script src="vendors/bower_components/chosen/chosen.jquery.min.js"></script>
        <script src="vendors/fileinput/fileinput.min.js"></script>
        <script src="vendors/input-mask/input-mask.min.js"></script>
        <script src="vendors/farbtastic/farbtastic.min.js"></script>
        
        
        <script src="js/functions.js"></script>
        <script src="js/demo.js"></script>
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
                swal("Fournisseur Ajouté!", "La fournisseur a été ajouté avec succes!", "success")
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
                    swal("Deleted!", "Your imaginary file has been deleted.", "success"); 
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
    
    </body>

<!-- Mirrored from byrushan.com/projects/ma/1-5-2/jquery/form-components.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 09 Feb 2016 04:34:11 GMT -->
</html>