package test.usermanager.test;

import test.usermanager.dao.UserDao;
import test.usermanager.model.User;

public class DaoTest {
    public static void main(String[] args) {
        UserDao ud = new UserDao();
        User user = new User("陈平安","321","陈十一");
        ud.add(user);
    }
}
