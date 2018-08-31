
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp" />

    <title>Listing Form</title>
</head>
<body>
    <jsp:include page="/partials/navbar.jsp" />
    <div class="container mt-5">
        <div class="row">
            <div class="col d-flex justify-content-center">
                <div class="card" style="width: 100%">
                    <div class="card-body">
                        <h5 class="card-title d-flex justify-content-center">New Listing</h5>
                    </div>
                    <div class="card-body">
                        <form action="/register" method="post">
                            <div class="row">
                                <div class="form-group col-12">
                                    <label for="title">Title </label>
                                    <input id="title" name="title" class="form-control" type="text">
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-6">
                                    <label for="location">Location</label>
                                    <input id="location" name="location" class="form-control" type="text">
                                </div>
                                <div class="form-group col-6">
                                    <label for="time">Time</label>
                                    <input id="time" name="time" class="form-control" type="text">
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-12">
                                    <label for="description">Description</label>
                                    <textarea class="form-control" id="description" type="text" rows="4"></textarea>
                                </div>
                                <div class="form-group col-12">
                                    <label for="image">Image Upload</label>
                                    <input id="image" name="image" class="form-control" type="text">
                                </div>
                            </div>
                            <input type="submit" class="btn btn-secondary btn-block">
                    </div>
                </div>
            </div>
        </div>
    </div>









                </form>
            </div>
        </div>
    </div>

</body>
</html>
