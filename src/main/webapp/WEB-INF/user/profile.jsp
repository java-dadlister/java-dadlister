<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <p>
            ${sessionScope.user.id}
            ${sessionScope.user.first_name}
            ${sessionScope.user.}
            ${sessionScope.user.
            ${sessionScope.user.
            ${sessionScope.user.

        </p>
        <%--private int id;--%>
        <%--private String first_name;--%>
        <%--private String last_name;--%>
        <%--private String email;--%>
        <%--private String username;--%>
        <%--private String password;--%>
        <%--private String favorite_joke;--%>
        <%--private String bio;--%>
        <%--private String img_url;--%>
    </div>

</body>
</html>
