package com.RegisterAndLogin;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class CreateSqlSession {
    public CreateSqlSession() {
    }
    public SqlSession createSqlSession() throws IOException {
        //1.mybatis核心配置文件
        String resource="mybatis-config.xml";
        InputStream inputStream= Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
        //2.获取工厂构建的对象
        SqlSession sqlSession=sqlSessionFactory.openSession();
        return sqlSession;
    }
}
