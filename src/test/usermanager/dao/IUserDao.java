package test.usermanager.dao;


import test.usermanager.model.User;

public interface IUserDao {
    public void add(User user);
    public void delete(String username);
    public void update(User user);
}
