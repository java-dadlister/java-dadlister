package com.codeup.adlister.models;

public class User {

    private int id;
    private String first_name;
    private String last_name;
    private String email;
    private String username;
    private String password;
    private String favorite_joke;
    private String bio;
    private String img_url;

    public User() {}

    public User(int id, String first_name, String last_name, String email, String username, String password, String favorite_joke, String bio, String img_url) {
        this.id = id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.username = username;
        this.password = password;
        this.favorite_joke = favorite_joke;
        this.bio = bio;
        this.img_url = img_url;
    }

    public User(int id, String email, String username, String password, String favorite_joke, String bio) {
        this.id = id;
        this.email = email;
        this.username = username;
        this.password = password;
        this.favorite_joke = favorite_joke;
        this.bio = bio;
    }

    public User(String email, String username, String password, String favorite_joke, String bio) {
        this.email = email;
        this.username = username;
        this.password = password;
        this.favorite_joke = favorite_joke;
        this.bio = bio;
    }

    public User(String email, String username, String password) {
        this.email = email;
        this.username = username;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFavorite_joke() {
        return favorite_joke;
    }

    public void setFavorite_joke(String favorite_joke) {
        this.favorite_joke = favorite_joke;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public String getImg_url() {
        return img_url;
    }

    public void setImg_url(String img_url) {
        this.img_url = img_url;
    }
}
