<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp" />
        <%--<jsp:param name="title" value="Please Log In" />--%>
    <%--</jsp:include>--%>
    <title>Dadlister</title>
</head>
<body>
    <br>
    <div align="center">
        <div class="card" style="width: 45rem" align="center">
            <div class="card-body">

                <div class="container">
                    <div class="row d-flex justify-content-center">
                        <div class = "container">
                            <h1 align="center">Dadlister</h1>
                            <h3 align="center">The online man cave for Rad Dads just like you</h3>
                            </div>
                            </div>
                            <br>
                            <div class="row d-flex justify-content-center">
                            <div class="col-5">
                            <form action="/login" method="POST">
                                <div class="form-group">
                                    <label for="username">Username</label>
                                    <input id="username" name="username" class="form-control" type="text">
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input id="password" name="password" class="form-control" type="password">
                                </div>
                                <input type="submit" class="btn btn-info btn-block" value="Log In">
                            </form>
                            </div>
                            </div>
                            <br>
                            <div align="right">
                            <a href="/register">New? Create a Dadlister</a>
                        </div>
                    </form>
                </div>

            </div>
        </div>

    </div>






    <jsp:include page="/partials/scripts.html" />
</body>
</html>
