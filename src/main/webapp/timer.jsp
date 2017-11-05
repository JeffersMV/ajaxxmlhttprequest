<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<time id="timer">0</time>

<script>
    var localDocument = document.currentScript.ownerDocument;
    var timer = localDocument.getElementById('timer');

    var timerId = setInterval(function() {
        timer.innerHTML++;
    }, 1000);
</script>
</body>
</html>
