<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>DMV — Уроки гитары в Минске</title>
    <meta name="description"
          content="Уроки гитары для начинающих в Минске по самым доступным ценам!Уроки у Вас на дому!">
    <meta name="keywords" content="уроки гитары минск,уроки гитары в минске,уроки гитары минск для начинающих,уроки гитары для начинающих в минске,
      уроки игры на гитаре минск,уроки игры на гитаре в минске,уроки игры для начинающих минск,уроки игры на гитаре для начинающих в минске,
      курсы гитары минск,курсы гитары в минске,школа гитары минск,школа гитары в минске,уроки электрогитары минск,курсы электрогитары минск">
    <link rel="stylesheet" type="text/css" href="<core:url value="/css/bootstrap.css" />">
    <link rel="stylesheet" type="text/css" href="<core:url value="/css/header.css" />">
    <link rel="stylesheet" type="text/css" href="<core:url value="/css/menu.css" />">
    <link rel="stylesheet" type="text/css" href="<core:url value="/css/replaceable_body.css" />">
    <link rel="stylesheet" type="text/css" href="<core:url value="/css/bottom.css" />">
    <script rel="script" type="text/javascript" src="resources/javascript/script.js"></script>
    <script async>
        function handleLoad(e) {
            console.log('Loaded import: ' + e.target.href);
        }
        function handleError(e) {
            console.log('Error loading import: ' + e.target.href);
        }
    </script>
    <%--<link rel="import" href="/home.jsp" onload="handleLoad(event)" onerror="handleError(event)">--%>
    <%--<link rel="import" href="<core:url value="home.jsp"/>" onload="handleLoad(event)" onerror="handleError(event)">--%>
    <%--<link rel="import" href="<core:url value="import.jsp"/>" onload="handleLoad(event)" onerror="handleError(event)">--%>
    <link rel="import" id="idcost" href="cost.jsp" onload="handleLoad(event)" onerror="handleError(event)">
    <link rel="import" id="idreviews" href="reviews.jsp" onload="handleLoad(event)" onerror="handleError(event)">
    <%--<link rel="import" href="import.jsp" onload="handleLoad(event)" onerror="handleError(event)">--%>
    <%--<link rel="import" href="about_myself.jsp" onload="handleLoad(event)" onerror="handleError(event)">--%>
</head>
<body>

<ul id="menu">
    <li>
        <a onclick="makeRequest()" id="com" title="Здесь ссылка на главную">Главная</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/ShowServlet?action=about_myself"
           title="Здесь информация о cебе">О себе</a>
    </li>
    <li>
        <a href="" title="Здесь галерея Аудио Видео Фото">Галерея</a>
        <ul>
            <li><a href="${pageContext.request.contextPath}/ShowServlet?action=audio">Аудио</a></li>
            <li><a href="${pageContext.request.contextPath}/ShowServlet?action=video">Видео</a></li>
            <li><a href="${pageContext.request.contextPath}/ShowServlet?action=photo">Фото</a></li>
        </ul>
    </li>
    <li>
        <a onclick="cost()" title="Стоимость">Стоимость</a>
    </li>
    <li>
        <a onclick="reviews()" title="Отзывы">Отзывы</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/ShowServlet?action=contacts" title="Контакты">Контакты</a>
    </li>
</ul>


<div id="idclick">START
    <div>End</div>
</div>
<div id="idclick2">START
    <div>End</div>
</div>

<script>
    var time = idreviews.import.querySelector('#idjspreviews');
    document.body.appendChild(time);
</script>

<form onclick="hh()" method="get">
    <input type="text" name="name">
    <input type="submit">
</form>
<script>
    function show() {
        var time = link.import.querySelector('time')
        document.body.appendChild(time);
    };
</script>

<link rel="import" id="link" onload="show()" href="timer.jsp">

</body>

</html>