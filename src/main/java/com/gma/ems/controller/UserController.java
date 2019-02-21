package com.gma.ems.controller;

import com.gma.ems.entity.User;
import com.gma.ems.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/getAll")
    public String getAll(ModelMap modelMap){
        List<User> list = userService.selectUser();
        modelMap.addAttribute("list",list);
        return "forward:/userList.jsp";
    }

    @RequestMapping("/add")
    public String add(User user, String number, HttpSession session){
        String code = (String) session.getAttribute("code");
        if(number.equals(code)){
            userService.insertUser(user);
            return "redirect:/user/getAll";
        }
       return "forward:/regist.jsp";
    }

    @RequestMapping("/modify")
    public String modify(User user){
        userService.updateUserById(user);
        return "redirect:/user/getAll";
    }

    @RequestMapping("/login")
    public String login(String username,String pwd){
        User user = new User();
        user.setUsername(username);
        User uu = userService.selectUserByObj(user);
        if(uu!=null&&uu.getPassword().equals(pwd)){
            return "redirect:/user/getAll";
        }
        return "forward:/login.jsp";
    }

    @RequestMapping("delete")
    public String delete(Integer id){
        userService.deleteUserById(id);
        return "redirect:/user/getAll";
    }

    @RequestMapping("selectById")
    public String  selectById(Integer id,ModelMap mm){
        User user = userService.selectUserById(id);
        mm.addAttribute("user",user);
        return "forward:/updateUser.jsp";
    }



}
