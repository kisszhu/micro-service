package com.zhl.facade;

/**
 * @program micro-service
 * @description:
 * @author: meilong
 * @create: 2019/09/24 14:29
 */
public class Client {

    public static void main(String[] args) {
        Facade facade = new Facade();
        facade.doSomething();
    }
}
