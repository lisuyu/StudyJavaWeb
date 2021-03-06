package test.usermanager.dao;


import test.usermanager.model.User;

import java.util.List;

public interface IUserDao {
    public void add(User user);
    public void delete(int id);
    public void update(User user);
    public User load(int id);
    public List<User> list();
    public User Login(String username,String password);
}
