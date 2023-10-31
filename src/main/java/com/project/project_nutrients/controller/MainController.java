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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import java.util.UUID;

import com.project.project_nutrients.service.MainService;

@Controller
@RequestMapping("")

public class MainController {
    @Autowired
    MainService mainService;

    @RequestMapping("/")
    public ModelAndView main(ModelAndView modelAndView){
        modelAndView.setViewName("/WEB-INF/views/mainpage.jsp");
        return modelAndView;
    }


    // 검색
    @GetMapping("/selectSearch")
    public ModelAndView selectSearch(@RequestParam Map params
                            , ModelAndView modelAndView) {
        Object result = mainService.selectSearch(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        
        modelAndView.setViewName("/WEB-INF/views/example.jsp");
        return modelAndView;
    }

    // /selectDetail 회원정보 상세 보기?
    @GetMapping("/selectDetail/{COMMON_CODE_ID}")
    public ModelAndView selectDetail(@PathVariable String COMMON_CODE_ID
                        , @RequestParam Map params, ModelAndView modelAndView) {
        Object result = mainService.selectDetail(COMMON_CODE_ID, params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        modelAndView.setViewName("/WEB-INF/views/detail.jsp");
        return modelAndView;
    }

    // 왠지 회원탈퇴? 악플삭제? admin이 관리
    @PostMapping("/deleteAndSelectSearch/{UNIQUE_ID}")
    public ModelAndView deleteAndSelectSearch(@PathVariable String UNIQUE_ID
                        , @RequestParam Map params, ModelAndView modelAndView) {
        Object result = mainService.deleteAndSelectSearch(UNIQUE_ID, params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);

        modelAndView.setViewName("/WEB-INF/views/example.jsp");
        return modelAndView;
    }

    // 왠지 회원가입, 리뷰, Q&A 등록? 같음
    @PostMapping("/insertAndSelectSearch")
    public ModelAndView insertAndSelectSearch(@RequestParam Map params, ModelAndView modelAndView) {
        Object result = mainService.insertAndSelectSearch(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);

        modelAndView.setViewName("/WEB-INF/views/example.jsp");
        return modelAndView;
}

    // 회원정보 수정 회원 = 전화번호, 주소, 이름 등/ admin = 회원 등급?
    @PostMapping("/updateAndSelectSearch/{UNIQUE_ID}")
    public ModelAndView updateAndSelectSearch(@PathVariable String UNIQUE_ID
                        , @RequestParam Map params, ModelAndView modelAndView) {
        Object result = mainService.updateAndSelectSearch(UNIQUE_ID, params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);

        modelAndView.setViewName("/WEB-INF/views/example.jsp");
        return modelAndView;
    }

    // main 화면에서 insert 버튼 누를 때 거쳐가는 controller임/ insert.jsp로 가기 위한 경로
    @GetMapping("/insertForm")
    public ModelAndView insertForm(@RequestParam Map params, ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/insert.jsp");
        return  modelAndView;
    }

    //  main 화면에서 update 버튼 누를 때 거쳐가는 controller임/update.jsp로 가기 위한 경로
    @GetMapping("/updateForm/{UNIQUE_ID}")
    public ModelAndView updateForm(@PathVariable String UNIQUE_ID, @RequestParam Map params, ModelAndView modelAndView) {
         modelAndView.setViewName("/WEB-INF/views/update.jsp");
        return  modelAndView;
    }

    // 2PC create 사용 안해요. 나중에 사용하라고 하면 업데이트 해볼께요.
    // @PostMapping("/insertDouble")
    // public ResponseEntity insertDouble(@RequestBody Map paramMap) {
    //     Object result = null;
    //     try {
    //         result = mainService.insertDouble(paramMap);
    //     } catch (Exception e) {
    //         return ResponseEntity.badRequest().body(result);
    //     }
    //     return ResponseEntity.ok().body(result);
    // }
    public String generateUUID() {
        return UUID.randomUUID().toString();
    }


}
