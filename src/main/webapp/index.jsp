<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html lan="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/material-design-iconic-font.css" rel="stylesheet">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/animate.min.css" rel="stylesheet">
  <link href="css/malihu-scrollbar/jquery.mCustomScrollbar.min.css" rel="stylesheet">
  <link href="css/sweetalert2.css" rel="stylesheet">
  <link href="css/jquery.bootgrid.min.css" rel="stylesheet">
  <link href="css/app.min.1.css" rel="stylesheet">
  <link href="css/app.min.2.css" rel="stylesheet">
  <title></title>
</head>
<body>
<!--Le header/toolbar la barre en haut qui contient les notification et les traitements generaux  -->
<c:import url="./WEB-INF/jsp/header.jsp"></c:import>
<!--Le sidebar/navigation drawer (android) -->
<c:import url="./WEB-INF/jsp/sidebar.jsp"></c:import>
<!-- L'interface principale -->

<c:import url="WEB-INF/jsp/header.jsp"></c:import>
<section id="main">
  <!--Le contenu central -->
  <c:import url="WEB-INF/jsp/sidebar.jsp"></c:import>
  <section id="content">

    <div class="container">

    </div>


  </section>
</section>


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-growl.min.js"></script>
<script type="text/javascript" src="js/waves.min.js"></script>
<script type="text/javascript" src="js/typeahead.bundle.js"></script>
<script type="text/javascript" src="js/sweetalert2.min.js"></script>
<!--Bibliotheque pour le sidebar -->
<script type="text/javascript" src="js/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="js/jquery.bootgrid.updated.min.js"></script>
<script type="text/javascript" src="js/functions.js"></script>
<script type="text/javascript" src="js/index.js"></script>


</body>

</html>