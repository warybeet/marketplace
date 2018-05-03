///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package Daos;
//
//import Dtos.User;
//import java.util.List;
//import org.junit.After;
//import org.junit.AfterClass;
//import org.junit.Before;
//import org.junit.BeforeClass;
//import org.junit.Test;
//import static org.junit.Assert.*;
//
///**
// *
// * @author Danielhua
// */
//public class UserDaoTest {
//    
//    public UserDaoTest() {
//    }
//    
//    @BeforeClass
//    public static void setUpClass() {
//    }
//    
//    @AfterClass
//    public static void tearDownClass() {
//    }
//    
//    @Before
//    public void setUp() {
//    }
//    
//    @After
//    public void tearDown() {
//    }
//
//    /**
//     * Test of md5 method, of class UserDao.
//     */
//  
//
//    /**
//     * Test of register method, of class UserDao.
//     */
//    @org.junit.Test
//    public void testRegister() {
//        System.out.println("register");
//        String userName = "Daniel";
//        String password = "Password";
//        String firstName = "Daniel";
//        String lastName = "Hua";
//        String gender = "m";
//        String phone = "08732322";
//        String email = "lz@qq.com";
//        String address = "asdwas";
//        UserDao instance = new UserDao("marketplace");
//        int expResult = 1;
//        int result = instance.register(userName, password, firstName, lastName, gender, phone, email, address);
//        assertEquals(expResult, result);
//      
//    }
//
//    /**
//     * Test of checkLogin method, of class UserDao.
//     */
// @org.junit.Test
//    public void testCheckLogin() {
//        System.out.println("checkLogin");
//        String uname = "HEHE";
//        String pword = "HEHE";
//        UserDao instance = new UserDao("marketplace");
//        User expResult = new User(5,"HEHE","HEHE","HEHE","HEHE","HEHE","HEHE","hehe","HEHE","2018-03-13",true,false);
//        User result = instance.checkLogin(uname, pword);
//        assertEquals(expResult, result);
//   
//    }
//
//   
//}
