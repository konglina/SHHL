package com.guet.test;
import org.junit.Before;
import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.api.ShellCallback;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.guet.entity.Manager;
import com.guet.mapper.ManagerMapper;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
public class Test {
//	private void mian() {
//		// TODO Auto-generated method stub
//		System.out.println(1234567);
//
//	}
//	public static void main(String[] args) throws Exception {
//        // warnings 为用于放置生成过程中警告信息的集合对象
//        List<String> warnings = new ArrayList<String>();
//        // 指定是否覆盖重名文件
//        boolean overwrite = true;
//        // 加载配置文件
//        File configFile = new File(MyBatisGenerator.class.getClassLoader().getResource("generatorConfig.xml").toURI());
//        // 配置解析类
//        ConfigurationParser cp = new ConfigurationParser(warnings);
//        // 配置解析类解析配置文件并生成 Configuration 配置对象
//        Configuration config = cp.parseConfiguration(configFile);
//        // ShellCallback 负责如何处理重复文件
//        ShellCallback callback = new DefaultShellCallback(overwrite);
//        // 逆向工程对象
//        MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config, callback, warnings);
//        // 执行逆向文件生成操作
//        myBatisGenerator.generate(null);
//        System.out.println(warnings);
//        // 打印提示信息
//        System.out.println("MyBatis 逆向工程执行成功，刷新项目查看文件！");
//    }
//	@Autowired
//	ManagerMapper managermapper;
	
	 private ApplicationContext applicationContext;
    // 在执行测试方法之前首先获取 Spring 配置文件对象
    // 注解@Before在执行本类所有测试方法之前先调用这个方法
    @Before
    public void setup() throws Exception {
        applicationContext = new
                ClassPathXmlApplicationContext("classpath:applicationContext.xml");
    }
	@org.junit.Test
	public void test(){
		// 通过注解的方式初始化 Spring IoC 容器
		ManagerMapper managermapper = (ManagerMapper)applicationContext.getBean("managerMapper");
     	Manager manager=new Manager();
		manager.setId(2);
		manager.setUsername("micah");
		manager.setPassword("qwer");
		System.out.println(managermapper);
		managermapper.insert(manager);
	}
	
	
	
}
