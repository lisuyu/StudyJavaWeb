package test.usermanager.test;

import test.usermanager.dao.UserDao;
import test.usermanager.model.User;

public class DaoTest {
    public static void main(String[] args) {
        UserDao ud = new UserDao();
//        User user = ud.load(11);
//        user.setNickname("傻狍子");
//        ud.update(user);
        User user = new User();
        user.setUsername("高文");
        user.setPassword("321654");
        user.setNickname("老粽子");
        ud.add(user);
    }
}
