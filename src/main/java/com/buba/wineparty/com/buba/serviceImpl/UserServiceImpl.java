package com.buba.wineparty.com.buba.serviceImpl;


import com.buba.wineparty.com.buba.bean.*;
import com.buba.wineparty.com.buba.dao.UserMapper;
import com.buba.wineparty.com.buba.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;


    @Override
    public User login(String usercode, String password) {
        return userMapper.login(usercode,password);
    }

    @Override
    public List<Items> getPlan(int deptId) {
        return userMapper.getPlan(deptId);
    }

    @Override
    public List<Items> gettu() {
        return userMapper.gettu();
    }

    @Override
    public int add(Plan plan) {
        return userMapper.add(plan);
    }

    @Override
    public List<Plan> getPlan1(int deptId) {
        return userMapper.getPlan1(deptId);
    }

    @Override
    public Plan getById(int id) {
        return userMapper.getById(id);
    }

    @Override
    public int additem(Items items) {
        return userMapper.additem(items);
    }

    @Override
    public int addZtree(Area area) {
        return userMapper.addZtree(area);
    }

    @Override
    public int delete1(int id) {
        return userMapper.delete1(id);
    }

    @Override
    public List<Dept> getchakan(int id) {
        return userMapper.getchakan(id);
    }

    @Override
    public List<Area> getchakan1(int id) {
        return userMapper.getchakan1(id);
    }

    @Override
    public List<Dept> getQuyu1(int id) {
        return userMapper.getQuyu1(id);
    }

    @Override
    public List<Area> getQuyu() {
        return userMapper.getQuyu();
    }
}
