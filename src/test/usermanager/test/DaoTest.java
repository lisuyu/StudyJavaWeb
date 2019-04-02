package test.usermanager.test;

import test.usermanager.dao.UserDao;
import test.usermanager.model.User;

public class DaoTest {
    public static void main(String[] args) {
        UserDao ud = new UserDao();
        User user = new User("陈平安","321","陈十一");
        User user1 = new User("高文","3215","老粽子");
        //ud.add(user);
        ud.add(user1);
    }
}
