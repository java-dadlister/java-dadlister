<%--
  Created by IntelliJ IDEA.
  User: lrod
  Date: 8/31/18
  Time: 10:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="form-group">
    <label for="firstName">First Name</label>
    <input class="form-control" type="text" name="firstName" id="firstName" placeholder="Enter dad title" value="${user.firstName}">
</div>

<div class="form-group">
    <label for="lastName">Last Name</label>
    <input class="form-control" type="text" name="lastName" id="lastName" placeholder="Enter last name" value="${user.lastName}">
</div>

<div class="form-group">
    <label for="email">Email</label>
    <input class="form-control" type="text" name="email" id="email" placeholder="Enter dad title" value="${user.email}">
</div>

<div class="form-group">
    <label for="username">Username</label>
    <input class="form-control" type="text" name="Username" id="username" placeholder="Enter your username" value="${user.username}">
</div>

<div class="form-group">
    <label for="password">Password</label>
    <input class="form-control" id="password" type="password" name="password" placeholder="Enter password">
</div>

<div class="form-group">
    <label for="favoriteJoke">Favorite Joke</label>
    <input class="form-control" type="text" name="favoriteJoke" id="favoriteJoke" placeholder="Enter your favorite joke" value="${user.favoriteJoke}">
</div>

<div class="form-group">
    <label for="bio">Bio</label>
    <input class="form-control" type="text" name="bio" id="bio" placeholder="Enter your biography" value="${user.bio}">
</div>

<div class="form-group">
    <label for="img">Image</label>
    <input class="form-control" type="text" name="img" id="img" placeholder="Image" value="${user.image}">


<input type="hidden" name="id" value="${user.id}">
<button class="btn btn-outline-primary btn-block">Submit</button>


<%--id INT UNSIGNED NOT NULL AUTO_INCREMENT,
first_name VARCHAR(200) NOT NULL,
last_name VARCHAR(200) NOT NULL,
email VARCHAR(200) NOT NULL,
username VARCHAR(200) NOT NULL,
password VARCHAR(200) NOT NULL,
favorite_joke VARCHAR(2500) NOT NULL,
bio VARCHAR(2500) NOT NULL,
img_url VARCHAR(1000) DEFAULT 'http://via.placeholder.com/300x300',
PRIMARY KEY (id)--%>