package test.usermanager.dao;

public class DAOFactory {
    public static IUserDao getUserDao(){
        return new UserDao();
    }
}
