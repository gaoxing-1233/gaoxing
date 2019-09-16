package com.buba.wineparty.com.buba.service;


import com.buba.wineparty.com.buba.bean.*;

import java.util.List;

public interface UserService {
    User login(String usercode, String password);
    List<Items> getPlan(int deptId);
    List<Items> gettu();
    int add(Plan plan);
    List<Plan> getPlan1(int deptId);
    Plan getById(int id);
    int additem(Items items);
    int addZtree(Area area);
    int delete1(int id);
    List<Dept> getchakan(int id);
    List<Area> getchakan1(int id);
    List<Dept> getQuyu1(int id);
    List<Area> getQuyu();
}
