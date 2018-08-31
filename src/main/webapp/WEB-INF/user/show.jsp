<%--
  Created by IntelliJ IDEA.
  User: lrod
  Date: 8/31/18
  Time: 9:58 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" scope="request" value="DadLister: Member Details"/>
<%@ include file="/partials/head.jsp" %>
<body>

<%@ include file="../../partials/navbar.jsp" %>

<main class="container">

    <h1><c:out value="${user.name}"/>Dad Details</h1>

    <div class="card">

        <div class="card-body">
            <div class="row">
                <div class="col">
                    <h3><c:out value="${user.name}"/> details...</h3>
                    <p>Email: <c:out value="${user.email}"/></p>
                    <p>Joined: <c:out value="${user.created_at}"/></p>
                </div>
                <div class="col">
                    <h3><c:out value="${user.name}"/> users...</h3>
                    <ul class="list-group">
                        <c:forEach var="user" items="${users}">
                            <li class="list-group-item">
                                <a href="${pageContext.request.contextPath}/users/show?id=<c:out value="${user.id}"/>"><c:out
                                        value="${user.title}"/></a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>

    </div>
</main>

<%@ include file="/partials/scripts.html" %>

</body>

