<%--
  Created by IntelliJ IDEA.
  User: ajouhanneau2021
  Date: 17/06/2021
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Resultat</title>
  <style>
    body { text-align: center; }
    span { font-size: 24px; }
  </style>
</head>
  <%
    String choixJoueur = (String)request.getAttribute("choixJoueur"); //Déclaration de variables récup des données
    String choixServeur = (String)request.getAttribute("choixServeur");
    String resultat = (String)request.getAttribute("Resultat");
  %>
<body>
  <h1>RESULTAT</h1>
  <h1><%=resultat%></h1>
  <div>
    <img src="<%=request.getContextPath()%>/img/<%=choixJoueur%>.png">
    <span>VS</span>
    <img src="<%=request.getContextPath()%>/img/<%=choixServeur%>.png">
  </div>
  <p><a href="<%=request.getContextPath()%>/accueil">Rejouer</a></p>
</body>
</html>
