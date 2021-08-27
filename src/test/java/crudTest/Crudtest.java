package crudTest;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import domain.User;
import org.junit.Test;

public class Crudtest {

    UserDao userDao = new UserDaoImpl();

    @Test
    public void testaddUser(){
        userDao.add(new User(21,"李四"));
    }

    @Test
    public void testdeleteUser(){
        userDao.delete(3);
    }

    @Test
    public void testfindUserById(){
        System.out.println(userDao.findAll());
        System.out.println(userDao.findById(1));
    }

    @Test
    public void testupdateUser(){
        userDao.update(new User(2,"Alice"));
    }

    @Test
    public void findUserByUsernameAndPassword(){
        System.out.println(userDao.findUserByUsernameAndPassword("zs", "123456"));
    }
}
