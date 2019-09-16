package com.buba.wineparty.com.buba.controller;


import com.buba.wineparty.com.buba.bean.*;
import com.buba.wineparty.com.buba.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("user")

public class UserController {
    @Resource
    private UserService userService;

    @RequestMapping("tuichu")
    public String tuichu (HttpSession session) {
        session.invalidate();
        System.out.println("推出");
        return "login";
    }

    @RequestMapping("getPlan")
    @ResponseBody
    public List<Items> getPlan(HttpSession session) {
        System.out.println("]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]");

        User user = (User) session.getAttribute("user");
        int deptId=user.getDeptId();
        System.out.println(deptId);
        List<Items> list = userService.getPlan(deptId);
        System.out.println(list+"*****************************************s");

        return list;


    }

    @RequestMapping("getPlan1")
    @ResponseBody
    public List<Plan> getPlan1(HttpSession session) {
        System.out.println("]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]");

        User user = (User) session.getAttribute("user");

        int deptId=user.getDeptId();
        System.out.println(deptId);
        List<Plan> list = userService.getPlan1(deptId);
        System.out.println(list+"*****************************************s");

        return list;


    }

    @ResponseBody
    @RequestMapping("getById1")
    public Plan getById(int id,HttpSession session) {
        System.out.println(152);
        Plan plans = userService.getById(id);
        session.setAttribute("plans",plans);
        System.out.println(plans+"544545454454545454545");
        return plans;

    }

    @ResponseBody
    @RequestMapping("additem")
    public int additem(Items items) {
        System.out.println("3333333333333333333333333333333333333333333");
        int additem = userService.additem(items);

        return additem;

    }

    @ResponseBody
    @RequestMapping("addZtree")
    public int addZtree(Area area) {
        System.out.println("......................................");
        int ztree = userService.addZtree(area);
        System.out.println(area);


        return ztree;

    }
    @ResponseBody
    @RequestMapping("getQuyu1")
    public List<Dept> getQuyu1(int id) {
        System.out.println(12);
        List<Dept> list = userService.getQuyu1(id);
        System.out.println(id);
        System.out.println(list);
        return list;

    }

    @ResponseBody
    @RequestMapping("getchakan")
    public List<Dept> getchakan(int id) {
        System.out.println(12);
        List<Dept> list = userService.getchakan(id);
        System.out.println("deptiddengyu"+id);
        System.out.println(list);
        return list;

    }

    @ResponseBody
    @RequestMapping("getchakan1")
    public List<Area> getchakan1(int id) {
        System.out.println(12);
        List<Area> list = userService.getchakan1(id);
        System.out.println("deptiddengyu"+id);
        System.out.println(list);
        return list;

    }

    @ResponseBody
    @RequestMapping("delete1")
    public int delete1(int id) {
        System.out.println("--------------------------------------------------");
        System.out.println(id);
        int delete1 = userService.delete1(id);

        return delete1;

    }
    @ResponseBody
    @RequestMapping("quyu")
    public List<Area> getQuyu() {
        List<Area> list = userService.getQuyu();
        System.out.println(list);
        return list;

    }

    @RequestMapping("add")
    @ResponseBody
    public int add(Plan plan) {
        int add = userService.add(plan);
        System.out.println("=============================================");
        System.out.println(plan);
        return add;


    }

    @RequestMapping("gettu")
    @ResponseBody
    public List<Items> gettu() {
        List<Items> list = userService.gettu();
        System.out.println(list+"222222222222222222222222222222222222");

        return list;


    }

    @RequestMapping("login")
    @ResponseBody
    public User denglu(String usercode, String password, HttpSession session) {
        User user = userService.login(usercode, password);
        System.out.println(usercode);
        System.out.println(password);

        if(user!=null) {
            session.setAttribute("user", user);
            return user;
        }else {
            return null;
        }
    }



}
