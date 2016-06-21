<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/material-design-iconic-font.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-select.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/malihu-scrollbar/jquery.mCustomScrollbar.min.css" rel="stylesheet">
    <link href="css/sweetalert2.css" rel="stylesheet">
    <link href="css/jquery.bootgrid.min.css" rel="stylesheet">
    <link href="css/app.min.1.css" rel="stylesheet">
    <link href="css/app.min.2.css" rel="stylesheet">
    <title>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Le styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <style>
      body { padding-top: 60px; /* 60px to make the container go all the way
      to the bottom of the topbar */ }
    </style>
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js">
      </script>
    <![endif]-->
    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
    <style>
    </style>
  </head>
  <body>
  
  <c:import url="./WEB-INF/jsp/header.jsp"></c:import>

<c:import url="./WEB-INF/jsp/sidebar.jsp"></c:import>
  
  
	  <sec:authorize access="isRememberMe()">
			<h1>login avec "Remember Me Cookies".</h1>
		</sec:authorize>
	
		<sec:authorize access="isFullyAuthenticated()">
			<h1>login avec username / password.</h1>
		</sec:authorize>
    <div class="navbar navbar-fixed-top navbar-inverse">
      <div class="navbar-inner">
        <div class="container">
          <a class="brand" href="addGoal.html">
            Yoo ! Get started
          </a>
          <ul class="nav">
          </ul>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="hero-unit">
        <div>
          <h1>
            Welcome to Fitness Tracker <sec:authentication property="name"/>!
          </h1>
          <p>
            To get started, we need to enter a goal for what we want to exercise for
            today.
          </p>
          <p>
            Avant de clicker sur get Goals ou get Goal Reports n'oubliez pas d'inserer d'ajouer un goal et des
             minutes avant.
          </p>
        </div>
        <a class="btn btn-primary" href="addGoal.html">
          Add Goal »
        </a>
        <!-- hasRole('ROLE_ADMIN')  -->
        <sec:authorize access="hasRole('ROLE_ADMIN')">
        <a class="btn btn-primary" href="editGoal.html">
          Edit Goal »
        </a>
        </sec:authorize>
        
        <a class="btn btn-primary" href="addMinutes.html">
          Add Exercise Minutes »
        </a>
        <a class="btn btn-primary" href="FicheFournisseur.html">
          Ajouter fournisseur »
        </a>
        
        <a class="btn btn-primary" href="getGoals.html">
          get Goals (requette par defaut) »
        </a>
        
        <a class="btn btn-primary" href="getGoalReports.html">
          get Goal Reports (requette perso) »
        </a>
        
        <a class="btn btn-warning" href="logout">
        	Logout >>
        </a>
        
      </div>
      <div>
      </div>
    </div>
    
    <script src="jquery-1.8.3.js">
    </script>
    
    <script src="assets/js/bootstrap.js">
    </script>
  </body>
</html>
