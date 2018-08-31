<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/partials/navbar.jsp" />

    <div class="container-fluid">
                <h1>Welcome, ${sessionScope.user.username}!</h1>
        <div class="row">
            <div class="col-md-4 mb-3">
                <img src="${sessionScope.user.img_url}" alt="Profile Photo" width="100%">
            </div>
            <div class="col-md-8">
                <h3>Name:</h3>
                <h4 class="pl-3">${sessionScope.user.first_name} ${sessionScope.user.last_name}</h4>
                <h3>Email:</h3>
                <h4 class="pl-3">${sessionScope.user.email}</h4>
                <h3>Best Dad Joke:</h3>
                <h4 class="pl-3">${sessionScope.user.favorite_joke}</h4>
                <h3>About me:</h3>
                <h4 class="pl-3">${sessionScope.user.bio}</h4>
            </div>
        </div>
    </div>

</body>
</html>
