<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Spring MVC Form Handling</title>
</head>
<body>

<h2>Student Information</h2>
<form:form method="POST"  commandName="dD">
   <table>
    <tr>
    		<td><form:label  path="date">Date</form:label></td>
    		<td><fmt:formatDate value="${vacancy.date}" pattern="yyyy-MM-dd" var="vacancyDate"/>
			<form:input path="date" value="${vacancyDate}"/></td>
    </tr>
    <tr>
        <td><form:label path="numDecision">Numero Decision: </form:label></td>
        <td><form:input path="numDecision" /></td>
    </tr>
    <tr>
        <td><form:label path="objet">Objet</form:label></td>
        <td><form:input path="objet" /></td>
    </tr>
    <tr>
        <td><form:label path="observation">Observation</form:label></td>
        <td><form:input path="observation" /></td>
    </tr>
    <tr>
        <td colspan="2">
           <input type="submit" value="Submit"/>
        </td>
        
    </tr>
               <a href="decisionRubrique.html"> Ajouter les rubriques >> </a>
    
</table>  
</form:form>
</body>
</html>