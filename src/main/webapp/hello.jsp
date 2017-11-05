<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Simple jsp page</title></head>
<body>
Hello! ${name}!
<%=request.getParameter("name")%>
Hello <%= request.getAttribute("named")%>${name}
</body>
</html>