package com.zhl.facade;

/**
 * @program micro-service
 * @description:
 * @author: meilong
 * @create: 2019/09/24 14:29
 */
public class Facade {

    public void doSomething() {
        A1 a = new A1();
        a.doSomething1();

        A2 a2 = new A2();
        a2.doSomething2();

        A3 a3 = new A3();
        a3.doSomething3();
    }
}
