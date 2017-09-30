<%@ page import="dom.movielib.portlet.service.movieLocalServiceUtil" %>
<%@ page import="static com.liferay.portal.kernel.dao.orm.QueryUtil.ALL_POS" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="liferay-ui" uri="http://liferay.com/tld/ui" %>
<%@ taglib prefix="aui" uri="http://alloy.liferay.com/tld/aui" %>
<%@ taglib prefix="background-color" uri="http://alloy.liferay.com/tld/aui" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<portlet:renderURL var="correctionMovieURL">
    <portlet:param name="mvcPath" value="/correction.jsp" />
</portlet:renderURL>

<portlet:renderURL var="createMovieURL">
    <portlet:param name="mvcPath" value="/create.jsp" />
</portlet:renderURL>

<portlet:actionURL name="deleteCM" var="deleteLV">
</portlet:actionURL>

<portlet:defineObjects />



<%
    pageContext.setAttribute("descriptionMovie", movieLocalServiceUtil.getmovies(ALL_POS, ALL_POS));
%>

<table border ="1" width="600">
    Таблица записей
    <tr align="center">
        <td>Номер</td>
        <td>Name</td>
        <td>Writer</td>
        <td>Carrier</td>
        <td>Func1</td>
        <td>Func2</td>
    </tr>
      <c:forEach items="${descriptionMovie}" var="item">
        <tr align="center">
        <portlet:renderURL var="ModificationLV">
            <portlet:param name="jspPage" value="/correction.jsp" />
            <portlet:param name="movieId" value="${item.movieId}" />
            <portlet:param name="movieName" value="${item.movieName}" />
            <portlet:param name="producerName" value="${item.producerName}" />
            <portlet:param name="carrierType" value="${item.carrierType}" />
        </portlet:renderURL>

        <td><a href="${ModificationLV}">${item.movieId}</a></td>
        <td>${item.movieName}</td>
        <td>${item.producerName}</td>
        <td>${item.carrierType}</td>
        <td><button type="button" class="btn btn-success" onclick="location.href='${ModificationLV}'">Редактировать</button></td>
        <td align="center">
            <form method="post" action="${deleteLV}" style="margin-top:20px">
            <button type="submit" class="btn btn-danger" name="movieId"  value="${item.movieId}">Удалить</button></form>
        </td>
    </tr>
    </c:forEach>
    </table>

<br><button type="button" class="btn btn-success" onclick="location.href='${createMovieURL}'">Создать!</button>




 <%--<button onclick="location.href='${createMovieURL}'">New!</button>--%>
<%--&lt;%&ndash;<aui:button cssClass="btn btn-success" onClick="<%= createMovieURL%>" value="Создать новый"></aui:button>&ndash;%&gt;--%>
<%--&lt;%&ndash;<aui:button cssClass="btn btn-success" onClick="<%= correctionMovieURL%>" value="Коррекция"></aui:button>&ndash;%&gt;--%>