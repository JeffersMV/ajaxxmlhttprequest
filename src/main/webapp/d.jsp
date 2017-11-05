<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript">

    function getXmlHttpRequestObject() {
        var xmlHttp = false;
        if (window.XMLHttpRequest) {
            return new XMLHttpRequest(); //To support the browsers IE7+, Firefox, Chrome, Opera, Safari
        }
        else if (window.ActiveXObject) {
            return new ActiveXObject("Microsoft.XMLHTTP"); // For the browsers IE6, IE5
        }
        else {
            alert("Error due to old verion of browser upgrade your browser");
        }
    }



    function servletPost() {
        var xmlhttp = new getXmlHttpRequestObject(); //xmlhttp holds the ajax object
        if (xmlhttp) {
            var txtname = document.getElementById("txtname");
            xmlhttp.open("POST", "/hello3", true);
            xmlhttp.onreadystatechange = handleServletPost;
            xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xmlhttp.send("txtname=" + txtname.value);
        }
    }

    function handleServletPost() {
        if (xmlhttp.readyState == 4) {
            if (xmlhttp.status == 200) {
                document.getElementById("message").innerHTML = xmlhttp.responseText();
            }
            else {
                alert("Ajax calling error");
            }
        }
    }
</script>
<body>
<form>
    <table>
        <tr>
            <td>Enter Name</td>
            <td><input type="text" id="txtname"/></td>
        </tr>
        <tr>
            <td><input type="button" value="Submit" onclick="servletPost();"/></td>
        </tr>
    </table>
    <div id="message"></div>
</form>


</body>
</html>
