package dao;

import com.codeup.adlister.dao.Config;

public class DaoFactory {
    private static Ads dadsDao;
    private static Users usersDao;

    public static Ads getAdsDao() {
        if (dadsDao == null) {
            dadsDao = new MySQLAdsDao();
        }
        return dadsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao();
        }
        return usersDao;
    }
}
