<%--
  Created by IntelliJ IDEA.
  User: lb
  Date: 2017/8/3
  Time: 12:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Products</title>
</head>
<body>
    <%
        String paramA = request.getParameter("itemid");
        out.println(paramA);
    %>

</body>
</html>
