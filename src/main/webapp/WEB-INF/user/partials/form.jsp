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
    <label for="first_name">First Name</label>
    <input class="form-control" type="text" name="first_name" id="first_name" placeholder="Enter first name" value="${user.first_name}">
</div>

<div class="form-group">
    <label for="last_name">Last Name</label>
    <input class="form-control" type="text" name="last_name" id="last_name" placeholder="Enter last name" value="${user.last_name}">
</div>

<div class="form-group">
    <label for="email">Email</label>
    <input class="form-control" type="text" name="email" id="email" placeholder="Enter email" value="${user.email}">
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
    <label for="favorite_joke">Favorite Joke</label>
    <input class="form-control" type="text" name="favorite_joke" id="favorite_joke" placeholder="Enter your favorite joke" value="${user.favorite_joke}">
</div>

<div class="form-group">
    <label for="bio">Bio</label>
    <input class="form-control" type="text" name="bio" id="bio" placeholder="Enter your biography" value="${user.bio}">
</div>

<div class="form-group">
    <label for="img_url">Image</label>
    <input class="form-control" type="text" name="img_url" id="img_url" placeholder="Image" value="${user.image_url}">


<input type="hidden" name="id" value="${user.id}">
<button class="btn btn-outline-primary btn-block">Submit</button>


<%--private int id;
    private String first_name;
    private String last_name;
    private String email;
    private String username;
    private String password;
    private String favorite_joke;
    private String bio;
    private String img_url;--%>