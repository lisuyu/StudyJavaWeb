package itat.zttc.model;

import java.util.ArrayList;
import java.util.List;

public class UserInit {
    public static List<User> initUser(){
        List<User> users = new ArrayList<User>();

        users.add(new User(1,"xiaowang","asdf"));

        return users;
    }
}
