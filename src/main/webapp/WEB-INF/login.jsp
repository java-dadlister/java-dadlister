<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <%--<jsp:include page="/WEB-INF/partials/navbar.jsp" />--%>
    <h1 align="center">Welcome to Dadlister</h1>

    <div class="container">
        <form action="/login" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block" value="Log In">
                <br>
            <div align="right">
            <li><a href="/register">New Dadlister</a></li>

            <div align="center">
                <h3>The online man cave for Rad Dads like you!</h3>
            </div>

            </div>
        </form>
    </div>
</body>
</html>
