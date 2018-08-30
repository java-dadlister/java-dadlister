package dao;


import dao.thingamajig.Ads;
import dao.users.Users;

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
            usersDao = new dao.users.MySQLUsersDao(new Config());
        }
        return usersDao;
    }
}