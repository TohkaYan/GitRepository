package crudTest;

import org.junit.Test;


import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;



public class JDBCUtilsTest {

    @Test
    public void getConnection5() throws Exception{
        //1.读取配置文件中的四个基本信息
        InputStream is = JDBCUtilsTest.class.getClassLoader().getResourceAsStream("druid.properties");

        Properties pros = new Properties();
        pros.load(is);

        String username = pros.getProperty("username");
        String password = pros.getProperty("password");
        String url = pros.getProperty("url");
        String driverClass = pros.getProperty("driverClassName");

        //2.加载驱动
        Class.forName(driverClass);

        //3.获取连接
        Connection conn = DriverManager.getConnection(url,username,password);
        System.out.println(conn);

    }
    }

