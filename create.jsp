<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="liferay-ui" uri="http://liferay.com/tld/ui" %>
<%@ taglib prefix="aui" uri="http://alloy.liferay.com/tld/aui" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<portlet:actionURL name="createInfoMovieCM" var="createInfoMovieLV" />

<portlet:defineObjects />

<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="${createInfoMovieLV}">
    <br>Название:
    <input type="text" name="movieName" size="40">
    <br>Сценарист:
    <input type="text" name="producerName" size="40">
    <br>Дата выхода:
    <input type="date" name="createDate" size="40">
    <br>Носитель
    <input type="text" name="carrierType" size="40">
    <input type="submit" name="Отправить">
</form>

<button onclick="history.back()">Отмена</button>
</body>
</html>

