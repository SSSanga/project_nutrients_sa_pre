package com.project.project_nutrients.controller;

import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.project.project_nutrients.service.MembersService;

import java.util.UUID;

@Controller
@RequestMapping("/members")

public class MembersController {
    @Autowired
    MembersService membersService;

    // @PostMapping("/insertAndSelectSearch")
    // public ModelAndView insertAndSelectSearch(@RequestParam Map params,
    // ModelAndView modelAndView) {
    // Object result = membersService.insertAndSelectSearch(params);
    // modelAndView.addObject("params", params);
    // modelAndView.addObject("result", result);
    // modelAndView.setViewName("/WEB-INF/views/example.jsp");
    // return modelAndView;
    // }

    // main 화면에서 회원가입 버튼 누를 때 거쳐가는 controller임/ signup.jsp로 가기 위한 경로
    @GetMapping("/signupForm")
    public ModelAndView signupForm(@RequestParam Map params, ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/project/members/signup.jsp");
        return modelAndView;
    }

    // 회원가입 폼을 작성해서 제출 버튼을 누르면 비밀번호를 암호화로 넘기는 컨트롤러
    // @GetMapping("/signupProc")
    // public ModelAndView signupProc(@RequestParam Map params, ModelAndView
    // modelAndView){
    // Object result = membersService.insertWithAuths(params);
    // String viewName = ("/WEB-INF/views/mainpage.jsp");
    // modelAndView.setViewName(viewName);
    // return modelAndView;
    // }

    @RequestMapping(value = "/signupProc", method = RequestMethod.POST)
    public ModelAndView signupProc(@RequestParam Map params, ModelAndView modelAndView) {
        Object result = membersService.insertWithAuths(params);
        String viewName = "/WEB-INF/views/mainpage.jsp";
        modelAndView.setViewName(viewName);
        return modelAndView;
    }

    // main 화면에서 마이페이지 버튼 누를 때 거쳐가는 controller임/ mypage.jsp로 가기 위한 경로
    @RequestMapping("/mypageForm")
    public ModelAndView mypageForm(@RequestParam Map params, ModelAndView modelAndView) {
        Object result = membersService.mypageDetail(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        modelAndView.setViewName("/WEB-INF/views/project/members/mypage.jsp");
        return modelAndView;
    }

    @PostMapping("/memberUpdateForm")
    public ModelAndView updateForm(@RequestParam Map params, ModelAndView modelAndView) {
        Object result = membersService.mypageDetail(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        modelAndView.setViewName("/WEB-INF/views/project/members/memberupdate.jsp");
        return modelAndView;
    }

    @PostMapping("/memberUpdateAndMypage/{UNIQUE_ID}")
    public ModelAndView memberUpdateAndMypage(@PathVariable String UNIQUE_ID, @RequestParam Map params,
            ModelAndView modelAndView) {
        Object result = membersService.memberUpdateAndMypage(UNIQUE_ID, params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        modelAndView.setViewName("/WEB-INF/views/project/members/mypage.jsp");
        return modelAndView;
    }

    // main 화면에서 로그인 버튼 누를 때 거쳐가는 controller임/ login.jsp로 가기 위한 경로
    @GetMapping("/loginForm")
    public ModelAndView loginForm(@RequestParam Map params, ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/project/members/login.jsp");
        return modelAndView;
    }

    // administrator->memberslist.jsp
    @GetMapping("/memberslistForm")
    public ModelAndView memberslistForm(@RequestParam Map params, ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/project/members/memberslist.jsp");
        return modelAndView;

    }
    // memberslist.jsp 삭제 delete 추가하기
    // 왠지 회원탈퇴? 악플삭제? admin이 관리
    // @PostMapping("/deleteAndSelectSearch/{UNIQUE_ID}")
    // public ModelAndView deleteAndSelectSearch(@PathVariable String UNIQUE_ID
    // , @RequestParam Map params, ModelAndView modelAndView) {
    // Object result = mainService.deleteAndSelectSearch(UNIQUE_ID, params);
    // modelAndView.addObject("params", params);
    // modelAndView.addObject("result", result);

    // modelAndView.setViewName("/WEB-INF/views/example.jsp");
    // return modelAndView;
    // }

    // administrator->membersinfo.jsp
    @GetMapping("/membersinfoForm")
    public ModelAndView membersinfoForm(@RequestParam Map params, ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/project/members/membersinfo.jsp");
        return modelAndView;

    }

    // 관리자가 관리할 수 있는 회원 리스트
    @GetMapping("/memberList")
    public ModelAndView memberList(@RequestParam Map params, ModelAndView modelAndView) {
        Object result = membersService.membslistWithPaginations(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);

        modelAndView.setViewName("/WEB-INF/views/project/members/memberlist.jsp");
        return modelAndView;
    }

    // 회원 정보 삭제(리뷰, 문의를 등록하면 삭제가 안됨)
    @PostMapping("/deleteAndmemberList/{UNIQUE_ID}")
    public ModelAndView deleteAndmemberList(@PathVariable String UNIQUE_ID, @RequestParam Map params,
            ModelAndView modelAndView) {
        Object result = membersService.deleteAndmemberList(UNIQUE_ID, params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);

        modelAndView.setViewName("/WEB-INF/views/project/members/memberlist.jsp");
        return modelAndView;
    }

    // 회원 권한 삭제
    @PostMapping("/deleteAndmemberauths/{UNIQUE_ID}")
    public ModelAndView deleteAndmemberauths(@PathVariable String UNIQUE_ID, @RequestParam Map params,
            ModelAndView modelAndView) {
        Object result = membersService.deleteAndmemberauths(UNIQUE_ID, params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);

        modelAndView.setViewName("/WEB-INF/views/project/members/memberlist.jsp");
        return modelAndView;
    }

}
