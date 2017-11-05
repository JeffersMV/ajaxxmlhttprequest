<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MALVIK
  Date: 01.11.17
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript">

    /*
     * creates a new XMLHttpRequest object which is the backbone of AJAX,
     * or returns false if the browser doesn't support it
     */
    function getXMLHttpRequest() {
        var xmlHttpReq = false;
        // to create XMLHttpRequest object in non-Microsoft browsers
        if (window.XMLHttpRequest) {
            xmlHttpReq = new XMLHttpRequest();
        } else if (window.ActiveXObject) {
            try {
                // to create XMLHttpRequest object in later versions
                // of Internet Explorer
                xmlHttpReq = new ActiveXObject("Msxml2.XMLHTTP");
            } catch (exp1) {
                try {
                    // to create XMLHttpRequest object in older versions
                    // of Internet Explorer
                    xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
                } catch (exp2) {
                    xmlHttpReq = false;
                }
            }
        }
        return xmlHttpReq;
    }
    /*
     * AJAX call starts with this function
     */
    function makeRequest() {
        var xmlHttpRequest = getXMLHttpRequest();
        xmlHttpRequest.onreadystatechange = getReadyStateHandler(xmlHttpRequest);
        xmlHttpRequest.open("POST", "/addcomment", true);
        xmlHttpRequest.setRequestHeader("Content-Type",
            "application/x-www-form-urlencoded");
        xmlHttpRequest.send(null);
    }

    /*
     * Returns a function that waits for the state change in XMLHttpRequest
     */
    function getReadyStateHandler(xmlHttpRequest) {

        // an anonymous function returned
        // it listens to the XMLHttpRequest instance
        return function () {
            if (xmlHttpRequest.readyState === 4) {
                if (xmlHttpRequest.status === 200) {
                    document.getElementById("com").innerHTML = xmlHttpRequest.responseText;
                } else {
                    alert("HTTP error " + xmlHttpRequest.status + ": " + xmlHttpRequest.statusText);
                }
            }
        };
    }
</script>
<body>
<p>Comments:</p>
<div id="com">
    <a items="${s}" >
    </a>
</div>
<p>
    <form:form method="POST" action="/h4" modelAttribute="newcomment">
<table>
    <tr>
        <input type="hidden" name="id" value="7"/>
        <td><label for="comment">New comment: </label><form:input path="comment" id="comment"/></td>
    </tr>
    <tr>
        <td><input type="submit" value="Add comment" onclick="makeRequest()"/></td>
    </tr>
</table>
</form:form>
</body>
</html>
