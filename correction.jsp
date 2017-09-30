<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="liferay-ui" uri="http://liferay.com/tld/ui" %>
<%@ taglib prefix="aui" uri="http://alloy.liferay.com/tld/aui" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<portlet:actionURL name="updateCM" var="updateLV">
<portlet:param name="mvcPath" value="/view.jsp" />
</portlet:actionURL>

<portlet:defineObjects />

<%
    pageContext.setAttribute("movieId", renderRequest.getParameter("movieId"));
    pageContext.setAttribute("movieName", renderRequest.getParameter("movieName"));
    pageContext.setAttribute("producerName", renderRequest.getParameter("producerName"));
    pageContext.setAttribute("carrierType", renderRequest.getParameter("carrierType"));
%>

<html>
<head>
    <title>Title</title>
</head>
<body>

<form method="post" action="${updateLV}">
    <br> Номер записи:
    <input type="text" name="movieId" size="40" value="${movieId}">
    <br>Название:
    <input type="text" name="movieName" size="40" value="${movieName}">
    <br>Сценарист:
    <input type="text" name="producerName" size="40" value="${producerName}">
    <br>Дата выхода:
    <input type="date" name="createDate" size="40" value="null">
    <br>Носитель
    <input type="text" name="carrierType" size="40" value="${carrierType}">

    <input type="submit" name="Сохранить">
</form>
</body>

<button onclick="history.back()">Отмена</button>

</html>

