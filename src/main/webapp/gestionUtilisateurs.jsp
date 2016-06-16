<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.ArrayList"%>
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


<!--Le header/toolbar la barre en haut qui contient les notification et les traitements generaux  -->
<c:import url="WEB-INF/jsp/header.jsp" ></c:import>
<!-- L'interface principale -->
<section id="main">
    <!--Le sidebar/navigation drawer (android) -->
	   	<c:import url="WEB-INF/jsp/sidebar.jsp" ></c:import>
    <!--Le contenu central -->
    <section id="content">
    <div class="container">
        <c:import url="WEB-INF/jsp/gestion_utilisateurs/list_utilisateurs.jsp">
            <c:param name="listComptes" value="${listUsers}"/>
        </c:import>
        <c:import url="WEB-INF/jsp/gestion_utilisateurs/utilisateur_detaill.jsp">
            <c:param name="listComptes" value="${listUsers}"/>
        </c:import>
    </div>
    </section>
</section>






<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-growl.min.js"></script>
<script type="text/javascript" src="js/waves.min.js"></script>
<script type="text/javascript" src="js/typeahead.bundle.js"></script>
<script type="text/javascript" src="js/sweetalert2.min.js"></script>
<!--Bibliothèque pour le sidebar -->
<script type="text/javascript" src="js/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="js/jquery.bootgrid.updated.min.js"></script>
<script type="text/javascript" src="js/functions.js"></script>
<script type="text/javascript" src="js/functionsGestionUtils.js"></script>

</body>

</html>