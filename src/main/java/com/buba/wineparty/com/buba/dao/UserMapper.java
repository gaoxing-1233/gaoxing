package com.buba.wineparty.com.buba.dao;


import com.buba.wineparty.com.buba.bean.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    User login(@Param("usercode") String usercode, @Param("password") String password);

    List<Items> getPlan(int deptId);
    List<Plan> getPlan1(int deptId);
    Plan getById(int id);
    List<Items> gettu();

    List<Dept> getQuyu1(int id);
    List<Area> getQuyu();
    int addZtree(Area area);
    int additem(Items items);
    int delete1(int id);
    List<Dept> getchakan(int id);
    List<Area> getchakan1(int id);
    int add(Plan plan);

}
