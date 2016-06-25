<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lan="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <link href="css/material-design-iconic-font.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/malihu-scrollbar/jquery.mCustomScrollbar.min.css" rel="stylesheet">
    <link href="css/sweetalert2.css" rel="stylesheet">
    <link href="css/app.min.1.css" rel="stylesheet">
    <link href="css/app.min.2.css" rel="stylesheet">
    

    <title></title>
</head>
<body>

<!--Le header/toolbar la barre en haut qui contient les notification et les traitements g�n�raux  -->
<c:import url="./header.jsp"></c:import>
<!--Le sidebar/navigation drawer (android) -->
<c:import url="./sidebar.jsp"></c:import>


<!-- L'interface principale -->
<section id="main">

    <!--Le contenu central -->
    <section id="content">
        <div class="container">

            <!--L'entete de la page' -->
            <div class="block-header">
                <h2></h2>

                <!--Les param�tres -->
                <ul class="actions">
                    <li>
                        <a href="#">
                            <i class="zmdi zmdi-trending-up"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="zmdi zmdi-check-all"></i>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown">
                            <i class="zmdi zmdi-more-vert"></i>
                        </a>

                        <ul class="dropdown-menu dropdown-menu-right">
                            <li>
                                <a href="#">Refresh</a>
                            </li>
                            <li>
                                <a href="#">Manage Widgets</a>
                            </li>
                            <li>
                                <a href="#">Widgets Settings</a>
                            </li>
                        </ul>
                    </li>
                </ul>

            </div>


            <!-- Le coeur de la page-->
            <!--la classe card dans ce template est l'equivalence
            du cardview d'android
             -->
             <!-- -->
            <div class="card list-comptes">
                <!--L'entete de la page' -->
                <div class="card-header">
                    <h2>Dotation Intiial
                        <small>Affichage des Dotation Initial.</small>
                    </h2>
                </div>
                <div class="card-contenu">
                    <div id="data-table-command-header" class="bootgrid-header container-fluid">
                        
                        
                        <div class="row">
                            <div class="form-inline">
							  
							
							<div class="row">
								 
								 
								<div class="col-sm-6" >
								
                                 <a  href="formu.html"><button class=" btn btn-login">Ajouter Dotation</button> </a>
								</div>
							 </div>
							  
							

                               
							</div>
                            
                        </div>
                        
                        
                        
                        
                        
                        
                    </div>
                    <!--Le tableau qui affiche la liste des comptes -->
                    <table id="data-table-command" class="table table-striped table-vmiddle bootgrid-table" aria-busy="false">
                        <!--l'entete du tableau' -->
                        
                        
                        
                        
                        <thead>
                        <tr>
                            <th style="" class="text-left" data-column-id="id"><a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">Section</span><span class="zmdi icon "></span></a></th>
                            <th data-column-id="CompteLabel" class="text-left" style=""><a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">Chapitre</span><span class="zmdi icon "></span></a></th>
                            <th data-column-id="CompteType" class="text-left" style=""><a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">Rubrique</span><span class="zmdi icon "></span></a></th>
                            <th data-column-id="CompteDescription" class="text-left" style=""><a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">Montant</span><span class="zmdi icon zmdi-expand-more"></span></a></th>
                             <th data-column-id="CompteDescription" class="text-left" style=""><a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">Code Monnaie</span><span class="zmdi icon zmdi-expand-more"></span></a></th>
                            
                            <th data-column-id="commands" class="text-left" style=""><a href="javascript:void(0);" class="column-header-anchor "><span class="text">Commandes</span><span class="zmdi icon "></span></a></th>
                        </tr>
                        </thead>
                        
                        <!--Les ligne du tableau -->
                         
                       <c:forEach items="${liste}" var="c" varStatus="statut">
                            <tr data-row-id="${statut.count}">
                            <td id="Section" class="text-left" style=""> ${c.section}</td> 
                            <td id="Chapitre" class="text-left" style="">${c.chapitre}</td>
                            <td id="Rubrique" class="text-left" style="">${c.rubrique}</td>
                            <td id="Montant" class="text-left" style="">${c.montant}</td>
                            <td id="Monnaie" class="text-left" style=""> ${c.codeMonnais}</td>
							<td class="text-left" style="">
                            <button type="button"  class="editingInfors2 btn btn-icon command-edit waves-effect waves-circle" ><span class="zmdi zmdi-edit" data-row-id="${c.id}"></span></button>

                            <button type="button" class="compte-suppr extern btn btn-icon command-delete waves-effect waves-circle" ><span class="zmdi zmdi-delete" data-row-id="${c.rubrique}"></span></button>
							 
							</td>	 
                        </tr>

  
                      </c:forEach>
                        
                          
                    </table>
                    
                    
                    
   
                    
                    
                    
                    
                    
                    
                    <!--le pied du tableau -->
                     	
                </div>
                

                
                
            </div>
            
             <div class="card compte-detail" style="display:none">
                <!--L'entete de la page' -->
                
                <div class="card-header">
                    <div class="row">
                       <div class="col-sm-9">
                            <h2>Fiche Compte
                                <small>Affichage des informations sur le compte</small>
                            </h2>
                            
                            <div class=""></div>
                            <button class="btn btn-login compte-mod-save" style="display:none" >Enregistrer les Modifications</button>
                            <button class="btn btn-login compte-mod">Modifier</button>
                            <button class="btn btn-login btn-danger compte-suppr intern">Supprimer le Compte</button>
                            
                            
                       </div>
                       <div class="col-sm-3" dir="rtl">
                           <a href="#" class="btn btn-login btn-danger btn-float waves-effect waves-circle waves-float compte-return-btn"><i class="zmdi zmdi-arrow-left"></i></a>
                       </div>
                    
                </div>
                </div>
                
                
                
                <div class="card-contenu compte-detail">
                   <div class="panel-group p-l-20" role="tablist" aria-multiselectable="true">
                                <div class="panel panel-collapse">
                                    <div class="panel-heading active" role="tab" id="headingOne">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="">
                                                Informations de Compabilité
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseOne" class="collapse in" role="tabpanel" aria-labelledby="headingOne" aria-expanded="true">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <label>Classe</label>
                                                    <input placeholder="6" class="form-control compte"></input>        
                                                </div>
                                                <div class="col-sm-3">
                                                      <label>Nom</label>
                                                      <input placeholder="6" class="form-control compte"></input>        
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-collapse">
                                    <div class="panel-heading" role="tab" id="headingTwo">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                Affectation du Compte
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
                                        <div class="panel-body">
                                           <div class="row">
                                                <div class="col-sm-4">
                                                    <label>Section</label>
                                                    <input id="testspark" placeholder="6" class="form-control compte"></input>        
                                                </div>
                                                
                                                <div class="col-sm-8">
                                                    <label>Chapitre</label>
                                                    <input placeholder="6" class="form-control compte"></input>        
                                                </div>
                                            </div>
                                            
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <label>Rubrique</label>
                                                    <input placeholder="Budg�taire" class="form-control compte"></input>        
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-collapse">
                                    <div class="panel-heading" role="tab" id="headingThree">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                Détails sur le Compte
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree">
                                        <div class="panel-body">
                                              <div class="row">
                                                <div class="col-sm-4">
                                                    <label>N Compte</label>
                                                    <input placeholder="6" class="form-control compte"></input>        
                                                </div>
                                                
                                                <div class="col-sm-8">
                                                    <label>Désignation</label>
                                                    <input placeholder="6" class="form-control compte"></input>        
                                                </div>
                                            </div>
                                            
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <label>Type de Compte</label>
                                                    <input placeholder="Budgetaire" class="form-control compte"></input>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                </div>
                

                
                
            </div>
            
              <form:form class="form-inline" id="form1">
				 <div class="panel panel-collapse"> 
                                    <div class="panel-heading" role="tab" id="headingThree">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                Détails sur la décision
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseThree" class="collapse in" role="tabpanel" aria-labelledby="headingThree">
                                        <div class="panel-body">
                                              <div class="row">
                                                <div class="col-sm-3">
                                                    <label>Numero</label>
                                                    <input id="Numero_dot1" placeholder="6" class="form-control compte" required="required" pattern="[0-9]{1,}"></input>        
                                                </div>
                                                
                                                <div class="col-sm-3">
                                                    <label>Objet</label>
                                                    <input id="Objet_dot1" placeholder="6" class="form-control compte" required="required" pattern="[a-zA-Z]*+[ ]*" ></input>        
                                                </div>
                                                
                                                <div class="col-sm-3">
                                                    <label>Date</label>
                                                    <input id="Date_dot1"  type="date" class="form-control compte" required="required"></input>        
                                                </div>
												
												<div class="col-sm-3">
                                                    <label>Observation</label>
                                                    <input id="Observation_dot1"  class="form-control compte" required="required" pattern="[a-zA-Z]*+[ ]*"></input>        
                                                </div>
                                            </div>
                                             <br/>
                                             <br/>
                                            
                                            
             
        <!--  <sec:authorize access="hasRole('RES_DOTA')"> -->
            <button type="submit" value="Valider" class="btn btn-login btn-danger " onclick="window.location='AfficherDecisionIntiale.html';" > Valider</button>
		<!-- </sec:authorize> -->						 
												    
                                        </div>
                                    </div>
                                </div>
				 
				</form:form>
            
            
            
    </section>
</section>


<script type="text/javascript" src="./js/jquery.min.js"></script>
<script type="text/javascript" src="./js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/waves.min.js"></script>
<script type="text/javascript" src="./js/typeahead.bundle.js"></script>
<script type="text/javascript" src="./js/sweetalert2.min.js"></script>


<!--Biblioth�que pour le sidebar -->
<script type="text/javascript" src="./js/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

<script type="text/javascript" src="./js/functions.js"></script>

<script type="text/javascript">
    $("#form1").submit(function(event){	
	event.preventDefault();
		
		var	num		 =$('#Numero_dot1').val();
		var	objet		 =$('#Objet_dot1').val();
		var	date		 =$('#Date_dot1').val();
		var	obs		 =$('#Observation_dot1').val();
		var json = {"date":date,"numDecision":num,"objet":objet,"observation":obs};
		$.ajax({
			url: '<spring:url value="searchA.json"/>'/*$('#JsonPostForm').action*/,
			type: 'POST',
			dataType: 'json',
			contentType: 'application/json',
			data: JSON.stringify(json),
			success: function(data) {
				console.log( "success recup JSON" );
				/*var html = '<option value="">--Please select one--</option>';
				var len = data.length;
				for (var i = 0; i < len; i++) {
					html += '<option value="' + data[i].desc + '">'
							+ data[i].desc + '</option>';
				}
				html += '</option>';
				
				$('#resultActivities').html(html);*/
			}
		});
	});

</script>


<script type="text/javascript">                 
   $('button.compte-suppr.extern').on('click',function(){
      //  selectedCompte=-1;
    //event.preventDefault();
    //alert("mchaat");
    //var x=$(this.closest('tr')).attr('data-row-id');
  	var section= $(this.closest('tr')).find('td').eq(0).text();
  	var chapitre= $(this.closest('tr')).find('td').eq(1).text();
   	var rubrique= $(this.closest('tr')).find('td').eq(2).text();
   	var montant= $(this.closest('tr')).find('td').eq(3).text();
   	var codeMonnaie= $(this.closest('tr')).find('td').eq(4).text();


    
  	/*var section= $(this.closest('tr')).eq(0).val();
  	var section= $(this.closest('tr')).eq(0).val();
  	var section= $(this.closest('tr')).eq(0).val();
  	var section= $(this.closest('tr')).eq(0).val();*/
	var json = {"section":section,"chapitre":chapitre,"rubrique":rubrique,"montant":montant,"codeMonnais":codeMonnaie};
	$.ajax({
		url: '<spring:url value="searchSupp.json"/>'/*$('#JsonPostForm').action*/,
		type: 'POST',
		dataType: 'json',
		contentType: 'application/json',
		data: JSON.stringify(json),
		success: function(data) {
			console.log( "success recup JSON" );
			/*var html = '<option value="">--Please select one--</option>';
			var len = data.length;
			for (var i = 0; i < len; i++) {
				html += '<option value="' + data[i].desc + '">'
						+ data[i].desc + '</option>';
			}
			html += '</option>';
			
			$('#resultActivities').html(html);*/
		}
	});
        this.closest('tr').remove();

        //afficherSupprMessage(this.closest('tr'));
});
   
   
   $('button.editingInfors1').on('click',function(){
      //  selectedCompte=-1;
    //event.preventDefault();
    //alert("mchaat");
    //var x=$(this.closest('tr')).attr('data-row-id');
      	alert("rahi fe loel ");

  	var section= $(this.closest('tr')).find('td').eq(0).text();
  	var chapitre= $(this.closest('tr')).find('td').eq(1).text();
   	var rubrique= $(this.closest('tr')).find('td').eq(2).text();
   	var montant= $(this.closest('tr')).find('td').eq(3).text();
   	var codeMonnaie= $(this.closest('tr')).find('td').eq(4).text();


    
  	/*var section= $(this.closest('tr')).eq(0).val();
  	var section= $(this.closest('tr')).eq(0).val();
  	var section= $(this.closest('tr')).eq(0).val();
  	var section= $(this.closest('tr')).eq(0).val();*/
	var json = {"section":section,"chapitre":chapitre,"rubrique":rubrique,"montant":montant,"codeMonnais":codeMonnaie};
	$.ajax({
		url: '<spring:url value="searchModif.json"/>'/*$('#JsonPostForm').action*/,
		type: 'POST',
		dataType: 'json',
		contentType: 'application/json',
		data: JSON.stringify(json),
		success: function(data) {
			console.log( "success recup JSON" );
			/*var html = '<option value="">--Please select one--</option>';
			var len = data.length;
			for (var i = 0; i < len; i++) {
				html += '<option value="' + data[i].desc + '">'
						+ data[i].desc + '</option>';
			}
			html += '</option>';
			
			$('#resultActivities').html(html);*/
		}
	});
        this.closest('tr').remove();

        //afficherSupprMessage(this.closest('tr'));
});
   
   
   </script>
   

</body>

</html>