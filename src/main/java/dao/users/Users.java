package dao.users;

import models.User;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);
}
