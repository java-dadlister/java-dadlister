package com.codeup.adlister.dao;



public class DaoFactory {
    private static Ads dadsDao;
    private static Users usersDao;
    private static Config config = new Config();

    public static Ads getAdsDao() {
        if (dadsDao == null) {
            dadsDao = new MySQLAdsDao(config);
        }
        return dadsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }
}
