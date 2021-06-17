<%@ page import="fr.eni.bo.Choix" %><%--
  Created by IntelliJ IDEA.
  User: ajouhanneau2021
  Date: 17/06/2021
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JEU CHIFOUMI</title>
</head>
<body align="center">
  <h1>TENTATIVE</h1>
  <%-- <form method="post" action="<%=request.getContextPath()%>/accueil"> <!--Returns the portion of the request URL-->
     <button name="chifoumi" value="<%=Choix.CHI%>"><img width="150" height="200" src="<%=request.getContextPath()%>/img/chi.png" alt=""></button>
     <button name="chifoumi" value="<%=Choix.FOU%>"><img width="150" height="200"  src="<%=request.getContextPath()%>/img/fou.png" alt=""></button>
     <button name="chifoumi" value="<%=Choix.MI%>"><img width="150" height="200"  src="<%=request.getContextPath()%>/img/mi.png" alt=""></button>
   </form>--%>
  <%-- <a href="accueil?chifoumi=chi"><img src="../img/chi.png" alt="chi"></a>methode get--%>
  <form method="post" action="<%=request.getContextPath()%>/accueil"> <!--Returns the portion of the request URL-->
    <%
      for(Choix c : Choix.values()){ //Foreach pour chaque choix possible de l'énumération
    %>
    <button name="chifoumi" value="<%=c%>"><img width="150" height="200" src="<%=request.getContextPath()%>/img/<%=c%>.png" alt=""></button>
    <%
      }
    %>
  </form>
</body>
</html>
