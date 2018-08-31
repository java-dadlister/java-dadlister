package dao;


import dao.thingamajig.Ads;
import dao.users.Users;
import models.User;

import java.util.List;

public class DaoFactory {
    private static Ads dadsDao;
    private static Users usersDao;

    public static Ads getAdsDao() {
        if (dadsDao == null) {
            dadsDao = new dao.thingamajig.MySQLAdsDao(new Config());
        }
        return dadsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new dao.users.MySQLUsersDao(new Config()) {
                @Override
                public List<User> getUsersByUser(long id) {
                    return null;
                }

                @Override
                public long verifyEmailPass(String email, String password) {
                    return 0;
                }
            };
        }
        return usersDao;
    }
}