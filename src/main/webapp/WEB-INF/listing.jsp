
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp" />

    <title>Listing Form</title>
</head>
<body>
    <jsp:include page="/partials/navbar.jsp" />
    <br>
    <div class="card" style="width: 30rem;" align="center">
        <div class="card-body" align="center">
            <h5 class="card-title">New Listing</h5>
            <br>
            <div class="container-fluid  d-flex justify-content-center" align="col">
                <form action="/register" method="post">
                    <div class="form-group">
                        <label for="title">Title </label>
                        <input id="title" name="title" class="form-control" type="text">
                    </div>
                    <div class="form-group">
                        <label for="location">Location</label>
                        <input id="location" name="location" class="form-control" type="text">
                    </div>
                    <div class="form-group">
                        <label for="time">Time</label>
                        <input id="time" name="time" class="form-control" type="text">
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control" id="description" type="text" rows="4"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="image">Image Upload</label>
                        <input id="image" name="image" class="form-control" type="text">
                    </div>
                    <input type="submit" class="btn btn-secondary btn-block">
                </form>
            </div>
        </div>
    </div>

</body>
</html>
